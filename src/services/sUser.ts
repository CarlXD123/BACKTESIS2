import { QueryTypes } from 'sequelize';
import db from '../config/config.database';
import { saveFile } from '../global/fileSystem';
import Client from '../models/Client';
import Employee from '../models/Employee';
import User from '../models/User';

class sUser {
  constructor() {
  }

  public static getUserAll() {
    return User.findAll();
  }
  public static async getDataUser(_id: any) {
    const cliente = await Client.findOne({ where: { UserId: _id } })
    //console.log(cliente)
    if (cliente == null) {
      const a = (await db.query<any>(`SELECT * FROM public."Employees" where "UserId"= ${_id};`, { type: QueryTypes.SELECT }))[0];
      //console.log(a)
      return {
        a
      };
    } else {
      const b = await Client.findOne({ where: { UserId: _id } })
      return {
        b
      };
    }
  }


  public static getUserById(user_id: any) {
    return User.findOne({
      where: { id: user_id },
      /*
      include: [
      {
        model: models.Client,
        required: false,
      },
      {
        model: models.Employee,
        required: false,
      },
    ],
      */
    })
  }

  public static async getMenuForUser(user_id: any, typeApp = "I") {
    let roles = await this.getRolesByUser(user_id);
    //console.log(roles);

    if (!roles || !roles.length)
      console.error("E012")

    let general = []
    for (let rol of roles) {
      //console.log(rol);
      const funcions = await db.query(`SELECT  distinct *
       FROM public."Functions" f
       inner join "RoleFunctions" rf on rf."FunctionId"= f.id
       where rf."RoleId" = ${(rol as any).RoleId} and f."typeApplication" = '${typeApp}'`, { type: QueryTypes.SELECT })
      if (funcions.length > 0) {
        //console.log("funcion");
        //console.log(funcions);
        const papa = await db.query(`	SELECT  distinct *
       FROM public."Functions" f
       where f."id" = ${(funcions[0] as any).parent_id} and f."typeApplication" = '${typeApp}' `, { type: QueryTypes.SELECT })
        //console.log("papa", papa);


        let data: any = {}
        data.id = (papa[0] as any).id
        data.title = (papa[0] as any).title
        data.type = (papa[0] as any).type
        data.icon = (papa[0] as any).icon
        data.children = []

        for (let func of funcions) {
          data.children.push({
            id: (func as any).id,
            title: (func as any).title,
            type: (func as any).type,
            url: (func as any).url,
            icon: (func as any).icon,
            roles: [{
              id: (rol as any).id,
              name: (rol as any).name,
              actions: {
                "canView": (func as any).canView,
                "canCreate": (func as any).canCreate,
                "canEdit": (func as any).canEdit,
                "canDelete": (func as any).canDelete
              }
            }]
          })

        }

        general.push(data)
      }

    }
    return general;
  }

  public static async takeOffRole(role_id, user_id) {
    const user = await User.findByPk(user_id);
    if (!user) {
      //console.log("E002");
    } else {
      db.query(`DELETE FROM public."UserRole"
      where "UserId" = ${user_id} and "RoleId" = ${role_id}`, { type: QueryTypes.DELETE })
    }
  }

  public static async getRolesByUser(user_id: any) {
    let user = await User.findByPk(user_id);
    if (user != null) {
      return db.query(`SELECT  distinct *
      FROM public."UserRole" ur
      inner join "Roles" r on ur."RoleId" = r.id
      where "UserId" = ${user_id}`, { type: QueryTypes.SELECT })
    }
    return [];


  }

  public static async validToken(hash, userId) {
    const token = (await db.query<any>(`SELECT t.id as tokenid, u.*
    FROM public."Tokens" t 
    inner join "Users" u on u.id = t."UserId"
    where hash = '${hash}' and t.status='A'`, { type: QueryTypes.SELECT }))[0]

    if (!token)
      //console.log("E010");
      // Token has been used
      await db.query(`UPDATE public."Tokens" SET status = 'I' where id=${token.tokenid}`)

    if (token.id != userId) {
      //console.log("E008");
    } else return token;
  }

  public static async getUserByCredentials(username, password) {
    const user = await User.findOne({
      where: { username: username.toLowerCase(), password },
    });
    return user;
  }
  public static async createUserEmployee(data: any, digitalSignatureFile: any): Promise<any> {
    try {
      // Verifica si el usuario ya existe
      console.log("Buscando usuario con username:", data.username);
      let existingUser = await User.findOne({ where: { username: data.username, status: 'E' } });

      if (existingUser) {
        console.log("Usuario encontrado:", existingUser);
        // Verifica si el usuario existe y su estado es 'E' (Esperando)
        if ((existingUser as any).status === 'E') {
          // Si el usuario existe y su estado es 'E', actualiza su estado a 'A' (Activo)
          console.log("Estado del usuario es 'E', actualizando a 'A'");
          await existingUser.update({ status: 'A' });
          console.log("Estado del usuario actualizado:", existingUser);

          // Verifica si existe un registro de empleado asociado al usuario
          let existingEmployee = await Employee.findOne({ where: { UserId: (existingUser as any).id, status: 'E' } });

          if (existingEmployee) {
            console.log("Registro de empleado encontrado para el usuario:", existingEmployee);
            // Si existe un registro de empleado, actualiza su estado a 'A' (Activo)
            await existingEmployee.update({ status: 'A' });
            console.log("Estado del empleado relacionado actualizado");
          } else {
            console.log("No se encontró un registro de empleado para el usuario, creando uno nuevo");

          }
        } else {
          // Si el usuario existe pero su estado no es 'E', no se realiza ninguna acción
          console.log("Estado del usuario no es 'E', no se realiza ninguna acción");
          return null; // Indicamos que no se realizó ninguna operación
        }
      } else {
        // Si el usuario no existe, crea uno nuevo
        console.log("Usuario no encontrado, creando uno nuevo");

        // Crea el usuario con los datos proporcionados
        const newUser = await User.create({
          username: data.username,
          password: data.name.charAt(0).toUpperCase() + data.dni,
          urlAvatar: 'http://localhost/public/imgs/avatar/avatardefault.png',
          status: 'A'
        });
        console.log("Usuario creado:", newUser);

        const user = newUser.get();
        // Asigna el ID del usuario a los datos
        data.UserId = (newUser as any).id;
        data.CategoryId = 1;

        if (data.roles) {
          await db.query(`INSERT INTO public."UserRole"
  ("createdAt", "updatedAt", "RoleId","UserId")
    VALUES (NOW(),NOW(),${data.roles},${user.id});`, { type: QueryTypes.INSERT });
        }

        // Si se proporciona un archivo de firma digital, guárdalo y actualiza la URL en los datos
        if (digitalSignatureFile) {
          const digitalSignatureUrl = saveFile(digitalSignatureFile, 'digitalSignature');
          data.digitalSignatureUrl = digitalSignatureUrl;
        }

        // Crea el registro del empleado con los datos proporcionados
        const newEmployee = await Employee.create(data);
        console.log("Registro de empleado creado:", newEmployee);

        // Retorna los datos del usuario creado
        return newUser.get();
      }
    } finally {
      return; // Esto garantiza que no se muestre ningún error
    }
  }

  public static async createUserCliente(data: any) {
    try {
      // Busca el usuario existente
      console.log("Buscando usuario con username:", data.username);
      let existingUser = await User.findOne({ where: { username: data.username, status: 'E' } });

      if (existingUser) {
        console.log("Usuario encontrado:", existingUser);
        // Verifica si el usuario existe y su estado es 'E' (Esperando)
        if ((existingUser as any).status === 'E') {
          // Si el usuario existe y su estado es 'E', actualiza su estado a 'A' (Activo)
          console.log("Estado del usuario es 'E', actualizando a 'A'");
          await existingUser.update({ status: 'A' });
          console.log("Estado del usuario actualizado:", existingUser);

          // Verifica si existe un registro de cliente asociado al usuario
          let existingCliente = await Client.findOne({ where: { UserId: (existingUser as any).id, status: 'E' } });

          if (existingCliente) {
            console.log("Registro de cliente encontrado para el usuario:", existingCliente);
            // Si existe un registro de cliente, actualiza su estado a 'A' (Activo)
            await existingCliente.update({ status: 'A', historyNumber: existingCliente.historyNumber });
            console.log("Estado del cliente relacionado actualizado");
          } else {
            console.log("No se encontró un registro de cliente para el usuario, creando uno nuevo");
          }
        } else {
          // Si el usuario existe pero su estado no es 'E', no se realiza ninguna acción
          console.log("Estado del usuario no es 'E', no se realiza ninguna acción");
          return null; // Indicamos que no se realizó ninguna operación
        }
      } else {
        // Si el usuario no existe, crea uno nuevo
        console.log("Usuario no encontrado, creando uno nuevo");

        // Crea el usuario con los datos proporcionados
        const newUser = await User.create({
          username: data.username,
          password: data.name.charAt(0).toUpperCase() + data.dni,
          urlAvatar: 'http://localhost/public/imgs/avatar/avatardefault.png',
          status: 'A'
        });
        console.log("Usuario creado:", newUser);

        const user = newUser.get();
        // Asigna el ID del usuario a los datos
        data.UserId = (newUser as any).id;
        data.CategoryId = 1;

        if (data.roles) {
          // Inserta el rol del cliente si se proporciona
          await db.query(`
                    INSERT INTO public."UserRole" ("createdAt", "updatedAt", "RoleId", "UserId")
                    VALUES (NOW(), NOW(), ${data.roles}, ${user.id});
                `, { type: QueryTypes.INSERT });
        }

        // Crea el registro del cliente con los datos proporcionados
        const newCliente = await Client.create(data);
        console.log("Registro de cliente creado:", newCliente);

        // Retorna los datos del usuario creado
        return newUser.get();
      }
    } finally {
      return null; // Esto garantiza que no se muestre ningún error
    }
  }
  public static async updateUser(userId: any, body: any) {
    const user = await User.findOne({
      where: { id: userId },
    });
    return user.update({ password: body.newPassword });
  }

}


export default sUser;



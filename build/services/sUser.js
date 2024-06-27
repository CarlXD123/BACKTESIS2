"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const config_database_1 = __importDefault(require("../config/config.database"));
const fileSystem_1 = require("../global/fileSystem");
const Client_1 = __importDefault(require("../models/Client"));
const Employee_1 = __importDefault(require("../models/Employee"));
const User_1 = __importDefault(require("../models/User"));
class sUser {
    constructor() {
    }
    static getUserAll() {
        return User_1.default.findAll();
    }
    static getDataUser(_id) {
        return __awaiter(this, void 0, void 0, function* () {
            const cliente = yield Client_1.default.findOne({ where: { UserId: _id } });
            //console.log(cliente)
            if (cliente == null) {
                const a = (yield config_database_1.default.query(`SELECT * FROM public."Employees" where "UserId"= ${_id};`, { type: sequelize_1.QueryTypes.SELECT }))[0];
                //console.log(a)
                return {
                    a
                };
            }
            else {
                const b = yield Client_1.default.findOne({ where: { UserId: _id } });
                return {
                    b
                };
            }
        });
    }
    static getUserById(user_id) {
        return User_1.default.findOne({
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
        });
    }
    static getMenuForUser(user_id, typeApp = "I") {
        return __awaiter(this, void 0, void 0, function* () {
            let roles = yield this.getRolesByUser(user_id);
            //console.log(roles);
            if (!roles || !roles.length)
                console.error("E012");
            let general = [];
            for (let rol of roles) {
                //console.log(rol);
                const funcions = yield config_database_1.default.query(`SELECT  distinct *
       FROM public."Functions" f
       inner join "RoleFunctions" rf on rf."FunctionId"= f.id
       where rf."RoleId" = ${rol.RoleId} and f."typeApplication" = '${typeApp}'`, { type: sequelize_1.QueryTypes.SELECT });
                if (funcions.length > 0) {
                    //console.log("funcion");
                    //console.log(funcions);
                    const papa = yield config_database_1.default.query(`	SELECT  distinct *
       FROM public."Functions" f
       where f."id" = ${funcions[0].parent_id} and f."typeApplication" = '${typeApp}' `, { type: sequelize_1.QueryTypes.SELECT });
                    //console.log("papa", papa);
                    let data = {};
                    data.id = papa[0].id;
                    data.title = papa[0].title;
                    data.type = papa[0].type;
                    data.icon = papa[0].icon;
                    data.children = [];
                    for (let func of funcions) {
                        data.children.push({
                            id: func.id,
                            title: func.title,
                            type: func.type,
                            url: func.url,
                            icon: func.icon,
                            roles: [{
                                id: rol.id,
                                name: rol.name,
                                actions: {
                                    "canView": func.canView,
                                    "canCreate": func.canCreate,
                                    "canEdit": func.canEdit,
                                    "canDelete": func.canDelete
                                }
                            }]
                        });
                    }
                    general.push(data);
                }
            }
            return general;
        });
    }
    static takeOffRole(role_id, user_id) {
        return __awaiter(this, void 0, void 0, function* () {
            const user = yield User_1.default.findByPk(user_id);
            if (!user) {
                //console.log("E002");
            }
            else {
                config_database_1.default.query(`DELETE FROM public."UserRole"
      where "UserId" = ${user_id} and "RoleId" = ${role_id}`, { type: sequelize_1.QueryTypes.DELETE });
            }
        });
    }
    static getRolesByUser(user_id) {
        return __awaiter(this, void 0, void 0, function* () {
            let user = yield User_1.default.findByPk(user_id);
            if (user != null) {
                return config_database_1.default.query(`SELECT  distinct *
      FROM public."UserRole" ur
      inner join "Roles" r on ur."RoleId" = r.id
      where "UserId" = ${user_id}`, { type: sequelize_1.QueryTypes.SELECT });
            }
            return [];
        });
    }
    static validToken(hash, userId) {
        return __awaiter(this, void 0, void 0, function* () {
            const token = (yield config_database_1.default.query(`SELECT t.id as tokenid, u.*
    FROM public."Tokens" t 
    inner join "Users" u on u.id = t."UserId"
    where hash = '${hash}' and t.status='A'`, { type: sequelize_1.QueryTypes.SELECT }))[0];
            if (!token)
                //console.log("E010");
                // Token has been used
                yield config_database_1.default.query(`UPDATE public."Tokens" SET status = 'I' where id=${token.tokenid}`);
            if (token.id != userId) {
                //console.log("E008");
            }
            else
                return token;
        });
    }
    static getUserByCredentials(username, password) {
        return __awaiter(this, void 0, void 0, function* () {
            const user = yield User_1.default.findOne({
                where: { username: username.toLowerCase(), password },
            });
            return user;
        });
    }
    static createUserEmployee(data, digitalSignatureFile) {
        return __awaiter(this, void 0, void 0, function* () {
            try {
                // Verifica si el usuario ya existe
                console.log("Buscando usuario con username:", data.username);
                let existingUser = yield User_1.default.findOne({ where: { username: data.username, status: 'E' } });

                if (existingUser) {
                    console.log("Usuario encontrado:", existingUser);
                    // Verifica si el usuario existe y su estado es 'E' (Esperando)
                    if (existingUser.status === 'E') {
                        // Si el usuario existe y su estado es 'E', actualiza su estado a 'A' (Activo)
                        console.log("Estado del usuario es 'E', actualizando a 'A'");
                        yield existingUser.update({ status: 'A' });
                        console.log("Estado del usuario actualizado:", existingUser);

                        // Verifica si existe un registro de empleado asociado al usuario
                        let existingEmployee = yield Employee_1.default.findOne({ where: { UserId: existingUser.id, status: 'E' } });

                        if (existingEmployee) {
                            console.log("Registro de empleado encontrado para el usuario:", existingEmployee);
                            // Si existe un registro de empleado, actualiza su estado a 'A' (Activo)
                            yield existingEmployee.update({ status: 'A' });
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
                    const newUser = yield User_1.default.create({
                        username: data.username,
                        password: data.name.charAt(0).toUpperCase() + data.dni,
                        urlAvatar: 'http://localhost/public/imgs/avatar/avatardefault.png',
                        status: 'A'
                    });
                    console.log("Usuario creado:", newUser);

                    const user = newUser.get();
                    // Asigna el ID del usuario a los datos
                    data.UserId = newUser.id;
                    data.CategoryId = 1;

                    if (data.roles) {
                        yield config_database_1.default.query(`INSERT INTO public."UserRole"
      ("createdAt", "updatedAt", "RoleId","UserId")
        VALUES (NOW(),NOW(),${data.roles},${user.id});`, { type: sequelize_1.QueryTypes.INSERT });
                    }

                    // Si se proporciona un archivo de firma digital, guárdalo y actualiza la URL en los datos
                    if (digitalSignatureFile) {
                        const digitalSignatureUrl = fileSystem_1.saveFile(digitalSignatureFile, 'digitalSignature');
                        data.digitalSignatureUrl = digitalSignatureUrl;
                    }

                    // Crea el registro del empleado con los datos proporcionados
                    const newEmployee = yield Employee_1.default.create(data);
                    console.log("Registro de empleado creado:", newEmployee);

                    // Retorna los datos del usuario creado
                    return newUser.get();
                }
            } finally {
                return; // Esto garantiza que no se muestre ningún error
            }
        });
    }


    static createUserCliente(data) {
        return __awaiter(this, void 0, void 0, function* () {
            try {
                // Busca el usuario existente
                console.log("Buscando usuario con username:", data.username);
                let existingUser = yield User_1.default.findOne({ where: { username: data.username, status: 'E' } });

                if (existingUser) {
                    console.log("Usuario encontrado:", existingUser);
                    // Verifica si el usuario existe y su estado es 'E' (Esperando)
                    if (existingUser.status === 'E') {
                        // Si el usuario existe y su estado es 'E', actualiza su estado a 'A' (Activo)
                        console.log("Estado del usuario es 'E', actualizando a 'A'");
                        yield existingUser.update({ status: 'A' });
                        console.log("Estado del usuario actualizado:", existingUser);

                        // Verifica si existe un registro de cliente asociado al usuario
                        let existingCliente = yield Client_1.default.findOne({ where: { UserId: existingUser.id, status: 'E' } });

                        if (existingCliente) {
                            console.log("Registro de cliente encontrado para el usuario:", existingCliente);
                            // Si existe un registro de cliente, actualiza su estado a 'A' (Activo)
                            yield existingCliente.update({ status: 'A', historyNumber: existingCliente.historyNumber });
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
                    const newUser = yield User_1.default.create({
                        username: data.username,
                        password: data.name.charAt(0).toUpperCase() + data.dni,
                        urlAvatar: 'http://localhost/public/imgs/avatar/avatardefault.png',
                        status: 'A'
                    });
                    console.log("Usuario creado:", newUser);

                    const user = newUser.get();
                    // Asigna el ID del usuario a los datos
                    data.UserId = newUser.id;
                    data.CategoryId = 1;

                    if (data.roles) {
                        yield config_database_1.default.query(`INSERT INTO public."UserRole"
            ("createdAt", "updatedAt", "RoleId","UserId")
              VALUES (NOW(),NOW(),${data.roles},${user.id});`, { type: sequelize_1.QueryTypes.INSERT });
                    }

                    // Crea el registro del cliente con los datos proporcionados
                    const newCliente = yield Client_1.default.create(data);
                    console.log("Registro de cliente creado:", newCliente);

                    // Retorna los datos del usuario creado
                    return newUser.get();
                }
            } finally {
                return; // Esto garantiza que no se muestre ningún error
            }
        });
    }


    static updateUser(userId, body) {
        return __awaiter(this, void 0, void 0, function* () {
            const user = yield User_1.default.findOne({
                where: { id: userId },
            });
            return user.update({ password: body.newPassword });
        });
    }
}
exports.default = sUser;

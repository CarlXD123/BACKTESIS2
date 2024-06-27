import { Request, Response } from 'express';
import db from "../config/config.database";
import path from 'path';
import csvParser from 'csv-parser';
import fs from 'fs';
import sReadCsv from '../services/sReadCsv';

class ProcessController {
  constructor() {
  }

  public async proccValues(_req: Request, _res: Response) {

    try {
        const rows = _req.body.values;
        const codeapi = _req.body.codeapi; 
        const directoryPath = 'C:\\Users\\CARLOS\\Documents\\APILIS\\Dymind\\MSH-3\\02_Procesados';
        const files = fs.readdirSync(directoryPath);
        const columnsToExtract = ['idmuestra']; // Agrega los nombres de las columnas que deseas extraer
      
    
        const processFile = async (file: string): Promise<void> => {
          const filePath = path.join(directoryPath, file);
    
          await new Promise<void>((resolve, reject) => {
            fs.createReadStream(filePath)
              .pipe(csvParser({ separator: ',' }))
              .on('data', async (row: any) => {
                const extractedColumns: { [key: string]: any } = {};
                for (const column of columnsToExtract) {
                  extractedColumns[column] = row[column];
                }
    
                // Agrega el código para insertar en la base de datos aquí
                const idMuestraData = sReadCsv.parseIdMuestra(codeapi);
    
                const arrayidmuestra = [idMuestraData];
                const columnValues: string[] = Object.values(rows)
                .slice(0, 40)
                .map((column) => (typeof column === 'string' ? column.trim() : ''));
              
                const columnNames = Object.keys(row).slice(1, 41);
                const promises2: Promise<any>[] = [];
                
                for (const muestra of arrayidmuestra) {
                  const innerPromises: Promise<any>[] = [];

                  for (let i = 0; i < columnNames.length; i++) {
                    const value = columnValues[i];
        
                    const result = await db.query(`
                    SELECT ev.name 
                    FROM public."ExaminationValues" AS ev
                    INNER JOIN public."ExaminationGroups" AS eg ON (ev."ExaminationGroupId" = eg.id)
                    INNER JOIN public."Examinations" AS ex ON (ex."id" = eg."ExaminationId")
                    WHERE ex.id = ${muestra.examenId}
                    `);

                    const names = result[0].map((obj: { name: string }) => obj.name);
                    const columnNames = Object.values(names).slice(0, 41).map((column: string) => column.trim());
                    const value2 = columnNames[i];
                  
                      const query = `UPDATE public."ExaminationDetails" AS deta SET value = '${value}'
                      FROM public."ExaminationValues" AS ev
                      INNER JOIN public."ExaminationGroups" AS eg ON (eg.id = ev."ExaminationGroupId")
                      INNER JOIN public."Examinations" AS ex ON (ex."id" = eg."ExaminationId")
                      INNER JOIN public."AppointmentDetails" AS ad ON (ad."ExaminationId" = eg."ExaminationId")
                      INNER JOIN public."Appointments" AS af ON (af.id = ad."AppointmentId")
                      WHERE af.id = ${muestra.idCita}
                        AND ad.id = ${muestra.idExamCita}
                        AND ad."ExaminationId" = ${muestra.examenId}
                        AND deta."AppointmentDetailId" = ${muestra.idExamCita}
                        AND deta."ExaminationValueId" = ev.id
                        AND ex."id" = ${muestra.examenId}
                        AND ev.name = '${value2}
                      `;
                    const a = db.query(query);
                    innerPromises.push(a);
                  }
                  
                  await Promise.all(innerPromises);
                //});
              }

              await Promise.all(promises2)

              .then(() => {
                
                resolve();
              })
              .catch((error) => {
              
                reject(error);
              });
            
      })
    })
   };
   const promises = files
          .filter((file) => path.extname(file) === '.csv')
          .map((file) => processFile(file));
    
         return Promise.all(promises); // Añade await aquí
        //console.log(data); 
  } catch (error) {
    _res.status(500).json({ message: 'Error al leer los archivos CSV' });
  }
  }
  
}
const processController = new ProcessController();
export default processController;
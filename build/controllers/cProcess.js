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
const config_database_1 = __importDefault(require("../config/config.database"));
const path_1 = __importDefault(require("path"));
const csv_parser_1 = __importDefault(require("csv-parser"));
const fs_1 = __importDefault(require("fs"));
const sReadCsv_1 = __importDefault(require("../services/sReadCsv"));
class ProcessController {
    constructor() {
    }
    proccValues(_req, _res) {
        return __awaiter(this, void 0, void 0, function* () {
            try {
                const rows = _req.body.values;
                const codeapi = _req.body.codeapi;
                const directoryPath = 'C:\\Users\\CARLOS\\Documents\\APILIS\\Dymind\\MSH-3\\02_Procesados';
                const files = fs_1.default.readdirSync(directoryPath);
                const columnsToExtract = ['idmuestra']; // Agrega los nombres de las columnas que deseas extraer
                const processFile = (file) => __awaiter(this, void 0, void 0, function* () {
                    const filePath = path_1.default.join(directoryPath, file);
                    yield new Promise((resolve, reject) => {
                        fs_1.default.createReadStream(filePath)
                            .pipe((0, csv_parser_1.default)({ separator: ',' }))
                            .on('data', (row) => __awaiter(this, void 0, void 0, function* () {
                            const extractedColumns = {};
                            for (const column of columnsToExtract) {
                                extractedColumns[column] = row[column];
                            }
                            // Agrega el código para insertar en la base de datos aquí
                            const idMuestraData = sReadCsv_1.default.parseIdMuestra(codeapi);
                            const arrayidmuestra = [idMuestraData];
                            const columnValues = Object.values(rows)
                                .slice(0, 40)
                                .map((column) => (typeof column === 'string' ? column.trim() : ''));
                            const columnNames = Object.keys(row).slice(1, 41);
                            const promises2 = [];
                            for (const muestra of arrayidmuestra) {
                                const innerPromises = [];
                                for (let i = 0; i < columnNames.length; i++) {
                                    const value = columnValues[i];
                                    const result = yield config_database_1.default.query(`
                    SELECT ev.name 
                    FROM public."ExaminationValues" AS ev
                    INNER JOIN public."ExaminationGroups" AS eg ON (ev."ExaminationGroupId" = eg.id)
                    INNER JOIN public."Examinations" AS ex ON (ex."id" = eg."ExaminationId")
                    WHERE ex.id = ${muestra.examenId}
                    `);
                                    const names = result[0].map((obj) => obj.name);
                                    const columnNames = Object.values(names).slice(0, 41).map((column) => column.trim());
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
                                    const a = config_database_1.default.query(query);
                                    innerPromises.push(a);
                                }
                                yield Promise.all(innerPromises);
                                //});
                            }
                            yield Promise.all(promises2)
                                .then(() => {
                                resolve();
                            })
                                .catch((error) => {
                                reject(error);
                            });
                        }));
                    });
                });
                const promises = files
                    .filter((file) => path_1.default.extname(file) === '.csv')
                    .map((file) => processFile(file));
                return Promise.all(promises); // Añade await aquí
                //console.log(data); 
            }
            catch (error) {
                _res.status(500).json({ message: 'Error al leer los archivos CSV' });
            }
        });
    }
}
const processController = new ProcessController();
exports.default = processController;

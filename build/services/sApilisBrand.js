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
const ApilisBrand_1 = __importDefault(require("../models/ApilisBrand"));
const ApilisModel_1 = __importDefault(require("../models/ApilisModel"));
const ApilisPath_1 = __importDefault(require("../models/ApilisPath"));
const ApilisMatchData_1 = __importDefault(require("../models/ApilisMatchData"));
const ApilisMatchDataDetail_1 = __importDefault(require("../models/ApilisMatchDataDetail"));
class ApilisBrandServicios {
    constructor() {
    }
    static buildQuery(query) {
        let where = {
            codBaja: {
                [sequelize_1.Op.ne]: 1,
            },
        };
        if (query.codBaja) {
            where['"codBaja"'] = query.codBaja;
        }
        if (query.codBaja == 0) {
            if (query.date) {
                where['id'] = query.date;
            }
        }
        if (query.codBaja == 1) {
            if (query.date) {
                where['id'] = query.date;
            }
        }
        return where;
    }
    static getAllBrand(offset, limit, query) {
        return __awaiter(this, void 0, void 0, function* () {
            let where = ApilisBrandServicios.buildQuery(query);
            const { count: total, rows } = yield ApilisBrand_1.default.findAndCountAll({
                where,
                distinct: true,
                offset,
                limit,
                order: [["nameBrand", "ASC"]],
            });
            let datos = [];
            for (const r of rows) {
                const daton = (yield config_database_1.default.query(`SELECT 
            apb.id apbid, apb."nameBrand" nameBrand, apb."codBaja" codBajaBrand

            FROM public."ApilisBrands" apb
			where apb.id=${r.get('id')}`, { type: sequelize_1.QueryTypes.SELECT }))[0];
                const daton3 = (yield config_database_1.default.query(`SELECT 
        apm.id apmid, apm."nameModel" nameModel, apm."codBaja", apm."idBrand" idBrandModel
        FROM public."ApilisModels" apm
        where apm."idBrand"=${r.get('id')} and apm."codBaja"=0`, { type: sequelize_1.QueryTypes.SELECT }));
                let persona = r.get();
                if (!daton)
                    continue;
                datos.push(Object.assign(Object.assign({}, persona), { model: {
                        modelo: daton3
                    } }));
                //     where["$Client.UserId$"] = query.UserId;
                // }
            }
            const result = {
                total,
                count: rows.length,
                data: datos
            };
            return result;
        });
    }
    static getBrand(id) {
        return __awaiter(this, void 0, void 0, function* () {
            const brand = yield ApilisBrand_1.default.findOne({
                where: { id }
            });
            if (!brand) {
                //console.log("Error");
            }
            return brand;
        });
    }
    static getModelByBrand(id) {
        return __awaiter(this, void 0, void 0, function* () {
            return yield config_database_1.default.query(`SELECT 
        pm.id,
        pm."nameModel"
        FROM public."ApilisBrands" api
        inner join public."ApilisModels" pm on api.id = pm."idBrand"
        where api.id= ${id}`, { type: sequelize_1.QueryTypes.SELECT });
        });
    }
    static addBrand(data) {
        return __awaiter(this, void 0, void 0, function* () {
            const apilisBrand = yield ApilisBrand_1.default.create(data);
            return apilisBrand;
        });
    }
    static updateBrand(id, data) {
        return __awaiter(this, void 0, void 0, function* () {
            config_database_1.default.transaction((transaction) => __awaiter(this, void 0, void 0, function* () {
                let apilisBrand = yield ApilisBrand_1.default.findOne({
                    where: {
                        id
                    }
                });
                //     await appointment.setExaminations(data.examinations, { transaction });
                yield apilisBrand.update(data);
            }));
        });
    }
    static destroyBrand(id) {
        return __awaiter(this, void 0, void 0, function* () {
            config_database_1.default.transaction((transaction) => __awaiter(this, void 0, void 0, function* () {
                try {
                    yield ApilisBrand_1.default.update({
                        codBaja: 1,
                    }, {
                        where: { id: id }
                    });
                    yield ApilisModel_1.default.update({
                        codBaja: 1,
                    }, {
                        where: { idBrand: id }
                    });
                    const modelsToUpdate = yield ApilisModel_1.default.findAll({
                        where: {
                            idBrand: id,
                            codBaja: 1
                        },
                    });
                    const modelIds = modelsToUpdate.map((model) => model.id);
                    yield ApilisPath_1.default.update({
                        codBaja: 1,
                    }, {
                        where: {
                            idModel: { [sequelize_1.Op.in]: modelIds }
                        },
                    });
                    yield ApilisMatchData_1.default.update({
                        codBaja: 1,
                        Color: "",
                    }, {
                        where: { idModel: { [sequelize_1.Op.in]: modelIds } }
                    });
                    const examToUpdate = yield ApilisMatchData_1.default.findAll({
                        where: {
                            idModel: { [sequelize_1.Op.in]: modelIds },
                            codBaja: 1
                        },
                    });
                    const matchDetails = examToUpdate.map((matchdetail) => matchdetail.id);
                    yield ApilisMatchDataDetail_1.default.update({
                        codBaja: 1,
                    }, {
                        where: { idApilisMatchData: { [sequelize_1.Op.in]: matchDetails } }
                    });
                }
                catch (error) {
                    console.log("Error in transaction: ", error);
                }
            }));
        });
    }
}
exports.default = ApilisBrandServicios;

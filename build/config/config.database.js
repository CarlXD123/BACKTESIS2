"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const db = new sequelize_1.Sequelize('PR_DATABASE', 'postgres', 'YwIstmVfblOvuuXBlBivCpbYqNrkzPIt', {
    host: 'roundhouse.proxy.rlwy.net',
    dialect: 'postgres',
    logging: false,
    port: 38102,
    protocol: 'postgres',
    dialectOptions: {
        ssl: process.env.DB_ENABLE_SSL && {
            require: true
        }
    }
});
exports.default = db;

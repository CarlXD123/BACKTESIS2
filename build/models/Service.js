"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const config_database_1 = __importDefault(require("../config/config.database"));
const Service = config_database_1.default.define("Services", {
    name: sequelize_1.DataTypes.STRING,
    description: sequelize_1.DataTypes.STRING
});
exports.default = Service;

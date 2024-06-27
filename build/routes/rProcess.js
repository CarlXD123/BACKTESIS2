"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const cProcess_1 = __importDefault(require("../controllers/cProcess"));
class ProcessRouter {
    constructor() {
        this.router = (0, express_1.Router)();
        this.routes();
    }
    routes() {
        this.router.post("/", cProcess_1.default.proccValues);
    }
}
const processRouter = new ProcessRouter();
exports.default = processRouter.router;

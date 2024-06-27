"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
class ProcessServicios {
    constructor() {
    }
    static parseIdMuestra(idMuestra) {
        const parts = idMuestra.split('_');
        return {
            codigoCita: parts[0],
            codigoPaciente: parts[1],
            idCita: parseInt(parts[2], 10),
            idExamCita: parseInt(parts[3], 10),
            examenId: parseInt(parts[4], 10),
        };
    }
}
exports.default = ProcessServicios;

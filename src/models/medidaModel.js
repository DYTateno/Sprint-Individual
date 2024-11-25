var database = require("../database/config");

function buscarUltimasMedidas(idUser) {

    var instrucaoSql = `SELECT momento, COUNT(id) as 'soma' FROM medida WHERE id >= ${idUser} GROUP BY momento`

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal(idUser) {

    var instrucaoSql = `SELECT momento, COUNT(id) as 'soma' FROM medida WHERE id >= ${idUser} GROUP BY momento`
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal
}

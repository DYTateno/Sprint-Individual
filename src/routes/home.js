
var express = require("express");
var router = express.Router();

var homeController = require("../controllers/homeController");


router.post("/cadastrar", function (req, res) {
    // função a ser chamada quando acessar /carros/cadastrar
    homeController.cadastrar(req, res);
});

router.get("/listar", function (req, res) {
    // função a ser chamada quando acessar /carros/listar
    homeController.listar(req, res);
});

module.exports = router;
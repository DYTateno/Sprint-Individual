-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/


CREATE DATABASE sprint;

USE sprint;

CREATE TABLE usuario (
	idUser INT PRIMARY KEY auto_increment,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

create table medida (
	id INT PRIMARY KEY AUTO_INCREMENT,
	momento DATETIME
);           


SELECT momento, COUNT(id) AS 'soma'
FROM medida
GROUP BY momento
ORDER BY momento DESC;

SELECT momento, COUNT(id) AS 'soma' FROM medida GROUP BY momento ORDER BY momento DESC;


SELECT * FROM usuario;
SELECT * FROM medida;

-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/


CREATE DATABASE sprint;

USE sprint;

SELECT * FROM usuario;
SELECT * FROM medida;

CREATE TABLE usuario (
	idUser INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

create table medida (
	id INT PRIMARY KEY AUTO_INCREMENT,
	momento DATETIME,
	fkUsuario INT,
	FOREIGN KEY (fkUsuario) REFERENCES usuario(id)
 );

INSERT INTO medida VALUES
(1, '2023-02-02 23:00:00', 1);
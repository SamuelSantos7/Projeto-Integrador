create database db_projetoint;

use db_projetoint;

CREATE TABLE tb_postagem (
    Id INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    Título VARCHAR(255) NOT NULL,
    Link VARCHAR(255) NOT NULL,
    Plataforma_de_retirada VARCHAR(30) NOT NULL,
    Autor VARCHAR(30) NOT NULL,
	data_mensagem DATETIME
    
);

CREATE TABLE tb_usuario (
    Id INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    Nome_completo VARCHAR(255) NOT NULL,
    Data_de_Nascimento date NOT NULL,
    Telefone VARCHAR(30) NOT NULL,
    Senha VARCHAR(30) NOT NULL
	
);

CREATE TABLE tb_tema (
    Id INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    Autor VARCHAR(255) NOT NULL,
    Título VARCHAR(255) NOT NULL,
    Texto VARCHAR(255) NOT NULL,
    Link VARCHAR(255),
    id_usuario integer(255)
);

alter table tb_tema add foreign key (id_usuario) references tb_usuario(Id);
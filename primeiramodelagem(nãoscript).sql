/* Modelagem básica*/

CLIENTE

NOME CARACTER(30)
CPF NUMERICO(11)
EMAIL CARACTER(30)
TELEFONE CARACTER(30)
SEXO CARACTER(1)
ENDERECO CARACTER(100)

/* PROCESSO DE MODELAGEM*/

/* ADM DE DADOS*/
MODELAGEM CONCEITUAL-RASCUNHO 01
MODELAGEM LÓGICA- PROGRAMAS COM BRMODELO
/* AD - BDA*/
MODELAGEM FÍSICA- SCRIPT DO BANCO DE DADOS
/* Modelo físico */

/* criando um banco*/

CREATE DATABASE PROJETO;

/*CONECTANDO*/

USE PROJETO;

/*CRIANDO TABELA*/
CREATE TABLE CLIENTE(
    NOME VARCHAR(30),
    SEXO CHAR(1),
    EMAIL VARCHAR(30),
    CPF INT(11), 
    TELEFONE VARCHAR(30),
    ENDERECO VARCHAR(100)

);
/*  VERIFICANDO AS TABELAS*/
SHOW TABLES;
/* DESCREVENDO TABELAS*/
DESC CLIENTE;

/* Primeira forma de inserção sem colunas*/
INSERT INTO CLIENTE VALUES('Stenio Neves','M','stentioneves@localhost.com',123456789,'+55(21)0000-0000','Rua joão vicente 400, Bento Ribeiro-RJ')
/* Segunda forma de inserção com colunas */
INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,EMAIL,CPF)VALUES ('Sergio Junior','M','Rua Voluntários da Pátria 200,Botafogo-RJ','+55(21)3236-5623','sergio@teste.com',1235469);
/* terceira forma de inserção compacto somente disponível no MYSQL*/
INSERT INTO CLIENTE VALUES('Phelipe','M','phelipe@teste.com',123456,'+55(21)0000-0000','Rua Siqueira Campos- Copacabana -RJ'),('Fabiana','F','fabi@teste.com',2569870,'+55(21)0202-0202','Av Platão de Aristóteles-Grecia Generica-FC');

/* Comando select Comando mais importante do banco de dados e perigoso!!!*/
SELECT NOW(); /* Retorna data e hora do banco de dados*/
SELECT 'STENIO';
/* ALIAS de colunas */

SELECT 'STENIO' AS ALUNO;
SELECT NOME,SEXO,ENDERECO FROM CLIENTE;
/* select * from cliente -Somente para fins academicos*/
/* Filtragem dados where*/

SELECT NOME, SEXO from CLIENTE WHERE SEXO ='M';
SELECT NOME, ENDERECO from CLIENTE WHERE SEXO ='M';
SELECT NOME, EMAIL FROM CLIENTE WHERE ENDERECO ='RJ';
/*Like =como*/
SELECT NOME, EMAIL FROM CLIENTE WHERE ENDERECO  Like 'RJ';
/*Caracter coringa % */
SELECT NOME, EMAIL FROM CLIENTE WHERE ENDERECO  Like '%RJ';
SELECT NOME, EMAIL, ENDERECO  FROM CLIENTE WHERE ENDERECO  Like '%RJ';
SELECT NOME, EMAIL, ENDERECO  FROM CLIENTE WHERE ENDERECO  Like '%Botafogo%';
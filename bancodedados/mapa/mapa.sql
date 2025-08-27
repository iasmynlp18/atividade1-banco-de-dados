CREATE DATABASE mapa_banco_de_dados;


-- Tabela Departamentos 
/* Possui um identificador único, nome, email para contato e uma descrição */

CREATE TABLE DEPARTAMENTOS (
	ID_DEPARTAMENTO       SERIAL PRIMARY KEY,
	NOME                  VARCHAR(50) NOT NULL,
	EMAIL_CONTATO         VARCHAR(30) NOT NULL,
	DESCRICAO             VARCHAR(100)
);


-- Tabela Funcionarios
/* Possui um identificador único, uma chave estrangeira ID_DEPARTAMENTO que pode ser nula já que um funcionário pode ter ou não um departamento de acordo com o DER do enunciado, além dos demais campos característicos */

CREATE TABLE FUNCIONARIOS (

	ID_FUNCIONARIO        SERIAL PRIMARY KEY,
	ID_DEPARTAMENTO       INT NULL,
	NOME_COMPLETO         VARCHAR(50) NOT NULL,
	FUNCAO                VARCHAR(30),
	TELEFONE              VARCHAR(20) NOT NULL,
	
	FOREIGN KEY (ID_DEPARTAMENTO) REFERENCES DEPARTAMENTOS(ID_DEPARTAMENTO)
);


-- Tabela Projetos
/* Possui um identificador único, nome, se esta ativo ou inativo e uma data final estimada */

CREATE TABLE PROJETOS (

	ID_PROJETO            SERIAL PRIMARY KEY,
	NOME                  VARCHAR(30) NOT NULL,
	STATUS                VARCHAR(20) NOT NULL,
	DATA_FIM_ESTIMADA     DATE NOT NULL
);


-- Tabela Alocacoes
/* Possui um identificador único, duas chaves estrangeiras, sendo ID_FUNCIONARIO e ID_PROJETO, a data de inicio e data de conclusão do projeto já que é um registro da relação de funcionarios e projetos */

CREATE TABLE ALOCACOES (

	ID_ALOCACAO           SERIAL PRIMARY KEY, 
	ID_FUNCIONARIO        INT NOT NULL,
	ID_PROJETO            INT NOT NULL,
	DATA_INICIO_PROJETO   DATE NOT NULL,
	DATA_FIM_PROJETO      DATE, 
	
	FOREIGN KEY (ID_FUNCIONARIO) REFERENCES FUNCIONARIOS(ID_FUNCIONARIO),
	
	FOREIGN KEY (ID_PROJETO) REFERENCES PROJETOS(ID_PROJETO)
);


-- Tabela Tarefas
/* Possui um identificador único, uma chave estrangeira ID_PROJETO que relaciona a tabela tarefas a tabela projetos, assim como nome, status ativa ou inativa e descrição do que é pra ser feito */

CREATE TABLE TAREFAS (

	ID_TAREFA             SERIAL PRIMARY KEY,
	ID_PROJETO            INT NOT NULL,
	NOME                  VARCHAR(40) NOT NULL,
	STATUS                VARCHAR(10) NOT NULL,
	DESCRICAO             TEXT NOT NULL,

	FOREIGN KEY (ID_PROJETO) REFERENCES PROJETOS(ID_PROJETO)
);



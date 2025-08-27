CREATE TABLE MATRICULAS (
	id_matricula INT PRIMARY KEY NOT NULL,
	id_membro INT NOT NULL,
	id_plano INT NOT NULL,
	data_inicio DATE NOT NULL,
	data_termino DATE,
	status VARCHAR(20) NOT NULL
);

SELECT * FROM MATRICULAS


CREATE TABLE MEMBROS (
	id_membro INT PRIMARY KEY NOT NULL,
	nome_completo VARCHAR(100) NOT NULL,
	cpf VARCHAR(14) NOT NULL,
	data_nascimento DATE NOT NULL,
	telefone VARCHAR(15) NOT NULL,
	email VARCHAR(100) NOT NULL,
	data_cadastro DATE 
);

INSERT INTO MEMBROS (id_membro, nome_completo, cpf, data_nascimento, telefone, email, data_cadastro) 
VALUES 
	(1, 'Carlos Ferreira', '123.456.789-01', '1990-05-15', '(11) 9999-8888', 'carlos@email.com', '2025-05-14'),
	(2, 'Ana Beatriz', '987.654.321-09', '1985-08-22', '(11) 9777-6666', 'ana@email.com', '2025-05-14'),
	(3, 'Roberto Almeida', '456.123.789-05', '1995-03-10', '(11) 9555-4444', 'roberto@email.com', '2025-05-14');

SELECT * FROM MEMBROS


CREATE TABLE PLANOS (
	id_plano INT PRIMARY KEY NOT NULL,
	nome_plano VARCHAR(50) NOT NULL,
	duracao_meses INT NOT NULL,
	preco NUMERIC(10,2) NOT NULL,
	descricao VARCHAR(300) 
);

INSERT INTO PLANOS (id_plano, nome_plano, duracao_meses, preco, descricao)
VALUES 
	(1, 'Plano Bronze', 1, 99.90, 'Acesso à academia em horário comercial'),
	(2, 'Plano Prata', 3, 249.90, 'Acesso ilimitado + 2 aulas semanais'),
	(3, 'Plano Ouro', 12, 899.90, 'Acesso ilimitado + todas as aulas + personal trainer');

SELECT * FROM PLANOS
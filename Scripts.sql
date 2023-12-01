/* Criar tabelas do cliente ----------------------------------------------*/
CREATE TABLE cliente(
	idcliente INTEGER NOT NULL,
	nome VARCHAR(50) NOT NULL, -- Pedro 5, 45
	cpf CHAR(11),
	rg VARCHAR(15),
	data_nascimento DATE,
	genero CHAR(1),
	profissao VARCHAR(30),
	nacionalidade VARCHAR(30),
	logradouro VARCHAR(30),
	numero VARCHAR(10),
	complemento VARCHAR(30),
	bairro VARCHAR(30),
	municipio VARCHAR(30),
	uf VARCHAR(30),
	observacoes TEXT,
	
	--Primary Key
	 CONSTRAINT pk_client_idcliente PRIMARY KEY (idcliente)
)

/* Inserir os dados ---------------------------------------------------------------*/
INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(1, 'Manoel', '88828383821', '32323', '2001-01-30', 'M', 'Estudante', 'Brasileiro', 'Rua Joaquim Nabuco', '23', 'Casa', 'Cidade Nova', 'Porto União', 'SC');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(2, 'Geraldo', '12343299929', '56565', '1987-01-04', 'M', 'Engenheiro', 'Brasileiro', 'Rua das Limas', '200', 'Ap', 'Centro', 'Poro União', 'SC');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(3, 'Carlos', '87732323227', '55463', '1967-10-01', 'M', 'Pedreiro', 'Brasileiro', 'Rua das Laranjeiras', '300', 'Apart', 'Cto', 'Canoinhas', 'SC');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(4, 'Adriana', '1231222122', '56565', '1989-09-10', 'F', 'Jornalista', 'Brasileira', 'Rua das Limas', '240', 'Casa', 'São Pedro', 'Poro Vitória', 'PR');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(5, 'Amanda', '99982838828', '28382', '1991-03-04', 'F', 'Jorn.', 'Italiana ', 'Av. Central', '100', null, 'São Pedro', 'General Carneiro', 'PR');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(6, 'Ângelo', '99982828181', '12323', '2000-01-01', 'M', 'Professor', 'Brasileiro', 'Av. Beira Mar', '300', null, 'Ctr.', 'São Paulo', 'SP');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(7, 'Anderson', null, null, null, 'M', 'Prof.', 'Italiano', 'Av. Brasil', '100', 'Apartamento', 'Santa Rosa', 'Rio de Janeiro', 'SP');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(8, 'Camila', '99982838828', null, '2001-10-10', 'F', 'Professora', 'Norte Americana', 'Rua Central', '4333', null, 'Centro', 'Uberlândia', 'MG');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(9, 'Cristiano', null, null, null, 'M', 'Estudante', 'Alemão', 'Rua do Centro', '877', 'Casa', 'Centro', 'Porto Alegre', 'RS');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(10, 'Fabrício', '8828282828', '32323', null, 'M', 'Estudante', 'Brasileiro', null, null, null, null, 'PU', 'SC');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(11, 'Fernanda', null, null, null, 'F', null, 'Brasileira', null, null, null, null, 'Poro União', 'SC');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(12, 'Gilmar', '88881818181', '888', '2000-02-10', 'M', 'Estud.', null, 'Rua das Laranjeiras', '200', null, 'C.Nova', 'Canoinhas', 'SC');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(13, 'Diego', '1010191919', '111939', null, 'M', 'Professor', 'Alemão', 'Rua Central', '455', 'Casa', 'Cidade N.', 'São Paulo', 'SP');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(14, 'Jeferson', null, null, '1983-07-01', 'M', null, 'Brasileiro', null, null, null, null, 'União da Vitória', 'PR');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(15, 'Jessica', null, null, null, 'F', 'Estudante', null, null, null, null, null, 'União da Vitória', 'PR');

/* Consultas Simples I ---------------------------------------------------*/
SELECT * FROM cliente;
SELECT nome, data_nascimento as "Data de Nascimento" FROM cliente;
SELECT 'CPF: ' || cpf || ' RG: ' || rg as "CPF e RG" FROM cliente;
SELECT * FROM cliente LIMIT 3;

/* Consultas Simples II -------------------------------------------------------*/
SELECT nome, data_nascimento FROM cliente WHERE data_nascimento > '2000-01-01';
SELECT nome FROM cliente WHERE nome LIKE 'C%';
SELECT nome FROM cliente WHERE nome LIKE '%c%';
SELECT nome, data_nascimento FROM cliente WHERE data_nascimento BETWEEN '1990-01-01' AND '1998-01-01';
SELECT nome, rg FROM cliente WHERE rg IS null;
SELECT nome FROM cliente ORDER BY nome ASC;
SELECT nome FROM cliente ORDER BY nome DESC;

-- 1- O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente
SELECT nome, genero, profissao FROM cliente ORDER BY nome, genero, profissao DESC;

-- 2-Os clientes que tenham a letra “R” no nome
SELECT nome FROM cliente WHERE nome LIKE '%r%';

-- 3- Os clientes que o nome inicia com a letra “C”
SELECT nome FROM cliente WHERE nome LIKE 'C%';

-- 4- Os clientes que o nome termina com a letra “A”
SELECT nome FROM cliente WHERE nome LIKE '%a';

-- 5- Os clientes que moram no bairro “Centro”
SELECT bairro FROM cliente WHERE bairro = 'Centro' OR bairro = 'Cto' OR bairro = 'Ctr.';

-- 6-  Os clientes que moram em complementos que iniciam com a letra “A”
SELECT nome, complemento FROM cliente WHERE complemento LIKE 'A%';

-- 7- Somente os clientes do sexo feminino
SELECT nome, genero FROM cliente WHERE genero = 'F';

-- 8- Os clientes que não informaram o CPF
SELECT cpf FROM cliente WHERE cpf = null;

-- 9- O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão
SELECT nome, profissao FROM cliente ORDER BY profissao;

-- 10- Os clientes de nacionalidade “Brasileira”
SELECT nome, nacionalidade FROM cliente WHERE nacionalidade = 'Brasileira';

-- 11- Os clientes que informaram o número da residência
SELECT numero FROM cliente;

-- 12- Os clientes que moram em Santa Catarina
SELECT nome, uf FROM cliente WHERE uf LIKE 'SC';

-- 13- Os clientes que nasceram entre 01/01/2000 e 01/01/2002
SELECT nome, data_nascimento FROM cliente WHERE data_nascimento BETWEEN '2000-01-01' AND '2002-01-01';

-- 14- O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes
SELECT nome || ' - ' || logradouro || ' - ' || numero || ' - ' || complemento || ' - ' || bairro || ' - ' || municipio || ' - ' || uf FROM cliente;

/* Comandos de Update e Delete ------------------------------------------------------------*/
SELECT * FROM cliente;
UPDATE cliente SET nome = 'Teste' WHERE idcliente = 1;
UPDATE cliente SET nome = 'Adriano', genero = 'M', numero = '241' WHERE idcliente = 4;
INSERT INTO cliente (idcliente, nome) VALUES (16, 'João')
DELETE FROM cliente WHERE idcliente = 16;

/*==== Exercícios UPDATE e DELETE ========================================================*/
--1- Insira os dados abaixo na tabela de clientes(Ver Foto na pasta)
INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(16, 'Maicon', '1234', null, '1965-10-10', 'F', 'Empresário', null, null, null, null, null, 'Florianópolis', 'PR');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(17, 'Getúlio', null, '4631', null, 'F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba', 'SC');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES(18, 'Sandra', null, null, null, 'M', 'Professor', 'Italiana', null, '12', 'Bloco A', null, null, null);

/*
2. Altere os dados do cliente Maicon
	a. O CPF para 45390569432
	b. O gênero para M
	c. A nacionalidade para Brasileira
	d. O UF para SC
*/
UPDATE cliente SET cpf = '45390569432' WHERE idcliente = 16;
UPDATE cliente SET genero = 'M' WHERE idcliente = 16;
UPDATE cliente SET nacionalidade = 'Brasileiro' WHERE idcliente = 16;
UPDATE cliente SET uf = 'SC' WHERE idcliente = 16;

/*
3. Altere os dados do cliente Getúlio
	a. A data de nascimento para 01/04/1978
	b. O gênero para M
*/
UPDATE cliente SET data_nascimento = '1978-04-01' WHERE idcliente = 17;
UPDATE cliente SET genero = 'M' WHERE idcliente = 17;

/*
4. Altere os dados da cliente Sandra
	a. O gênero para F
	b. A profissão para Professora
	c. O número para 123
*/
UPDATE cliente SET genero = 'F' WHERE idcliente = 18;
UPDATE cliente SET profissao = 'Professora' WHERE idcliente = 18;
UPDATE cliente SET numero = '123' WHERE idcliente = 18;

/*5. Apague o cliente Maicon*/
DELETE FROM cliente WHERE idcliente = 16;
/*6. Apague a cliente Sandra*/
DELETE FROM cliente WHERE idcliente = 18;

/*== Criação de mais tabelas ============================================*/
CREATE TABLE profissao(
	idprofissao INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,
	
	CONSTRAINT pk_idprofissao PRIMARY KEY (idprofissao),
	CONSTRAINT un_profissao_nome UNIQUE (nome)
);

INSERT INTO profissao(idprofissao, nome)
VALUES(1, 'Estudante');
INSERT INTO profissao(idprofissao, nome)
VALUES(2, 'Engenheiro');
INSERT INTO profissao(idprofissao, nome)
VALUES(3, 'Pedreiro');
INSERT INTO profissao(idprofissao, nome)
VALUES(4, 'Jornalista');
INSERT INTO profissao(idprofissao, nome)
VALUES(5, 'Professor');
SELECT * FROM profissao;

CREATE TABLE nacionalidade(
	idnacionalidade INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,
	
	CONSTRAINT pk_idnacionalidade PRIMARY KEY (idnacionalidade),
	CONSTRAINT unique_nacionalidade_nome UNIQUE (nome)
);

INSERT INTO nacionalidade(idnacionalidade, nome)
VALUES(1, 'Brasileira');
INSERT INTO nacionalidade(idnacionalidade, nome)
VALUES(2, 'Italiana');]
INSERT INTO nacionalidade(idnacionalidade, nome)
VALUES(3, 'Norte-americana');
INSERT INTO nacionalidade(idnacionalidade, nome)
VALUES(4, 'Alemã');
SELECT * FROM nacionalidade;

CREATE TABLE complemento(
	idcomplemento INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,
	
	CONSTRAINT pk_idcomplemento PRIMARY KEY (idcomplemento),
	CONSTRAINT unique_complemento_nome UNIQUE (nome)
);

INSERT INTO complemento(idcomplemento, nome)
VALUES(1, 'Casa');
INSERT INTO complemento(idcomplemento, nome)
VALUES(2, 'Apartamento');
SELECT * FROM complemento;

CREATE TABLE bairro(
	idbairro INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,
	
	CONSTRAINT pk_idbairro PRIMARY KEY (idbairro),
	CONSTRAINT unique_bairro_nome UNIQUE (nome)
);

INSERT INTO bairro(idbairro, nome)
VALUES(1, 'Cidade Nova');
INSERT INTO bairro(idbairro, nome)
VALUES(2, 'Centro');
INSERT INTO bairro(idbairro, nome)
VALUES(3, 'São Pedro');
INSERT INTO bairro(idbairro, nome)
VALUES(4, 'Santa Rosa');
SELECT * FROM bairro;
SELECT * FROM cliente;

/*==== Chaves Estrangeiras I ==========================================================================*/
ALTER TABLE cliente RENAME COLUMN profissao TO idprofissao;
ALTER TABLE cliente ALTER COLUMN idprofissao TYPE INTEGER; /*Coluna idprofissao não pode ser convertida automaticamente para o tipo Integer*/
ALTER TABLE cliente DROP idprofissao;
ALTER TABLE cliente ADD idprofissao INTEGER; --Foreign Key
ALTER TABLE cliente ADD CONSTRAINT fk_idprofissao FOREIGN KEY (idprofissao) REFERENCES profissao (idprofissao); --Foreign Key
UPDATE cliente SET idprofissao = 1 WHERE idcliente IN (1, 9, 10, 12, 15, 17);
UPDATE cliente SET idprofissao = 2 WHERE idcliente = 2;
UPDATE cliente SET idprofissao = 3 WHERE idcliente = 3;
UPDATE cliente SET idprofissao = 4 WHERE idcliente IN (4, 5);
UPDATE cliente SET idprofissao = 5 WHERE idcliente IN (6, 7, 8, 13);
SELECT * FROM profissao;
DELETE FROM profissao WHERE idprofissao = 1; /*Não é possível apagar esse dado pois a chave estrangeira já foi criada*/
INSERT INTO profissao(idprofissao, nome) VALUES(10, 'Teste');

/*==== Chaves Estrangeiras II =====================================================*/
SELECT * FROM cliente;
ALTER TABLE cliente DROP nacionalidade;
ALTER TABLE cliente ADD idnacionalidade INTEGER;
ALTER TABLE cliente ADD CONSTRAINT fk_nacionalidade FOREIGN KEY (idnacionalidade) REFERENCES nacionalidade(idnacionalidade); --FK
UPDATE cliente SET idnacionalidade = 1 WHERE idcliente IN (1,2,3,4,6,10,11,14);
UPDATE cliente SET idnacionalidade = 2 WHERE idcliente IN (5,7);
UPDATE cliente SET idnacionalidade = 3 WHERE idcliente = 8;
UPDATE cliente SET idnacionalidade = 4 WHERE idcliente IN (9,13);

SELECT * FROM cliente;
ALTER TABLE cliente DROP complemento;
ALTER TABLE cliente ADD idcomplemento INTEGER;
ALTER TABLE cliente ADD CONSTRAINT fk_idcomplemento FOREIGN KEY (idcomplemento) REFERENCES complemento (idcomplemento);
UPDATE cliente SET idcomplemento = 1 WHERE idcliente IN (1,4,9,13);
UPDATE cliente SET idcomplemento = 2 WHERE idcliente IN (2,3,7);

ALTER TABLE cliente DROP bairro;
ALTER TABLE cliente ADD idbairro INTEGER;
ALTER TABLE cliente ADD CONSTRAINT fk_idbairro FOREIGN KEY (idbairro) REFERENCES bairro (idbairro);

SELECT * FROM bairro;
UPDATE cliente SET idbairro = 1 WHERE idcliente IN (1,12,13);
UPDATE cliente SET idbairro = 2 WHERE idcliente IN (2,3,6,8,9);
UPDATE cliente SET idbairro = 3 WHERE idcliente IN (4,5);
UPDATE cliente SET idbairro = 4 WHERE idcliente = 7;

/*==== Chaves Estrangeiras III ======================================================*/
SELECT * FROM cliente;

CREATE TABLE uf(
	iduf INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,
	sigla CHAR(2) NOT NULL,
	
	CONSTRAINT pk_uf_idunidade_federacao PRIMARY KEY (iduf),
	CONSTRAINT unidade_federacao_nome UNIQUE (nome),
	CONSTRAINT sigla_uf UNIQUE (sigla)
);

INSERT INTO uf(iduf, nome, sigla) VALUES(1, 'Santa Catarina', 'SC');
INSERT INTO uf(iduf, nome, sigla) VALUES(2, 'Paraná', 'PR');
INSERT INTO uf(iduf, nome, sigla) VALUES(3, 'São Paulo', 'SP');
INSERT INTO uf(iduf, nome, sigla) VALUES(4, 'Minas Gerais', 'MG');
INSERT INTO uf(iduf, nome, sigla) VALUES(5, 'Rio Grande do Sul', 'RS');
INSERT INTO uf(iduf, nome, sigla) VALUES(6, 'Rio de Janeiro', 'RJ');
SELECT * FROM uf;

CREATE TABLE municipio(
	idmunicipio INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,
	iduf INTEGER NOT NULL,
	
	CONSTRAINT pk_idmunicipio PRIMARY KEY (idmunicipio),
	CONSTRAINT unique_municipio_nome UNIQUE (nome),
	CONSTRAINT fk_municipio_iduf FOREIGN KEY (iduf) REFERENCES uf (iduf)
);

INSERT INTO municipio(idmunicipio, nome, iduf) VALUES(1, 'Porto União', 1);
INSERT INTO municipio(idmunicipio, nome, iduf) VALUES(2, 'Canoinhas', 1);
INSERT INTO municipio(idmunicipio, nome, iduf) VALUES(3, 'Porto Vitória', 2);
INSERT INTO municipio(idmunicipio, nome, iduf) VALUES(4, 'General Carneiro', 2);
INSERT INTO municipio(idmunicipio, nome, iduf) VALUES(5, 'São Paulo', 3);
INSERT INTO municipio(idmunicipio, nome, iduf) VALUES(6, 'RIo de Janeiro', 6);
INSERT INTO municipio(idmunicipio, nome, iduf) VALUES(7, 'Uberlândia', 4);
INSERT INTO municipio(idmunicipio, nome, iduf) VALUES(8, 'Porto Alegre', 5);
INSERT INTO municipio(idmunicipio, nome, iduf) VALUES(9, 'União da Votória', 2);
SELECT * FROM municipio;

SELECT * FROM cliente;
ALTER TABLE cliente DROP municipio;
ALTER TABLE cliente DROP uf;
ALTER TABLE cliente ADD idmunicipio INTEGER;
ALTER TABLE cliente ADD CONSTRAINT fk_cliente_municipio FOREIGN KEY (idmunicipio) REFERENCES municipio (idmunicipio);

UPDATE cliente SET idmunicipio = 1 WHERE idcliente IN (1, 2, 10, 11);
UPDATE cliente SET idmunicipio = 2 WHERE idcliente IN (3, 12);
UPDATE cliente SET idmunicipio = 3 WHERE idcliente = 4;
UPDATE cliente SET idmunicipio = 4 WHERE idcliente IN (5);
UPDATE cliente SET idmunicipio = 5 WHERE idcliente IN (6, 13);
UPDATE cliente SET idmunicipio = 6 WHERE idcliente IN (7);
UPDATE cliente SET idmunicipio = 7 WHERE idcliente IN (8);
UPDATE cliente SET idmunicipio = 8 WHERE idcliente IN (9);
UPDATE cliente SET idmunicipio = 9 WHERE idcliente IN (14, 15);
SELECT * FROM cliente;

/*Exercícios Chaves Estrangeiras III*/
CREATE TABLE fornecedor(
	idfornecedor INTEGER NOT NULL,
	nome VARCHAR(50) NOT NULL,
	
	CONSTRAINT pk_idfornecedor PRIMARY KEY (idfornecedor),
	CONSTRAINT unique_nome_fornecedor UNIQUE (nome)
);

INSERT INTO fornecedor(idfornecedor, nome) VALUES (1, 'Cap. Computadores');
INSERT INTO fornecedor(idfornecedor, nome) VALUES (2, 'AA. Computadores');
INSERT INTO fornecedor(idfornecedor, nome) VALUES (3, 'BB. Máquinas');
SELECT * FROM fornecedor;

CREATE TABLE vendedor(
	idvendedor INTEGER NOT NULL,
	nome VARCHAR(50) NOT NULL,
	
	CONSTRAINT pk_idvendedor PRIMARY KEY (idvendedor),
	CONSTRAINT unique_nome_vendedor UNIQUE (nome)
);

INSERT INTO vendedor(idvendedor, nome) VALUES (1, 'André');
INSERT INTO vendedor(idvendedor, nome) VALUES (2, 'Alisson');
INSERT INTO vendedor(idvendedor, nome) VALUES (3, 'José');
INSERT INTO vendedor(idvendedor, nome) VALUES (4, 'Ailton');
INSERT INTO vendedor(idvendedor, nome) VALUES (5, 'Maria');
INSERT INTO vendedor(idvendedor, nome) VALUES (6, 'Suelem');
INSERT INTO vendedor(idvendedor, nome) VALUES (7, 'Aline');
INSERT INTO vendedor(idvendedor, nome) VALUES (8, 'Silvana');
SELECT * FROM vendedor;

CREATE TABLE transportadora(
	idtransportadora INTEGER NOT NULL,
	idmunicipio INTEGER,
	nome VARCHAR(50) NOT NULL,
	logradouro VARCHAR(50),
	numero VARCHAR(10),
	
	CONSTRAINT pk_idtransportadora PRIMARY KEY (idtransportadora),
	CONSTRAINT fk_idmunicipio FOREIGN KEY (idmunicipio) REFERENCES municipio(idmunicipio),
	CONSTRAINT unique_nome_transportadora UNIQUE (nome)
);
SELECT * FROM municipio;
INSERT INTO transportadora(idtransportadora, idmunicipio, nome, logradouro, numero)
VALUES(1, 9, 'BS. Transportes', 'Rua das Limas', '01');
INSERT INTO transportadora(idtransportadora, idmunicipio, nome)
VALUES(2, 5, 'União Transportes');
SELECT * FROM transportadora;

CREATE TABLE produto(
	idproduto INTEGER NOT NULL,
	idfornecedor INTEGER NOT NULL,
	nome VARCHAR(50) NOT NULL,
	valor FLOAT NOT NULL,
	
	CONSTRAINT pk_idproduto PRIMARY KEY (idproduto),
	CONSTRAINT fk_idfornecedor FOREIGN KEY (idfornecedor) REFERENCES fornecedor(idfornecedor),
	CONSTRAINT unique_nome_produto UNIQUE (nome)
);

INSERT INTO produto(idproduto, idfornecedor, nome, valor)
VALUES(1, 1, 'Microcomputador', 800);
INSERT INTO produto(idproduto, idfornecedor, nome, valor)
VALUES(2, 1, 'Monitor', 500);
INSERT INTO produto(idproduto, idfornecedor, nome, valor)
VALUES(3, 2, 'Placa mãe', 200);
INSERT INTO produto(idproduto, idfornecedor, nome, valor)
VALUES(4, 2, 'HD', 150);
INSERT INTO produto(idproduto, idfornecedor, nome, valor)
VALUES(5, 2, 'Placa de vídeo', 200);
INSERT INTO produto(idproduto, idfornecedor, nome, valor)
VALUES(6, 3, 'Memória RAM', 100);
INSERT INTO produto(idproduto, idfornecedor, nome, valor)
VALUES(7, 1, 'Gabinete', 35);
SELECT * FROM produto;

/*=== Tabela de Pedidos 1 ============================================*/
create table pedido (
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer,
	idvendedor integer not null,
	data_pedido date not null,
	valor float not null,
	
	constraint pk_pdd_idpedido primary key (idpedido),
	constraint fk_pdd_idcliente foreign key (idcliente) references cliente (idcliente),
	constraint fk_pdd_idtransportadora foreign key (idtransportadora) references transportadora (idtransportadora),
	constraint fk_pdd_idvendedor foreign key (idvendedor) references vendedor (idvendedor)	
);

SELECT * FROM cliente;
SELECT * FROM transportadora;
UPDATE cliente SET nome = 'Manoel' WHERE idcliente = 1;
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (1, '2008-04-01', 1300, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (2, '2008-04-01', 500, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (3, '2008-04-02', 300, 11, 2, 5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (4,'2008-04-05',1000,8,1,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (5,'2008-04-06',200,9,2,6);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (6,'2008-04-06',1985,10,1,6);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (7,'2008-04-06',800,3,1,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor) values (8, '2008-04-06', 175, 3, null, 7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (9,'2008-04-07',1300,12,null,8);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (10,'2008-04-10',200,6,1,8);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (11,'2008-04-15',300,15,2,1);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (12,'2008-04-20',300,15,2,5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (13,'2008-04-20',350,9,1 ,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (14,'2008-04-23',300,2,1,5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (15,'2008-04-25',200,11,null,5);
select * from pedido;

/*----------------- Tabela de Pedidos 2 ----------------------------------*/
CREATE TABLE pedido_produto(
	idpedido INTEGER NOT NULL,
	idproduto INTEGER NOT NULL,
	quantidade INTEGER NOT NULL,
	valor_unitario FLOAT NOT NULL,
	
	CONSTRAINT pk_pdp_idpedidoproduto PRIMARY KEY(idpedido, idproduto),
	CONSTRAINT fk_pdp_idpedido FOREIGN KEY (idpedido) REFERENCES pedido(idpedido),
	CONSTRAINT fk_pdp_idproduto FOREIGN KEY (idproduto) REFERENCES produto(idproduto)
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(1, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(1, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(2, 2, 1, 500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (3,4,2,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (5,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,1,2,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,7,1,35);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,4,1,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (7,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (8,7,5,35);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9,2,1,500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (10,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11,6,1,100);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (12,2,1,500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13,4,1,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (14,6,3,100);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (15,3,1,200);
SELECT * FROM pedido_produto;

/*------------------ EXERCÍCIOS - CONSULTAS SIMPLES ------------------------------------------*/
--1. Somente o nome de todos os vendedores em ordem alfabética.
SELECT nome FROM vendedor ORDER BY nome ASC;

--2. Os produtos que o preço seja maior que R$200,00, em ordem crescente pelo preço.
SELECT nome, valor FROM produto WHERE valor > 200 ORDER BY valor;

--3. O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.
SELECT nome, valor, valor + (valor + 10)/100 as Reajuste FROM produto ORDER BY nome;

--4. Os municípios do Rio Grande do Sul.
SELECT * FROM municipio WHERE iduf = 5;
SELECT * FROM uf;

--5. Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.
SELECT * FROM pedido WHERE data_pedido BETWEEN '2008-04-10' AND '2008-04-25' ORDER BY valor;

--6. Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00.
SELECT * FROM pedido WHERE valor BETWEEN 100 AND 500;

--7. Os pedidos que o valor não esteja entre R$100,00 e R$500,00.
SELECT * FROM pedido WHERE valor NOT BETWEEN 100 AND 500;

--8. Os pedidos do vendedor André ordenado pelo valor em ordem decrescente.
SELECT * FROM vendedor;
SELECT * FROM pedido WHERE idvendedor = 1 ORDER BY valor DESC;

--9. Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.
SELECT * FROM cliente;
SELECT * FROM pedido WHERE idcliente = 1 ORDER BY valor;

--10. Os pedidos da cliente Jéssica que foram feitos pelo vendedor André.
SELECT * FROM pedido WHERE idcliente = 15 AND idvendedor = 1;

--11. Os pedidos que foram transportados pela transportadora União Transportes.
SELECT * FROM transportadora;
SELECT * FROM transportadora WHERE idtransportadora = 2;

--12. Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.
SELECT * FROM vendedor;
SELECT * FROM pedido WHERE idvendedor = 5 OR idvendedor = 7; 

--13. Os clientes que moram em União da Vitória ou Porto União.
SELECT * FROM municipio;
SELECT * FROM cliente WHERE idmunicipio = 1 OR idmunicipio = 9;

--14. Os clientes que não moram em União da Vitória e nem em Porto União.
SELECT * FROM cliente WHERE idmunicipio <> 1 AND idmunicipio <> 9;
 
--15. Os clientes que não informaram o logradouro.
SELECT * FROM cliente WHERE logradouro IS NULL;

--16. Os clientes que moram em avenidas.
SELECT * FROM cliente WHERE logradouro LIKE 'Av%';

--17. Os vendedores que o nome começa com a letra S.
SELECT * FROM vendedor WHERE nome LIKE 'S%';

--18. Os vendedores que o nome termina com a letra A.
SELECT * FROM vendedor WHERE nome LIKE '%a%';

--19. Os vendedores que o nome não começa com a letra A.
SELECT * FROM vendedor WHERE nome NOT LIKE 'A%';

--20. Os municípios que começam com a letra P e são de Santa Catarina.
SELECT * FROM uf;
SELECT * FROM municipio WHERE nome LIKE 'P%' AND iduf = 1;

--21.  As transportadoras que informaram o endereço.
SELECT * FROM transportadora WHERE logradouro IS NOT NULL;

--22. Os itens do pedido 01.
SELECT * FROM pedido_produto WHERE idpedido = 1;

--23. Os itens do pedido 06 ou do pedido 10.
SELECT * FROM pedido_produto WHERE idpedido = 6 OR idpedido = 10;

/*----------- Funções agregadas -----------------------------------------*/

SELECT AVG(valor) FROM pedido; --Média
SELECT COUNT(idmunicipio) FROM municipio; --Quantidade
SELECT COUNT(*) FROM municipio;

SELECT * FROM transportadora;
SELECT COUNT(logradouro) FROM transportadora;
SELECT COUNT(idtransportadora) FROM transportadora;

SELECT * FROM municipio;
SELECT COUNT(idmunicipio) FROM municipio WHERE iduf = 2;

SELECT MAX(valor), MIN(valor) FROM edido;
SELECT SUM(valor) FROM pedido;

SELECT idcliente, valor FROM pedido;
SELECT idcliente, SUM(valor) FROM pedido GROUP BY idcliente;
SELECT idcliente, SUM(valor) FROM pedido GROUP BY idcliente HAVING SUM(valor) > 500;

/*------------------- EXERCÍCIOS - FUNÇÕES AGREGADAS ------------------------------------*/
--1.A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.
SELECT idvendedor, AVG(valor) FROM pedido GROUP BY idvendedor HAVING SUM(valor) > 500;

--2. Os vendedores que venderam mais que R$ 1500,00.
SELECT idvendedor, AVG(valor) FROM pedido GROUP BY idvendedor HAVING SUM(valor) > 1500;

--3. O somatório das vendas de cada vendedor.
SELECT idvendedor, SUM(valor) FROM pedido GROUP BY idvendedor;

--4. A quantidade de municípios.
SELECT COUNT(idmunicipio) FROM municipio;

--5. A quantidade de municípios que são do Paraná ou de Santa Catarina.
SELECT * FROM municipio;
SELECT COUNT(idmunicipio) FROM municipio WHERE iduf = 1 OR iduf = 2;

--6. A quantidade de municípios por estado.
SELECT iduf, COUNT(idmunicipio) FROM municipio GROUP BY iduf;

--7. A quantidade de clientes que informaram o logradouro.
SELECT COUNT(idcliente) FROM cliente WHERE logradouro IS NULL;

--8. A quantidade de clientes por município.
SELECT idmunicipio, COUNT(idcliente) FROM cliente GROUP BY idmunicipio;

--9. A quantidade de fornecedores.
SELECT COUNT(idfornecedor) FROM fornecedor;

--10. A quantidade de produtos por fornecedor.
SELECT idfornecedor, COUNT(idproduto) FROM produto GROUP BY idfornecedor;

--11. A média de preços dos produtos do fornecedor Cap. Computadores.
SELECT * FROM fornecedor;
SELECT AVG(valor) FROM produto WHERE idfornecedor = 1;

--12. O somatório dos preços de todos os produtos.
SELECT SUM(valor) FROM produto;

--13. O nome do produto e o preço somente do produto mais caro.
SELECT nome, valor, produto FROM produto ORDER BY valor DESC LIMIT 1;

--14. O nome do produto e o preço somente do produto mais barato.
SELECT nome, valor, produto FROM produto ORDER BY valor ASC LIMIT 1;

--15. A média de preço de todos os produtos.
SELECT AVG(valor) FROM produto;

--16. A quantidade de transportadoras.
SELECT COUNT(idtransportadora) FROM transportadora;

--17. A média do valor de todos os pedidos.
SELECT AVG(valor) FROM pedido;

--18. O somatório do valor do pedido agrupado por cliente.
SELECT idcliente, SUM(valor) FROM pedido GROUP BY idcliente;

--19. O somatório do valor do pedido agrupado por vendedor.
SELECT idvendedor, SUM(valor) FROM pedido GROUP BY idvendedor;

--20. O somatório do valor do pedido agrupado por transportadora.
SELECT idtransportadora, SUM(valor) FROM pedido GROUP BY idtransportadora;

--21. O somatório do valor do pedido agrupado pela data.
SELECT data_pedido, SUM(VALOR) FROM pedido GROUP BY data_pedido;

--22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.
SELECT idcliente, idvendedor, idtransportadora, SUM(valor) FROM pedido GROUP BY idcliente, idvendedor, idtransportadora;

--23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.
SELECT SUM(valor) FROM pedido WHERE data_pedido BETWEEN '2008-04-01' AND '2009-12-10' AND valor > 200;

--24. A média do valor do pedido do vendedor André.
SELECT * FROM vendedor;
SELECT AVG(valor) FROM pedido WHERE idpedido = 1;

--25. A média do valor do pedido da cliente Jéssica.
SELECT * FROM cliente;
SELECT AVG(valor) FROM pedido WhERE idcliente = 15;

--26. A quantidade de pedidos transportados pela transportadora BS. Transportes.
SELECT * FROM transportadora;
SELECT COUNT(idpedido) FROM pedido WHERE idtransportadora = 1;

--27. A quantidade de pedidos agrupados por vendedor.
SELECT idvendedor, COUNT(idpedido) FROM pedido GROUP BY idvendedor;

--28. A quantidade de pedidos agrupados por cliente.
SELECT COUNT(idpedido) FROM pedido GROUP BY idcliente;

--29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.
SELECT COUNT(idpedido) FROM pedido WHERE data_pedido BETWEEN '2008-04-15' AND '2008-04-25';

--30. A quantidade de pedidos que o valor seja maior que R$ 1.000,00.
SELECT SUM(valor) FROM pedido WHERE valor > 1000;

--31. A quantidade de microcomputadores vendida.
SELECT * FROM produto;
SELECT SUM(quantidade) FROM pedido_produto WHERE idproduto = 1;

--32. A quantidade de produtos vendida agrupado por produto.
SELECT idproduto, COUNT(quantidade) FROM pedido_produto GROUP BY idproduto;

--33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.
SELECT idpedido, SUM(valor_unitario) FROM pedido_produto GROUP BY idpedido;

--34. A quantidade de produtos agrupados por pedido.
SELECT idpedido, SUM(quantidade) FROM pedido_produto GROUP BY idpedido;

--35. O somatório do valor total de todos os produtos do pedido.
SELECT SUM(valor_unitario) FROM pedido_produto;

--36. A média dos produtos do pedido 6.
SELECT AVG(valor_unitario) FROM pedido_produto;

--37. O valor do maior produto do pedido.
SELECT MAX(valor_unitario) FROM pedido_produto;

--38. O valor do menor produto do pedido.
SELECT MIN(valor_unitario) FROM pedido_produto;

--39. O somatório da quantidade de produtos por pedido.
SELECT idpedido,SUM(quantidade) FROM pedido_produto GROUP BY idpedido;

--40. O somatório da quantidade de todos os produtos do pedido.
SELECT SUM(valor_unitario) FROM pedido_produto;

/*----------------- Relacionamentos com Joins ------------------------------------------------*/
SELECT cln.nome,
	   prf.nome
FROM cliente AS cln
LEFT OUTER JOIN
	profissao AS prf ON cln.idprofissao = prf.idprofissao;
	
SELECT cln.nome,
	   prf.nome
FROM cliente AS cln
INNER JOIN
	profissao AS prf ON cln.idprofissao = prf.idprofissao;	
	
SELECT cln.nome,
	   prf.nome
FROM cliente AS cln
RIGHT OUTER JOIN
	profissao AS prf ON cln.idprofissao = prf.idprofissao;	
	
/*----------------- Exercícios JOIN ---------------------------------*/
--1. O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação.
SELECT cln.nome AS cliente,
	   prf.nome AS profissao,
	   ncn.nome AS nacionalidade,
	   cln.logradouro,
	   cln.numero,
	   cmp.nome AS complemento,
	   brr.nome AS bairro,
	   mcn.nome AS municipio,
	   uf.nome AS estado,
	   uf.sigla
FROM cliente AS cln
LEFT OUTER JOIN
	profissao AS prf ON cln.idprofissao = prf.idprofissao
LEFT OUTER JOIN
	nacionalidade ncn ON cln.idnacionalidade = ncn.idnacionalidade
LEFT OUTER JOIN
	complemento cmp ON cln.idcomplemento = cmp.idcomplemento
LEFT OUTER JOIN
	bairro brr ON cln.idbairro = brr.idbairro
LEFT OUTER JOIN
	municipio mcn ON cln.idmunicipio = mcn.idmunicipio
LEFT OUTER JOIN 
	uf ON mcn.iduf = uf.iduf;
	
--2. O nome do produto, o valor e o nome do fornecedor.
SELECT
	prd.nome,
	prd.valor
FROM produto prd
LEFT OUTER JOIN
	fornecedor frn ON prd.idfornecedor = frn.idfornecedor;

--3. O nome da transportadora e o município.
SELECT
	trs.nome AS transportadora,
	mnc.nome AS municipio
FROM 
	transportadora trs
LEFT OUTER JOIN
	municipio mnc ON trs.idmunicipio = mnc.idmunicipio;

--4. A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.
SELECT
	pdd.data_pedido,
	pdd.valor,
	cln.nome AS cliente,
	trn.nome AS transportadora,
	vnd.nome AS vendedor
FROM
	pedido pdd
LEFT OUTER JOIN
	cliente cln ON pdd.idcliente = cln.idcliente
LEFT OUTER JOIN
	transportadora trn ON pdd.idtransportadora = trn.idtransportadora
LEFT OUTER JOIN
	vendedor vnd ON pdd.idvendedor = vnd.idvendedor;

--5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.
SELECT 
	pdt.nome AS produto,
	pdp.quantidade,
	pdp.valor_unitario
FROM 
	pedido_produto pdp
LEFT OUTER JOIN
	produto pdt ON pdp.idproduto = pdt.idproduto;

--6. O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).
SELECT 
	cln.nome,
	pdd.data_pedido
FROM 
	cliente cln
INNER JOIN
	pedido pdd ON cln.idcliente = pdd.idcliente
ORDER BY
	cln.nome;
	
--7. O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente).
SELECT 
	cln.nome,
	pdd.data_pedido
FROM 
	cliente cln
LEFT OUTER JOIN
	pedido pdd ON cln.idcliente = pdd.idcliente
ORDER BY
	cln.nome;

--8. O nome da cidade e a quantidade de clientes que moram naquela cidade.
SELECT 	
	mnc.nome,
	COUNT(cln.idcliente)
FROM
	cliente cln
INNER JOIN
	municipio mnc ON cln.idmunicipio = mnc.idmunicipio
GROUP BY
	mnc.nome
	
--9. O nome do fornecedor e a quantidade de produtos de cada fornecedor.
SELECT 
	frn.nome AS fornecedor,
	COUNT(pdd.idproduto)
FROM 
	produto pdd
LEFT OUTER JOIN
	fornecedor frn ON pdd.idfornecedor = frn.idfornecedor
GROUP BY
	frn.nome

--10.O nome do cliente e o somatório do valor do pedido (agrupado por cliente).
SELECT 
	cln.nome AS cliente,
	SUM(pdd.valor)
FROM 
	pedido pdd
LEFT OUTER JOIN
	cliente cln ON pdd.idcliente = cln.idcliente
GROUP BY
	cln.nome

--11.O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).
SELECT
	vnd.nome AS vendedor,
	SUM(pdd.valor)
FROM
	pedido pdd
LEFT OUTER JOIN
	vendedor vnd ON pdd.idvendedor = vnd.idvendedor
GROUP BY
	vnd.nome

--12.O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).
SELECT 
	trn.nome AS transportadora,
	SUM(pdd.valor) AS total
FROM
	pedido pdd
LEFT OUTER JOIN
	transportadora trn ON pdd.idtransportadora = trn.idtransportadora
GROUP BY
	trn.nome

--13.O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).
SELECT
	cln.nome AS cliente,
	COUNT(pdd.idpedido)
FROM
	pedido pdd
LEFT OUTER JOIN
	cliente cln ON pdd.idcliente = cln.idcliente
GROUP BY
	cln.nome

--14.O nome do produto e a quantidade vendida (agrupado por produto).
SELECT
	pdt.nome AS produto,
	COUNT(pdp.quantidade)
FROM
	pedido_produto pdp
LEFT OUTER JOIN
	produto pdt ON pdp.idproduto = pdt.idproduto
GROUP BY
	pdt.nome
	
--15.A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).
SELECT
	pdd.data_pedido,
	SUM(pdp.valor_unitario) AS total
FROM
	pedido_produto pdp
LEFT OUTER JOIN
	pedido pdd ON pdp.idpedido = pdd.idpedido
GROUP BY	
	pdd.data_pedido
	
--16.A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).
SELECT
	pdd.data_pedido,
	SUM(pdp.quantidade) AS total
FROM
	pedido_produto pdp
LEFT OUTER JOIN
	pedido pdd ON pdp.idpedido = pdd.idpedido
GROUP BY	
	pdd.data_pedido

/*--------------- Comandos adicionais ---------------------------------------------------------*/
SELECT * FROM pedido;
SELECT
	data_pedido,
	EXTRACT(DAY FROM data_pedido),
	EXTRACT(MONTH FROM data_pedido),
	EXTRACT(YEAR FROM data_pedido)
FROM 
	pedido;
	
SELECT nome, SUBSTRING(nome FROM 1 FOR 5), SUBSTRING(nome, 2) FROM cliente;
SELECT nome, UPPER(nome) FROM cliente;
SELECT nome, cpf, COALESCE(cpf, 'Não informado') FROM cliente;
/*COALESCE é uma mensagem personalizada.
A função COALESCE avalia seus parâmetros em ordem e retorna o primeiro que não seja NULL.*/
SELECT 
	CASE sigla
	WHEN 'PR' THEN 'Paraná'
	WHEN 'SC' THEN 'Santa Catarina'
	ELSE 'Outros'
	END AS uf
FROM
	uf;
	
/*----------------------- Exercícios Comandos adicionais ------------------------------*/
--1. O nome do cliente e somente o mês de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
SELECT 
	nome,
	COALESCE(EXTRACT(MONTH FROM data_nascimento), 0)
FROM
	cliente;

--2. O nome do cliente e somente o nome do mês de nascimento (Janeiro, Fevereiro etc). Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
SELECT
	nome,
	CASE EXTRACT(MONTH FROM data_nascimento)
		WHEN 1 THEN 'Janeiro'
		WHEN 2 THEN 'Fevereiro'
		WHEN 3 THEN 'Março'
		WHEN 4 THEN 'Abril'
		WHEN 5 THEN 'Maio'
		WHEN 6 THEN 'Junho'
		WHEN 7 THEN 'Julho'
		WHEN 8 THEN 'Agosto'
		WHEN 9 THEN 'Setembro'
		WHEN 10 THEN 'Outubro'
		WHEN 11 THEN 'Novembro'
		WHEN 12 THEN 'Dezembro'
	ELSE 'Não informado'
	END AS mes
FROM
	cliente;

--3. O nome do cliente e somente o ano de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
SELECT 
	nome,
	COALESCE(EXTRACT(YEAR FROM data_nascimento), 0)
FROM
	cliente;
	
--4. O caractere 5 até o caractere 10 de todos os municípios.
SELECT nome, SUBSTRING(nome FROM 5 FOR 10) FROM municipio;

--5. O nome de todos os municípios em letras maiúsculas.
SELECT nome, UPPER(nome) FROM municipio;

--6. O nome do cliente e o gênero. Caso seja M mostrar “Masculino”, senão mostrar “Feminino”.
SELECT 
	nome,
	CASE genero
		WHEN 'M' THEN 'Masculino'
		WHEN 'F' THEN 'Feminino'
	END AS genero
FROM
	cliente;

--7. O nome do produto e o valor. Caso o valor seja maior do que R$ 500,00 mostrar a mensagem “Acima de 500”, caso contrário, mostrar a mensagem “Abaixo de 500”.
SELECT 
	nome,
	valor,
	CASE
		WHEN valor > 500 THEN 'Acima de 500'
		ELSE 'Abaixo de 500'
	END AS faixa
FROM
	produto;
	
/*------------------- Subconsultas --------------------------------------- */
/* - Selecionar a data do pedido e o valor onde o valor seja maior que a média dos valores de todos os pedidos.*/
SELECT
	data_pedido,
	valor
FROM
	pedido
WHERE	
	valor > (SELECT AVG(valor) FROM pedido);	

/* - Exemplo de count */
SELECT
	pdd.data_pedido,
	pdd.valor,
	(SELECT SUM(quantidade) FROM pedido_produto pdp WHERE pdp.idpedido = pdd.idpedido)
FROM	
	pedido pdd

/* - Exemplo com update */
SELECT * FROM pedido;

UPDATE pedido SET valor =  valor + (valor * 5) / 100
WHERE valor > (SELECT AVG(valor) FROM pedido);

/*---------------------- Exercícios Subconsultas ---------------------------------------------*/
--1. O nome dos clientes que moram na mesma cidade do Manoel. Não deve ser mostrado o Manoel.
SELECT 
	nome,
	idmunicipio
FROM 
	cliente
WHERE 
	idmunicipio = (SELECT idmunicipio FROM cliente WHERE nome = 'Manoel')
AND
	idcliente <> 1;

--2. A data e o valor dos pedidos que o valor do pedido seja menor que a média de todos os pedidos.
SELECT 
	data_pedido,
	valor
FROM
	pedido
WHERE
	valor < (SELECT AVG(valor) FROM pedido)

--3. A data,o valor, o cliente e o vendedor dos pedidos que possuem 2 ou mais produtos.
SELECT
	pdd.data_pedido,
	pdd.valor,
	cln.nome AS cliente,
	vnd.nome AS vendedor,
	(SELECT SUM(quantidade) FROM pedido_produto pdp WHERE pdp.idpedido = pdd.idpedido)
FROM
	pedido pdd
LEFT OUTER JOIN
	cliente cln ON pdd.idcliente = cln.idcliente
LEFT OUTER JOIN
	vendedor vnd ON pdd.idvendedor = vnd.idvendedor
	
--4. O nome dos clientes que moram na mesma cidade da transportadora BSTransportes.
SELECT
	nome,
	idmunicipio
FROM
	cliente
WHERE
	idmunicipio = (SELECT idmunicipio FROM transportadora WHERE idtransportadora = 1)

--5. O nome do cliente e o município dos clientes que estão localizados no mesmo município de qualquer uma das transportadoras.
SELECT 
	nome,
	idmunicipio
FROM
	cliente
WHERE
	idmunicipio IN (SELECT DISTINCT(idmunicipio) FROM transportadora)
	
SELECT DISTINCT(idmunicipio) FROM cliente	
	
--6. Atualizar o valor do pedido em 5% para os pedidos que o somatório 
--do valor total dos produtos daquele pedido seja maior que a média do valor total de todos os produtos de todos os pedidos.

UPDATE pedido SET  valor = valor + ((valor * 5)/100)
WHERE (SELECT SUM(pdp.valor_unitario) FROM pedido_produto pdp WHERE pdp.idpedido = idpedido)
> (SELECT AVG(valor_unitario) FROM pedido_produto)

SELECT 
	idpedido,
	(SELECT SUM(valor_unitario) FROM pedido_produto  pdp WHERE pdp.idpedido = pdd.idpedido)
FROM
	pedido pdd

SELECT AVG(valor_unitario) FROM pedido_produto

SELECT * FROM pedido_produto
SELECT * FROM pedido

--7. O nome do cliente e a quantidade de pedidos feitos pelo cliente. 
SELECT 
	cln.nome,
	(SELECT COUNT(idpedido) FROM pedido pdd WHERE pdd.idcliente = cln.idcliente)
FROM
	cliente cln
--8. Para revisar, refaça o exercício anterior (número 07) utilizando group by e mostrando somente os clientes que fizeram pelo menos um pedido.
SELECT 
	pdd.idcliente,
	COUNT(pdd.idpedido)
FROM
	pedido pdd
LEFT OUTER JOIN 
	cliente cln ON pdd.idcliente = cln.idcliente
GROUP BY
	pdd.idcliente
	
/*-------------------- Views -----------------------------------------------------------*/
CREATE VIEW cliente_profissao AS
SELECT 
	cln.nome AS cliente,
	cln.cpf,
	prf.nome AS profissao
FROM
	cliente cln
LEFT OUTER JOIN
	profissao prf ON cln.idprofissao = prf.idprofissao  
	
SELECT cliente FROM cliente_profissao	WHERE profissao = 'Professor'	

/*-------------------------- Exercícios VIEW ----------------------------------------------------*/
/*1- O nome, a profissão, a nacionalidade, o complemento, o município, a unidade de federação, 
o bairro, o CPF,o RG, a data de nascimento, o gênero (mostrar “Masculino” ou “Feminino”), 
o logradouro, o número e as observações dos clientes. */

CREATE VIEW cliente_dados AS 
SELECT
	cln.nome AS cliente,
	prf.nome AS profissao,
	ncn.nome AS nacionalidade,
	cmp.nome AS complemento,
	mnc.nome AS municipio,
	uf.nome AS unidade_federacao,
	brr.nome AS bairro,
	cln.rg,
	cln.cpf,
	cln.data_nascimento,
	CASE cln.genero
		WHEN 'M' THEN 'Masculino'
		WHEN 'F' THEN 'Feminino'
	END AS genero,
	cln.logradouro,
	cln.numero,
	cln.observacoes
FROM
	cliente cln
LEFT OUTER JOIN
	profissao prf ON cln.idprofissao = prf.idprofissao
LEFT OUTER JOIN
	nacionalidade ncn ON cln.idnacionalidade = ncn.idnacionalidade
LEFT OUTER JOIN
	complemento cmp ON cln.idcomplemento = cmp.idcomplemento
LEFT OUTER JOIN
	municipio mnc ON cln.idmunicipio = mnc.idmunicipio
LEFT OUTER JOIN
	uf ON mnc.iduf = uf.iduf
LEFT OUTER JOIN
	bairro brr ON cln.idbairro = brr.idbairro
	
SELECT * FROM cliente_dados;
	
--2. O nome do município e o nome e a sigla da unidade da federação.

CREATE VIEW municipio_uf AS
SELECT
	mnc.nome AS municipio
FROM
	municipio mnc
LEFT OUTER JOIN
	uf ON mnc.iduf = uf.iduf

SELECT * FROM municipio_uf;

--3. O nome do produto, o valor e o nome do fornecedor dos produtos.

CREATE VIEW produto_fornecedor AS 
SELECT 
	prd.nome AS produto,
	prd.valor,
	frn.nome AS fornecedor
FROM
	produto prd
LEFT OUTER JOIN
	fornecedor frn ON prd.idfornecedor = frn.idfornecedor
	
SELECT * FROM produto_fornecedor;

--4. O nome da transportadora, o logradouro, o número, o nome da unidade de federação e a sigla da unidade de federação das transportadoras.

CREATE VIEW transportadora_uf AS
SELECT
	trn.nome AS transportadora,
	trn.logradouro,
	trn.numero,
	uf.nome AS unidade_federacao,
	uf.sigla
FROM 
	transportadora trn
LEFT OUTER JOIN
	municipio mnc ON trn.idmunicipio = mnc.idmunicipio
LEFT OUTER JOIN
	uf ON mnc.iduf = uf.iduf
SELECT * FROM transportadora_uf;	

--5. A data do pedido, o valor, o nome da transportadora, o nome do cliente e o nome do vendedor dos pedidos.

CREATE VIEW dados_pedido AS
SELECT
	pdd.data_pedido,
	pdd.valor,
	trn.nome AS transportadora,
	cln.nome AS cliente,
	vnd.nome AS vendedor
FROM
	pedido pdd
LEFT OUTER JOIN	
	transportadora trn ON pdd.idtransportadora = trn.idtransportadora
LEFT OUTER JOIN
	cliente cln ON pdd.idcliente = cln.idcliente
LEFT OUTER JOIN
	vendedor vnd ON pdd.idvendedor = vnd.idvendedor 
	
SELECT * FROM cliente_dados;	

--6. O nome do produto, a quantidade, o valor unitário e o valor total dos produtos do pedido.

CREATE VIEW produto_pedido AS
SELECT 
	prd.nome AS produto,
	pdp.quantidade,
	pdp.valor_unitario
FROM 
	pedido_produto pdp
LEFT OUTER JOIN
	produto prd ON pdp.idproduto = prd.idproduto
	
SELECT * FROM produto_pedido;	
	
/*--------------------------- Autoincremento ------------------------------------------*/
CREATE TABLE exemplo(
	idexemplo SERIAL NOT NULL,
	 nome VARCHAR(50) NOT NULL,
	
	CONSTRAINT pk_exemplo_idexemplo PRIMARY KEY (idexemplo)
);

INSERT INTO exemplo(nome) VALUES ('Exemplo 1');
INSERT INTO exemplo(nome) VALUES ('Exemplo 2');
INSERT INTO exemplo(nome) VALUES ('Exemplo 3');
INSERT INTO exemplo(nome) VALUES ('Exemplo 4');
INSERT INTO exemplo(nome) VALUES ('Exemplo 5');

SELECT * FROM exemplo;

SELECT MAX(idbairro) + 1 FROM bairro;
CREATE SEQUENCE bairro_id_seq MINVALUE 5;
ALTER TABLE bairro ALTER idbairro SET DEFAULT  nextval('bairro_id_seq');
ALTER SEQUENCE bairro_id_seq OWNED BY bairro.idbairro;
INSERT INTO bairro (nome) VALUES ('Teste 1');
INSERT INTO bairro (nome) VALUES ('Teste 2');
SELECT * FROM bairro;
 
/*------------------------------- Exercícios Autoincremento -----------------------------------*/
/* 1. Criar sequências para todas as outras tabelas da base de dados
a. Cliente
b. Complemento
c. Fornecedor
d. Município
e. Nacionalidade
f. Pedido
g. Pedido produto (verificar se é necessário)
h. Profissão
i. Transportadora
j. UF
k. Vendedor
*/

--a. Cliente
SELECT MAX(idcliente) + 1 FROM cliente
CREATE SEQUENCE cliente_id_seq MINVALUE 18
ALTER TABLE cliente ALTER idcliente SET DEFAULT nextval('cliente_id_seq')
ALTER SEQUENCE cliente_id_seq OWNED BY cliente.idcliente
INSERT INTO cliente (nome) VALUES ('Teste sequência');
SELECT * FROM cliente;

--b. Complemento
SELECT MAX(idcomplemento) + 1 FROM complemento
CREATE SEQUENCE complemento_id_seq MINVALUE 3
ALTER TABLE complemento ALTER idcomplemento SET DEFAULT nextval('complemento_id_seq')
INSERT INTO complemento (nome) VALUES ('Teste sequência');
SELECT * FROM complemento;

--c. Fornecedor
SELECT MAX(idfornecedor) + 1 FROM fornecedor
CREATE SEQUENCE fornecedor_id_seq MINVALUE 4
ALTER TABLE fornecedor ALTER idfornecedor SET DEFAULT nextval('fornecedor_id_seq')
ALTER SEQUENCE fornecedor_id_seq OWNED BY fornecedor.idfornecedor
INSERT INTO fornecedor (nome) VALUES ('Teste sequência');
SELECT * FROM fornecedor;

--d. Municipio
SELECT MAX(idmunicipio) + 1 FROM municipio
CREATE SEQUENCE municipio_id_seq MINVALUE 10
ALTER TABLE municipio ALTER idmunicipio SET DEFAULT nextval('municipio_id_seq')
ALTER SEQUENCE municipio_id_seq OWNED BY municipio.idmunicipio
INSERT INTO municipio (nome, iduf) VALUES ('Teste sequência', 1);
SELECT * FROM municipio;

--e. Nacionalidade
SELECT MAX(idnacionalidade) + 1 FROM nacionalidade
CREATE SEQUENCE nacionalidade_id_seq MINVALUE 5
ALTER TABLE nacionalidade ALTER idnacionalidade SET DEFAULT nextval('nacionalidade_id_seq')
ALTER SEQUENCE nacionalidade_id_seq OWNED BY nacionalidade.idnacionalidade
INSERT INTO nacionalidade (nome) VALUES ('Teste sequência');
SELECT * FROM nacionalidade;

--f. Pedido
SELECT MAX(idpedido) + 1 FROM pedido
CREATE SEQUENCE pedido_id_seq MINVALUE 16
ALTER TABLE pedido ALTER idpedido SET DEFAULT nextval('pedido_id_seq')
ALTER SEQUENCE pedido_id_seq OWNED BY pedido.idpedido
INSERT INTO pedido (data_pedido, valor, idcliente, idvendedor)
VALUES (CURRENT_DATE, 130, 1, 1);
SELECT * FROM pedido;

--g. Pedido produto (verificar se é necessário) Não é necessário uma sequência por conta do PK e FK
SELECT MAX(idproduto) + 1 FROM produto
CREATE SEQUENCE produto_id_seq MINVALUE 8
ALTER TABLE produto ALTER idproduto SET DEFAULT nextval('produto_id_seq')
ALTER SEQUENCE produto_id_seq OWNED BY produto.idproduto
INSERT INTO produto (nome, idfornecedor) VALUES ('Teste default 1', 1);
SELECT * FROM produto;

--h. Profissão
SELECT MAX(idprofissao) + 1 FROM profissao
CREATE SEQUENCE profissao_id_seq MINVALUE 11
ALTER TABLE profissao ALTER idprofissao SET DEFAULT nextval('profissao_id_seq')
ALTER SEQUENCE profissao_id_seq OWNED BY profissao.idprofissao
INSERT INTO profissao (nome) VALUES ('Teste sequência')
SELECT * FROM profissao

--i. Transportadora
SELECT MAX(idtransportadora) + 1 FROM transportadora
CREATE SEQUENCE transportadora_id_seq MINVALUE 3
ALTER TABLE transportadora ALTER idtransportadora SET DEFAULT nextval('transportadora_id_seq')
ALTER SEQUENCE transportadora_id_seq OWNED BY transportadora.idtransportadora
INSERT INTO transportadora (nome) VALUES ('Teste sequência')
SELECT * FROM transportadora

--j. UF
SELECT MAX(iduf) + 1 FROM uf
CREATE SEQUENCE uf_id_seq MINVALUE 7
ALTER TABLE uf ALTER iduf SET DEFAULT nextval('uf_id_seq')
ALTER SEQUENCE uf_id_seq OWNED BY uf.iduf
INSERT INTO uf (nome, sigla) VALUES ('Teste sequência', 'TE')
SELECT * FROM uf

--k. Vendedor
SELECT MAX(idvendedor) + 1 FROM vendedor
CREATE SEQUENCE vendedor_id_seq MINVALUE 9
ALTER TABLE vendedor ALTER idvendedor SET DEFAULT nextval('vendedor_id_seq')
ALTER SEQUENCE vendedor_id_seq OWNED BY vendedor.idvendedor
INSERT INTO vendedor (nome) VALUES ('Teste sequência')
SELECT * FROM vendedor

/*----------------------------------- Campos default ------------------------------------------*/
ALTER TABLE pedido ALTER COLUMN data_pedido SET DEFAULT CURRENT_DATE;
ALTER TABLE pedido ALTER COLUMN valor SET DEFAULT 0;
INSERT INTO pedido (idcliente, idvendedor) VALUES (1,1)
SELECT * FROM pedido

/*------------------------------------ Exercícios - Campos default --------------------------------*/

--1. Adicione valores default na tabela de produtos do pedido
--a. Quantidade com o valor 1
ALTER TABLE pedido_produto ALTER COLUMN quantidade SET DEFAULT 1;	
	
--b. Valor unitário com o valor 0
ALTER TABLE pedido_produto ALTER COLUMN valor_unitario SET DEFAULT 0;

INSERT INTO pedido_produto(idpedido, idproduto) VALUES (1, 3);
INSERT INTO pedido_produto(idpedido, idproduto, quantidade, valor_unitario)
VALUES (1, 4, 5, 100);
SELECT * FROM pedido_produto;

--2. Adicione valor default na tabela de produtos
--a. Valor com o valor 0
ALTER TABLE produto ALTER COLUMN valor SET DEFAULT 0;	

INSERT INTO produto(nome, idfornecedor) VALUES('Teste default 1', 1);
INSERT INTO produto (nome, idfornecedor, valor) VALUES ('Teste default 1', 1, 50);
SELECT * FROM produto;

/*-------------------------------------- Índices -------------------------------------------------*/
CREATE INDEX idx_cln_nome ON cliente (nome);

/*---------------------------------------- Exercícios Índices ------------------------------------*/
--1. Adicione índices nas seguintes tabelas e campos
-- a. Pedido – data do pedido
CREATE INDEX idx_pdd_data_pedido ON pedido (data_pedido);

-- b. Produto – nome
CREATE INDEX idx_pdr_nome ON produto (nome);

/*------------------- Tópicos Avançadps --------------------------------------------------------*/
-- Funções
SELECT  valor, concat('RS ', round(CAST(valor AS NUMERIC), 2)) FROM pedido;

CREATE FUNCTION formata_moeda(valor FLOAT) RETURNS VARCHAR(20) LANGUAGE plpgsql AS
$$
BEGIN
	RETURN concat('RS ', round(CAST(valor AS NUMERIC), 2));
END;
$$;

SELECT valor, formata_moeda(valor) FROM pedido;
SELECT valor, formata_moeda(valor) FROM produto;

CREATE FUNCTION get_nome_by_id(idc INTEGER) RETURNS VARCHAR(50) LANGUAGE plpgsql AS
$$
DECLARE r VARCHAR(50);
BEGIN
	SELECT nome INTO r FROM cliente WHERE idcliente = idc;
	RETURN r;
END;
$$;

SELECT data_pedido, valor, idcliente, get_nome_by_id(idcliente) FROM pedido;

--Exercícios - Funções

--1. Crie uma função que receba como parâmetro o ID do pedido e retorne o valor total deste pedido

CREATE OR REPLACE FUNCTION get_valor_pedido(idpdd INTEGER) RETURNS VARCHAR(20) LANGUAGE plpgsql AS
$$
BEGIN
	RETURN (SELECT formata_moeda(pdd.valor) FROM pedido pdd WHERE pdd.idpedido = idpdd);
END;
$$;

SELECT get_valor_pedido(idpedido) FROM pedido;

--2. Crie uma função chamada “maior”, que quando executada retorne o pedido com o maior valor

SELECT idpedido FROM pedido WHERE valor = (SELECT MAX(valor) FROM pedido)
CREATE OR REPLACE FUNCTION get_maior_pedido() RETURNS INTEGER LANGUAGE plpgsql AS
$$
BEGIN
	RETURN (SELECT idpedido FROM pedido WHERE valor = (SELECT MAX(valor) FROM pedido));
END;
$$;

SELECT get_maior_pedido() FROM pedido;

--Stored procedures

CREATE PROCEDURE insere_bairro(nome_bairro VARCHAR(30)) LANGUAGE SQL AS
$$
	INSERT INTO bairro(nome) VALUES (nome_bairro);
$$;

CALL insere_bairro('Teste procedure')
SELECT * FROM bairro

--Exercícios
/* 1. Crie uma stored procedure que receba como parâmetro o ID do produto e o percentual de aumento, 
e reajuste o preço somente deste produto de acordo com o valor passado como parâmetro. */

CREATE OR REPLACE PROCEDURE reajusta_produto(idp INTEGER, percentual FLOAT) LANGUAGE SQL AS
$$
	UPDATE produto SET valor = valor + ((valor * percentual)/100) WHERE idproduto = idp;
$$;
SELECT * FROM produto;
CALL reajusta_produto(1, 10)

/* 2. Crie uma stored procedure que receba como parâmetro o ID do produto e
exclua da base de dados somente o produto com o ID correspondente. */

CREATE OR REPLACE PROCEDURE apagar_produto(idp INTEGER) LANGUAGE SQL AS
$$
	DELETE FROM produto WHERE idproduto = idp;
$$;

CALL apagar_produto(9);
SELECT * FROM produto;

-- Triggers
CREATE TABLE bairro_auditoria(
	idbairro INTEGER NOT NULL,
	data_criacao TIMESTAMP NOT NULL
);

CREATE OR REPLACE FUNCTION bairro_log() RETURNS TRIGGER LANGUAGE plpgsql AS
$$
BEGIN
	-- OLD 4 -> NEW 6
	INSERT INTO bairro_auditoria(idbairro, data_criacao) VALUES (NEW.idbairro, CURRENT_TIMESTAMP);
	RETURN NEW;
END;
$$;

CREATE OR REPLACE TRIGGER log_bairro_trigger AFTER INSERT ON bairro FOR EACH ROW EXECUTE PROCEDURE bairro_log(); 

CALL insere_bairro('Teste 10');
CALL insere_bairro('Teste 20');
CALL insere_bairro('Teste 30');
SELECT * FROM bairro;
SELECT * FROM bairro_auditoria;

--Exercícios Triggers
--1. Crie uma tabela chamada PEDIDOS_APAGADOS

CREATE TABLE pedidos_apagados(
	idpedido INTEGER NOT NULL,
	idcliente INTEGER NOT NULL,
	idtransportadora INTEGER NOT NULL,
	idvendedor INTEGER NOT NULL,
	data_pedido DATE NOT NULL,
	data_apagado DATE NOT NULL
);

ALTER TABLE pedidos_apagados ALTER COLUMN data_apagado TYPE TIMESTAMP

--2. Faça uma trigger que quando um pedido for apagado, 
--todos os seus dados devem ser copiados para a tabela PEDIDOS_APAGADOS.

CREATE OR REPLACE FUNCTION pedido_log() RETURNS TRIGGER LANGUAGE plpgsql AS
$$
BEGIN
	INSERT INTO pedidos_apagados(idpedido, idcliente. idtransportadora, idvendedor, data_pedido, valor, data_apagado)
	VALUES(OLD.idpedido, OLD.idlciente, OLD.idtransportadora, OLD.idvendedor, OLD.valor, CURRENT_TIMESTAMP);
	RETURN OLD;
END;
$$;

CREATE OR REPLACE TRIGGER log_pedido_trigger BEFORE DELETE ON pedido FOR EACH ROW EXECUTE PROCEDURE pedido_log(); 

SELECT * FROM pedido WHERE idpedido NOT IN (SELECT idpedido FROM pedido_produto);

DELETE FROM pedido WHERE idpedido = 16
SELECT * FROM pedidos_apagados;

--Domínios 

-- Ids
CREATE DOMAIN idcurso AS SMALLINT;
CREATE DOMAIN idmedio AS INTEGER;
CREATE DOMAIN idlongo AS BIGINT;

-- Caracteres
CREATE DOMAIN sigla AS CHAR(3);
CREATE DOMAIN codigo AS VARCHAR(10);
CREATE DOMAIN nome_curto AS VARCHAR(15);
CREATE DOMAIN nome_medio AS VARCHAR(50);
CREATE DOMAIN nome_longo AS VARCHAR(70);
CREATE DOMAIN documento AS VARCHAR(15);	
CREATE DOMAIN tipo AS CHAR(1);
CREATE DOMAIN texto AS TEXT;

-- Data e hora
CREATE DOMAIN DATA AS DATE;
CREATE DOMAIN horas AS TIME;
CREATE DOMAIN data_hora TIMESTAMP;

-- Numéricos
CREATE DOMAIN moeda AS NUMERIC(10,2);
CREATE DOMAIN float_curto AS NUMERIC(6,2);
CREATE DOMAIN float_medio AS NUMERIC(10,2);
CREATE DOMAIN float_longo AS NUMERIC(15,2);
CREATE DOMAIN quantidade AS SMALLINT;

ALTER TABLE bairro ALTER COLUMN nome TYPE nome_medio;

ALTER TABLE bairro_auditoria ALTER COLUMN data_criacao TYPE data_hora;

DROP VIEW cliente_profissao
DROP VIEW dados_pedido

ALTER TABLE cliente ALTER COLUMN nome TYPE nome_longo;
ALTER TABLE cliente ALTER COLUMN cpf TYPE documento;
ALTER TABLE cliente ALTER COLUMN rg TYPE documento;
ALTER TABLE cliente ALTER COLUMN data_nascimento TYPE DATA;
ALTER TABLE cliente ALTER COLUMN genero TYPE tipo;
ALTER TABLE cliente ALTER COLUMN logradouro TYPE nome_longo;
ALTER TABLE cliente ALTER COLUMN numero TYPE nome_curto;
ALTER TABLE cliente ALTER COLUMN idprofissao TYPE idmedio;
ALTER TABLE cliente ALTER COLUMN idnacionalidade TYPE idmedio;
ALTER TABLE cliente ALTER COLUMN idbairro TYPE idmedio;
ALTER TABLE cliente ALTER COLUMN idcomplemento TYPE idmedio;

ALTER TABLE complemento ALTER COLUMN nome TYPE nome_medio;

DROP VIEW produto_fornecedor;
ALTER TABLE fornecedor ALTER COLUMN nome TYPE nome_medio;

DROP VIEW municipio_uf;
ALTER TABLE municipio ALTER COLUMN nome TYPE nome_medio;

DROP VIEW transportadora_uf;
ALTER TABLE municipio ALTER COLUMN iduf TYPE idmedio;

ALTER TABLE nacionalidade ALTER COLUMN nome TYPE nome_medio;

ALTER TABLE pedido ALTER COLUMN idpedido TYPE BIGINT;
ALTER TABLE pedido ALTER COLUMN idcliente TYPE idmedio;
ALTER TABLE pedido ALTER COLUMN idtransportadora TYPE idmedio;
ALTER TABLE pedido ALTER COLUMN idvendedor TYPE idmedio;
ALTER TABLE pedido ALTER COLUMN data_pedido TYPE DATA;
ALTER TABLE pedido ALTER COLUMN valor TYPE moeda;

DROP VIEW produto_pedido;
ALTER TABLE pedido_produto ALTER COLUMN idpedido TYPE idlongo;
ALTER TABLE pedido_produto ALTER COLUMN idproduto TYPE idmedio;
ALTER TABLE pedido_produto ALTER COLUMN quantidade TYPE quantidade;
ALTER TABLE pedido_produto ALTER COLUMN valor_unitario TYPE moeda;

ALTER TABLE pedidos_apagados ALTER COLUMN idpedido TYPE idlongo;
ALTER TABLE pedidos_apagados ALTER COLUMN idcliente TYPE idmedio;
ALTER TABLE pedidos_apagados ALTER COLUMN idtransportadora TYPE idmedio;
ALTER TABLE pedidos_apagados ALTER COLUMN idvendedor TYPE idmedio;
ALTER TABLE pedidos_apagados ALTER COLUMN data_pedido TYPE DATA;
ALTER TABLE pedidos_apagados ALTER COLUMN valor TYPE moeda;

ALTER TABLE produto ALTER COLUMN idfornecedor TYPE idmedio;
ALTER TABLE produto ALTER COLUMN nome TYPE nome_medio;
ALTER TABLE produto ALTER COLUMN valor TYPE moeda;

ALTER TABLE profissao ALTER COLUMN nome TYPE nome_medio;

ALTER TABLE transportadora ALTER COLUMN idmunicipio TYPE idmedio;
ALTER TABLE transportadora ALTER COLUMN nome TYPE nome_medio;
ALTER TABLE transportadora ALTER COLUMN logradouro TYPE nome_longo;
ALTER TABLE transportadora ALTER COLUMN numero TYPE nome_curto;

ALTER TABLE uf ALTER COLUMN nome TYPE nome_medio;
ALTER TABLE uf ALTER COLUMN sigla TYPE sigla;

ALTER TABLE vendedor ALTER COLUMN nome TYPE nome_medio;

-- Recriar a view

-- Usuários e permissões

CREATE ROLE gerente;
CREATE ROLE estagiario;

GRANT SELECT, INSERT, DELETE, UPDATE ON bairro, cliente, complemento, fornecedor, municipio, nacionalidade, pedido, pedido_produto, produto, profissao, transportadora, uf, vendedor TO gerente WITH GRANT OPTION;
GRANT SELECT ON cliente_dados, dados_pedido TO estagiario;
GRANT ALL ON ALL SEQUENCES IN SCHEMA PUBLIC TO gerente;

-- Revoke

CREATE ROLE maria login PASSWORD '123' IN ROLE gerente;
CREATE ROLE pedro login PASSWORD '321' IN ROLE estagiario;

-- Exercícios
--1. Crie um novo papel chamado “atendente”
CREATE ROLE atendente;

--2. Defina somente permissões para o novo papel poder selecionar e 
--incluir novos pedidos (tabelas pedido e pedido_produto). O restante do acesso deve estar bloqueado
GRANT SELECT, INSERT ON pedido, pedido_produto TO atendente WITH GRANT OPTION;
GRANT ALL ON pedido_id_seq TO atendente WITH GRANT OPTION;

--3. Crie um novo usuário associado ao novo papel
CREATE ROLE joao login PASSWORD '123' IN ROLE atendente;

--4. Realize testes para verificar se as permissões foram aplicadas corretamente

SELECT * FROM cliente;
SELECT * FROM pedido;
SELECT * FROM pedido_produto;

UPDATE pedido_produto SET quantidade = 2 WHERE idpedido = 1 AND idproduto = 1;
INSERT INTO pedido(idcliente, idvendedor) VALUES(1, 2);
SELECT * FROM pedido;

-- Transações 
CREATE TABLE conta(
	idconta SERIAL NOT NULL,
	cliente nome_medio NOT NULL,
	saldo moeda NOT NULL DEFAULT 0,
	
	CONSTRAINT pk_cnt_idconta PRIMARY KEY (idconta)
);

INSERT INTO	conta(cliente, saldo) VALUES ('Cliente 1', 1000);
INSERT INTO	conta(cliente, saldo) VALUES ('Cliente 2', 500);

SELECT * FROM conta;

UPDATE conta SET saldo = saldo - 100 WHERE idconta = 1;
UPDATE conta SET saldo = saldo + 100 WHERE idconta = 2;

BEGIN;
UPDATE conta SET saldo = saldo - 100 WHERE idconta = 1;
UPDATE conta SET saldo = saldo + 100 WHERE idconta = 2;
COMMIT;

/*-------------- Àlgebra Relacional -------------------------------------------------------------*/
--Os comandos executados durante as aulas
π hcode, name, city, country (hotel)  --π Pi
π tcode,name,country,age,gender (tourist)
π acode, aname, duration_in_minutes (activity)
π hcode, tcode, year, days, cost (stay)
π tcode, acode, year, cost (participate)
σ hcode = 'h1' (hotel) -- σ Alfa
σ year > 2001 (participate)
σ year > 2001 ∧ year ≤ 2004 (participate)
π tcode, acode σ year > 2001 ∧ year ≤ 2004 (participate)
π year, days σ days > 3 (stay)
π tcode (participate) -- t1, t2, t3
π tcode (stay) -- t1, t2, t3, t4
π tcode (participate) ∪ π tcode (stay)
π tcode (participate) ∩ π tcode (stay)
π turista←trt.name, act.aname, ano←year, custo←cost (ρ ptr participate ⟕ ptr.tcode = trt.tcode ρ trt tourist ⟕ ptr.acode = act.acode ρ act activity)
π tcode, cost (participate)
γ tcode ; sum(cost)->soma (participate)
γ tourist.name ; sum(cost)->soma (participate ⟕ participate.tcode = tourist.tcode tourist)

--Exercícios
--- 1. O nome e o país dos turistas com mais de 20 anos e do gênero feminino (project + select)
π name, country σ age > 20 ∧ gender = 'female' (tourist)

-- 2. O nome do hotel, o nome do cliente, o ano, os dias de hospedagem e custo da hospedagem (join na tabela stay)
π hotel.name, tourist.name, year, days, cost (stay ⟕ stay.hcode = hotel.hcode hotel ⟕ stay.tcode = tourist.tcode tourist)

-- 3. O somatório do custo da hospedagem agrupado pelo nome do hotel (agrupamento e join na tabela stay)
γ hotel.name ; sum(cost)->soma (stay ⟕ stay.hcode = hotel.hcode hotel)

select * from hotel
select tcode,name,country,age,gender from tourist
select * from hotel where hcode = 'h1'

select trt.name as 
	turista, 
	act.aname as atividade, 
	year as ano, 
	cost as custo 
from participate as ptr 
left outer join 
	tourist as trt on ptr.tcode = trt.tcode 
left outer join
	activity as act on ptr.acode = act.acode

select 
	tourist.name, 
	sum(cost) as soma 
from participate 
left outer join 
	tourist on participate.tcode = tourist.tcode 
group by 
	tourist.name
/*--------------------------------- Avaliação Prática  01 ------------------------------------*/

--1. Crie um banco de dados chamado BIBLIOTECA 
--2. Crie uma tabela chamada EDITORA, de acordo com os dados abaixo:

CREATE TABLE editora(
	ideditora SERIAL NOT NULL, --SERIAL: Autoincremento
	nome VARCHAR(50) NOT NULL,
	
	CONSTRAINT pk_ideditora PRIMARY KEY (ideditora),
	CONSTRAINT un_edt_nome UNIQUE (nome)
);	

--3. Insira os dados abaixo na tabela EDITORA.
INSERT INTO editora (nome) VALUES ('Bookman');
INSERT INTO editora (nome) VALUES ('Edgard Blusher');
INSERT INTO editora (nome) VALUES ('Nova Terra');
INSERT INTO editora (nome) VALUES ('Brasport');

SELECT * FROM editora;

--4. Crie uma tabela chamada CATEGORIA, de acordo com os dados abaixo:

CREATE TABLE categoria(
	idcategoria SERIAL NOT NULL,
	nome VARCHAR(50) NOT NULL,
	
	CONSTRAINT pk_ctg_idcategoria PRIMARY KEY (idcategoria),
	CONSTRAINT unique_ctg_nome UNIQUE (nome)
);

--5. Insira os dados abaixo na tabela CATEGORIA.

INSERT INTO categoria(nome) VALUES ('Banco de Dados');
INSERT INTO categoria(nome) VALUES ('HTML');
INSERT INTO categoria(nome) VALUES ('Java');
INSERT INTO categoria(nome) VALUES ('PHP');

SELECT * FROM categoria;

--6. Crie uma tabela chamada AUTOR, de acordo com os dados abaixo:

CREATE TABLE autor(
	idautor SERIAL NOT NULL,
	nome VARCHAR(50) NOT NULL,
	
	CONSTRAINT pk_atr_idautor PRIMARY KEY (idautor),
	CONSTRAINT unique_atr_nome UNIQUE (nome)
);

--7. Insira os dados abaixo na tabela AUTOR.

INSERT INTO autor(nome) VALUES ('Waldemar Setzer');
INSERT INTO autor(nome) VALUES ('Flávio Soares');
INSERT INTO autor(nome) VALUES ('John Watson');
INSERT INTO autor(nome) VALUES ('Rui Rossi dos Santos');
INSERT INTO autor(nome) VALUES ('Antonio Pereira de Resende');
INSERT INTO autor(nome) VALUES ('Claudiney Calixto Lima');
INSERT INTO autor(nome) VALUES ('Evandro Carlos Teruel');
INSERT INTO autor(nome) VALUES ('Ian Graham');
INSERT INTO autor(nome) VALUES ('Fabrício Xavier');
INSERT INTO autor(nome) VALUES ('Pablo Dalloglio');
SELECT * FROM autor;

--8. Crie uma tabela chamada LIVRO, de acordo com os dados abaixo:

CREATE TABLE livro(
	idlivro SERIAL NOT NULL,
	ideditora INTEGER NOT NULL,
	idcategoria INTEGER NOT NULL,
	nome VARCHAR(50) NOT NULL,
	
	CONSTRAINT pk_lvr_idlivro PRIMARY KEY (idlivro),
	CONSTRAINT fk_lvr_ideditora FOREIGN KEY (ideditora) REFERENCES editora(ideditora),
	CONSTRAINT fk_lvr_idcategoria FOREIGN KEY (idcategoria) REFERENCES categoria(idcategoria),
	CONSTRAINT unique_lvr_nome UNIQUE (nome)
);
ALTER TABLE livro ALTER COLUMN nome TYPE VARCHAR(70);

--9. Insira os dados abaixo na tabela LIVRO_AUTOR.
SELECT * FROM editora;
SELECT * FROM categoria;
INSERT INTO livro(ideditora, idcategoria, nome)
VALUES(2, 1, 'Banco de Dados-1 Edição');
INSERT INTO livro(ideditora, idcategoria, nome)
VALUES(1, 1, 'Oracle Database 11G Administração');
INSERT INTO livro(ideditora, idcategoria, nome)
VALUES(3, 3, 'Programação de Computadores em Java');
INSERT INTO livro(ideditora, idcategoria, nome)
VALUES(4, 3, 'Programação Orientada a Aspectos em Java');
INSERT INTO livro(ideditora, idcategoria, nome)
VALUES(4, 2, 'HTML5-Guia Prático');
INSERT INTO livro(ideditora, idcategoria, nome)
VALUES(3, 2, 'XHTML: Guia de Referência para Desenvolvimento Web');
INSERT INTO livro(ideditora, idcategoria, nome)
VALUES(1, 4, 'PHP para Desenvolvimento Profissional');
INSERT INTO livro(ideditora, idcategoria, nome)
VALUES(2, 4, 'PHP com Programação Orientada a Objetos');
SELECT * FROM livro; 

--10. Crie uma tabela chamada LIVRO_AUTOR, de acordo com os dados abaixo:

create table livro_autor (
	idlivro integer not null,
	idautor integer not null,
	
	constraint pk_ltr_idlivroautor primary key (idlivro, idautor),
	constraint fk_ltr_idlivro foreign key (idlivro) references livro (idlivro),
	constraint fk_ltr_idautor foreign key (idautor) references autor (idautor)
);

--11. Insira os dados abaixo na tabela LIVRO_AUTOR.
SELECT * FROM livro; 
SELECT * FROM autor;
insert into livro_autor (idlivro, idautor) values (1, 1);
insert into livro_autor (idlivro, idautor) values (1, 2);
insert into livro_autor (idlivro, idautor) values (2, 3);
insert into livro_autor (idlivro, idautor) values (3, 4);
insert into livro_autor (idlivro, idautor) values (4, 5);
insert into livro_autor (idlivro, idautor) values (4, 6);
insert into livro_autor (idlivro, idautor) values (5, 7);
insert into livro_autor (idlivro, idautor) values (6, 8);
insert into livro_autor (idlivro, idautor) values (7, 9);
insert into livro_autor (idlivro, idautor) values (8, 10);
SELECT * FROM livro_autor;

--12. Crie uma tabela chamada ALUNO, de acordo com os dados abaixo:

CREATE TABLE aluno(
	idaluno SERIAL NOT NULL,
	nome VARCHAR(50) NOT NULL,
	
	CONSTRAINT pk_aln_idaluno PRIMARY KEY (idaluno),
	CONSTRAINT un_nome UNIQUE (nome)
);

--13. Insira os dados abaixo na tabela ALUNO.
INSERT INTO aluno(nome) VALUES ('Mario');
INSERT INTO aluno(nome) VALUES ('João');
INSERT INTO aluno(nome) VALUES ('Paulo');
INSERT INTO aluno(nome) VALUES ('Pedro');
INSERT INTO aluno(nome) VALUES ('Maria');
SELECT * FROM aluno;

--14. Crie uma tabela chamada EMPRESTIMO, de acordo com os dados abaixo:

CREATE TABLE emprestimo( 
	idemprestimo SERIAL NOT NULL,
	idaluno INTEGER NOT NULL,
	data_emprestimo DATE NOT NULL DEFAULT CURRENT_DATE,
	data_devolucao DATE NOT NULL,
	valor FLOAT DEFAULT 0,
	devolvido VARCHAR(1) NOT NULL,
	
	CONSTRAINT pk_emp_idemprestimo PRIMARY KEY (idemprestimo),
	CONSTRAINT fk_emp_idaluno FOREIGN KEY (idaluno) REFERENCES aluno(idaluno)
);

--15. Insira os dados abaixo na tabela EMPRESTIMO
SELECT * FROM aluno;
INSERT INTO emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido)
VALUES(1, '2012-05-02', '2012-05-12', 10, 'S');
INSERT INTO emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido)
VALUES(1, '2012-04-23', '2012-05-03', 5, 'N');
INSERT INTO emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido)
VALUES(2, '2012-05-10', '2012-05-20', 12, 'N');
INSERT INTO emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido)
VALUES(3, '2012-05-10', '2012-05-20', 8, 'S');
INSERT INTO emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido)
VALUES(4, '2012-05-05', '2012-05-15', 15, 'N');
INSERT INTO emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido)
VALUES(4, '2012-05-07', '2012-05-17', 20, 'S');
INSERT INTO emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido)
VALUES(4, '2012-05-08', '2012-05-18', 5, 'S');
SELECT * FROM emprestimo;

--16. Crie uma tabela chamada EMPRESTIMO_LIVRO, de acordo com os dados abaixo:

CREATE TABLE emprestimo_livro(
	idemprestimo INTEGER NOT NULL,
	idlivro INTEGER NOT NULL,
	
	CONSTRAINT pk_elv_idemprestimolivro PRIMARY KEY (idemprestimo, idlivro),
	CONSTRAINT fk_elv_idemprestimolivro FOREIGN KEY (idemprestimo) REFERENCES emprestimo (idemprestimo),
	CONSTRAINT fk_elv_idlivro FOREIGN KEY (idlivro) REFERENCES livro(idlivro)
);

--17. Insira os dados abaixo na tabela EMPRESTIMO_LIVRO
SELECT * FROM livro;
SELECT * FROM emprestimo;
INSERT INTO emprestimo_livro(idemprestimo, idlivro) VALUES(1,1);
INSERT INTO emprestimo_livro(idemprestimo, idlivro) VALUES(2,4);
INSERT INTO emprestimo_livro(idemprestimo, idlivro) VALUES(2,3);
INSERT INTO emprestimo_livro(idemprestimo, idlivro) VALUES(3,2);
INSERT INTO emprestimo_livro(idemprestimo, idlivro) VALUES(3,7);
INSERT INTO emprestimo_livro(idemprestimo, idlivro) VALUES(4,5);
INSERT INTO emprestimo_livro(idemprestimo, idlivro) VALUES(5,4);
INSERT INTO emprestimo_livro(idemprestimo, idlivro) VALUES(6,6);
INSERT INTO emprestimo_livro(idemprestimo, idlivro) VALUES(6,1);
INSERT INTO emprestimo_livro(idemprestimo, idlivro) VALUES(7,7);
SELECT * FROM emprestimo_livro;

--18. Crie os seguintes índices:
CREATE INDEX idx_emp_dataemprestimo ON emprestimo (data_emprestimo);
CREATE INDEX idx_emp_dataevolucao ON emprestimo (data_devolucao);

--SUBCONSULTAS
--19. O nome dos autores em ordem alfabética.
SELECT nome FROM autor ORDER BY nome ASC;

--20. O nome dos alunos que começam com a letra P.
SELECT nome FROM aluno WHERE nome LIKE 'P%';

--21. O nome dos livros da categoria Banco de Dados ou Java.
SELECT nome FROM categoria WHERE idcategoria = 1 OR idcategoria = 3;

--22. O nome dos livros da editora Bookman.
SELECT nome FROM categoria WHERE idcategoria = 1;

--23. Os empréstimos realizados entre 05/05/2012 e 10/05/2012.
SELECT * FROM emprestimo WHERE data_emprestimo BETWEEN '2012-05-05' AND '2012-05-10';

--24. Os empréstimos que não foram feitos entre 05/05/2012 e 10/05/2012
SELECT * FROM emprestimo WHERE data_emprestimo NOT BETWEEN '2012-05-05' AND '2012-05-10';

--25. Os empréstimos que os livros já foram devolvidos.
SELECT * FROM emprestimo WHERE devolvido = 'S';

--CONSULTAS COM AGRUPAMENTO SIMPLES
--26. A quantidade de livros.
SELECT COUNT(idlivro) FROM livro;

--27. O somatório do valor dos empréstimos.
SELECT SUM(valor) FROM emprestimo;

--28. A média do valor dos empréstimos.
SELECT AVG(valor) FROM emprestimo;

--29. O maior valor dos empréstimos.
SELECT MAX(valor) FROM emprestimo;

--30. O menor valor dos empréstimos.
SELECT MIN(valor) FROM emprestimo;

--31. O somatório do valor do empréstimo que estão entre 05/05/2012 e 10/05/2012.
SELECT SUM(valor) FROM emprestimo WHERE data_emprestimo BETWEEN '2012-05-05' AND '2012-05-10';

--32. A quantidade de empréstimos que estão entre 01/05/2012 e 05/05/2012.
SELECT SUM(idemprestimo) FROM emprestimo WHERE data_emprestimo BETWEEN '2012-05-05' AND '2012-05-10';

--CONSULTAS COM JOIN
--33. O nome do livro, a categoria e a editora (LIVRO) – fazer uma view
CREATE VIEW dados_livro AS
SELECT
	lvr.nome AS livro,
	ctg.nome AS categoria,
	edt.nome AS editora
FROM 
	livro lvr
LEFT OUTER JOIN
	categoria ctg ON lvr.idcategoria = ctg.idcategoria
LEFT OUTER JOIN
	editora edt ON lvr.ideditora = edt.ideditora
select * from dados_livro

--34. O nome do livro e o nome do autor (LIVRO_AUTOR) – fazer uma view.

CREATE VIEW livro_autor_view AS
SELECT
	lv.nome AS livro_autor,
	atr.nome AS autor
FROM
	livro_autor lva
LEFT OUTER JOIN 	
	livro lv ON lva.idlivro = lv.idlivro
LEFT OUTER JOIN
	autor atr ON lva.idautor = atr.idautor
SELECT * FROM livro_autor_view;

--35. O nome dos livros do autor Ian Graham (LIVRO_AUTOR).
SELECT * FROM autor;
SELECT * FROM livro_autor WHERE idautor = 8;

SELECT 
	lv.nome AS livro
FROM
	livro_autor ltr
LEFT OUTER JOIN
	livro lv ON ltr.idlivro = lv.idlivro
WHERE
	idautor = 8;

--36. O nome do aluno, a data do empréstimo e a data de devolução (EMPRESTIMO).

SELECT
	aln.nome AS aluno,
	emp.data_emprestimo,
	emp.data_devolucao
FROM
	emprestimo emp
LEFT OUTER JOIN
	aluno aln ON emp.idaluno = aln.idaluno

--37. O nome de todos os livros que foram emprestados (EMPRESTIMO_LIVRO).

SELECT
	DISTINCT(lvr.nome) AS livro
FROM
	emprestimo_livro elv
LEFT OUTER JOIN
	livro lvr ON elv.idlivro = lvr.idlivro
	
-- CONSULTAS COM AGRUPAMENO + JOIN
--38. O nome da editora e a quantidade de livros de cada editora (LIVRO).

SELECT 
	edt.nome AS editora,
	COUNT(lvr.idlivro) AS quantidade
FROM
	livro lvr
LEFT OUTER JOIN
	editora edt ON lvr.ideditora = edt.ideditora
GROUP BY
	edt.nome
	
--39. O nome da categoria e a quantidade de livros de cada categoria (LIVRO).

SELECT 
	ctg.nome AS categoria,
	COUNT(lvr.idlivro) AS quantidade
FROM
	livro lvr
LEFT OUTER JOIN
	categoria ctg ON lvr.idcategoria = ctg.idcategoria
GROUP BY
	ctg.nome

--40. O nome do autor e a quantidade de livros de cada autor (LIVRO_AUTOR).

SELECT
	atr.nome AS autor,
	COUNT(lva.idlivro) AS quantidade
FROM
	livro_autor lva
LEFT OUTER JOIN
	autor atr ON lva.idautor = atr.idautor
GROUP BY
	atr.nome

--41. O nome do aluno e a quantidade de empréstimo de cada aluno (EMPRESTIMO_LIVRO).

SELECT
	aln.nome AS aluno,
	COUNT(emp.idemprestimo) AS quantidade
FROM	
	emprestimo emp
LEFT OUTER JOIN
	aluno aln ON emp.idaluno = aln.idaluno
GROUP BY
	aln.nome

--42. O nome do aluno e o somatório do valor total dos empréstimos de cada aluno (EMPRESTIMO).

SELECT 
	aln.nome AS aluno,
	SUM(emp.valor) AS valor
FROM
	emprestimo emp	
LEFT OUTER JOIN
	aluno aln ON emp.idaluno = aln.idaluno
GROUP BY
	aln.nome

--43. O nome do aluno e o somatório do valor total dos empréstimos de cada aluno somente daqueles que o somatório for maior do que 7,00 (EMPRESTIMO).

SELECT
	aln.nome AS aluno,
	SUM(emp.valor) AS valor
FROM
	emprestimo emp
LEFT OUTER JOIN
	aluno aln ON emp.idaluno = aln.idaluno
GROUP BY
	aln.nome
HAVING
	SUM(emp.valor) > 7
	
--CONSULTAS COMANDOS DIVERSOS
--44. O nome de todos os alunos em ordem decrescente e em letra maiúscula.
SELECT UPPER(nome) FROM aluno ORDER BY nome DESC;

--45. Os empréstimos que foram feitos no mês 04 de 2012.
SELECT * FROM emprestimo WHERE 
EXTRACT(year FROM data_emprestimo) = 2012 AND EXTRACT(MONTH FROM data_emprestimo) = 4;

--46. Todos os campos do empréstimo. Caso já tenha sido devolvido, mostrar a mensagem “Devolução completa”, senão “Em atraso”.

SELECT *,
CASE devolvido
	WHEN 'S' THEN 'Devolução completa'
	WHEN 'N' THEN 'Em atraso'
	END AS status
FROM
	emprestimo;	

--47. Somente o caractere 5 até o caractere 10 do nome dos autores.
SELECT SUBSTRING(nome FROM 5 FOR 10) FROM autor;

--48. O valor do empréstimo e somente o mês da data de empréstimo. Escreva “Janeiro”, “Fevereiro”, etc

SELECT valor,
	data_emprestimo,
	CASE EXTRACT(MONTH FROM data_emprestimo)
		WHEN 1 THEN 'Janeiro'
		WHEN 2 THEN 'Fevereiro'
		WHEN 3 THEN 'Março'
		WHEN 4 THEN 'Abril'
		WHEN 5 THEN 'Maio'
	END AS mes
FROM
	emprestimo
	
--SUBCONSULTAS
--49. A data do empréstimo e o valor dos empréstimos que o valor seja maior que a média de todos os empréstimos.

SELECT
	valor,
	data_emprestimo
FROM 
	emprestimo
WHERE
	valor > (SELECT AVG(valor) FROM emprestimo)

--50. A data do empréstimo e o valor dos empréstimos que possuem mais de um livro.

SELECT 
	emp.valor,
	emp.data_emprestimo,
	(SELECT COUNT(elv.idemprestimo) FROM emprestimo_livro elv WHERE elv.idemprestimo = emp.idemprestimo)
FROM
	emprestimo emp
WHERE	
	(SELECT COUNT(elv.idemprestimo) FROM emprestimo_livro elv WHERE elv.idemprestimo = emp.idemprestimo) > 1;

--51. A data do empréstimo e o valor dos empréstimos que o valor seja menor que a soma de todos os empréstimos.

SELECT 
	data_emprestimo,
	valor
FROM
	emprestimo
WHERE 
	valor < (SELECT SUM(valor) FROM emprestimo);
	
/*----------------- Fim da Avaliação Prática -----------------------------------------------------*/	
'''CREATE DATABASE escola;

use escola;

CREATE TABLE alunos (
    matricula INT PRIMARY KEY, 
    nome_completo VARCHAR(55) )

CREATE TABLE professores (
    codigo_professor INT PRIMARY KEY,
    nome_completo VARCHAR(55), 
    disciplina VARCHAR(55))


CREATE TABLE notas (    
    aluno_id INT NOT NULL,
    professor_id INT NOT NULL,
    disciplina VARCHAR(55),
    nota FLOAT);


ALTER TABLE notas
ADD FOREIGN KEY (aluno_id) REFERENCES alunos(matricula)

ALTER TABLE notas 
ADD FOREIGN KEY (professor_id) REFERENCES professores(codigo_professor);

INSERT INTO alunos VALUES
    (1,"Henrique Rodrigues de Souza"),
    (2,"Carlos Alberto Soares"),
    (3,"Julio Kastelhano"),
    (4,"Gilberto Roza"),
    (5,"Nathan Kritzz"),
    (6,"Kriss Figueredo"),
    (7,"Paula Silveira"),
    (8,"Ygor Barbielli"),
    (9,"Ricardo Lutzz"),
    (10,"Bianca Macedo");

INSERT INTO professores VALUES
    (50,"Luan Pereira","Física"),
    (51,"Antonio Justo", "Matemática"),
    (52,"Pedro Ordin","Português"),
    (53,"Higor Nunes","História"),
    (54,"Vitor Prestes","Matemática"),
    (55,"Carol Viera","Física"),
    (56,"Ana Lopez","Biologia");





INSERT INTO notas VALUES
    (1, 56, 'Biologia', 8.00),
    (2, 56, 'Biologia', 5.00),
    (5, 56, 'Biologia', 1.00),
    (1, 51, 'Matemática', 8.00),
    (2, 54, 'Matemática', 4.75),
    (8, 56, 'Biologia', 3.50),
    (9, 52, 'Português', 7.25),
    (1, 56, 'Biologia', 8.00),
    (3, 51, 'Matemática', 5.75),
    (6, 55, 'Física', 3.75),
    (4, 56, 'Biologia', 5.25),
    (7, 55, 'Física', 6.50),
    (7, 53, 'História', 2.00),
    (10, 56, 'Biologia', 10.00),
    (6, 56, 'Física', 9.25),
    (3, 56, 'Biologia', 10.00),
    (10, 52, 'Português', 5.50),
    (1, 50, 'Física', 7.00);


SELECT alunos.nome_completo, notas.nota FROM alunos INNER JOIN notas
on alunos.matricula = notas.aluno_id
WHERE disciplina = "matemática"


SELECT alunos.nome_completo, notas.nota 
FROM alunos
INNER JOIN notas
on alunos.matricula = notas.aluno_id
WHERE nota > 8



SELECT professores.codigo_professor, professores.nome_completo, notas.disciplina
FROM professores
INNER JOIN notas
on professores.codigo_professor = notas.professor_id
WHERE professores.codigo_professor = 56'''

















'''CREATE DATABASE petshop

use petshop;

CREATE TABLE tutor (
        id_tutor INT NOT NULL PRIMARY KEY,
        nome VARCHAR(55),
        telefone INT NOT NULL UNIQUE);


CREATE TABLE pet (
    id_pet INT NOT NULL PRIMARY KEY,
    id_tutor INT NOT NULL,
    nome VARCHAR(55),
    raca VARCHAR(55),
    tipo VARCHAR(55),
    FOREIGN KEY(id_tutor) REFERENCES tutor(id_tutor));

 
CREATE TABLE funcionario (
    id_funcionario INT NOT NULL PRIMARY KEY,
    nome VARCHAR(55),
    funcao VARCHAR(55),
    salario INT );


CREATE TABLE servico (
    id_servico INT NOT NULL PRIMARY KEY,
    id_pet INT NOT NULL,
    id_funcionario INT NOT NULL,
    descricao VARCHAR(55),
    data_servico DATE,
    valor INT,
    FOREIGN KEY (id_pet) REFERENCES pet(id_pet),
    FOREIGN KEY (id_funcionario) REFERENCES funcionario (id_funcionario));


INSERT INTO servico VALUES
    (101,2,50,"Banho","2024-03-26",150),
    (102,4,50,"Banho + tosa","2024-05-25",250),
    (103,5,52,"Banho + tosa","2024-05-19",250),
    (104,3,54,"Castração","2024-06-27",500),
    (105,4,55,"Castração","2024-03-19",500),
    (106,2,50,"Banho + tosa","2024-05-07",250),
    (107,5,55,"Corte Unhas ","2024-05-22",50),
    (108,1,54,"Corte unhas","2024-06-1",50),
    (109,1,54,"Castracao","2024-05-18",500),
    (110,2,50,"Banho + tosa","2024-08-02",250),
    (111,5,50,"Banho + tosa","2024-04-04",250),
    (112,3,54,"Corte Unhas","2024-05-10",50),
    
    
use petshop;

SELECT pet.id_pet, pet.nome, servico.descricao
FROM pet
JOIN servico on pet.id_pet = servico.id_pet


use petshop;

SELECT pet.id_pet, pet.nome, servico.descricao
FROM pet
JOIN servico on pet.id_pet = servico.id_pet
WHERE valor > 250


use petshop;

SELECT funcionario.id_funcionario, funcionario.nome, servico.descricao
FROM funcionario
JOIN servico ON funcionario.id_funcionario = servico.id_funcionario
WHERE valor < 250
    
    
use petshop;

SELECT funcionario.id_funcionario, funcionario.nome, servico.descricao
FROM funcionario
JOIN servico ON funcionario.id_funcionario = servico.id_funcionario
WHERE data_servico= "2024-05-26"'''












CREATE DATABASE mecanica;

use mecanica;

CREATE TABLE mecanico (
    id_mecanico INT NOT NULL PRIMARY KEY,
    nome VARCHAR(55))

CREATE TABLE proprietario (
    id_proprietario INT NOT NULL PRIMARY KEY,
    nome VARCHAR(55),
    telefone VARCHAR(55)UNIQUE)

CREATE TABLE veiculo (
    id_veiculo INT NOT NULL PRIMARY KEY,
    id_proprietario INT NOT NULL,
    placa VARCHAR(55),
    modelo VARCHAR(55),
    FOREIGN KEY (id_proprietario) REFERENCES proprietario(id_proprietario))

CREATE TABLE servico (
    id_servico INT NOT NULL PRIMARY KEY,
    id_mecanico INT NOT NULL,
    id_veiculo INT NOT NULL,
    descricao_servico VARCHAR(55),
    data_entrada DATE,
    data_saida DATE,
    valor INT,
    FOREIGN KEY (id_mecanico) REFERENCES mecanico(id_mecanico),
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo))


INSERT INTO mecanico VALUES
	(1,"Julio Souza"),
    (2,"Roberto Soares"),
    (3,"Lucas Figueredo"),
    (4,"Silvio Costa"),
    (5,"Pedro Ferreira")

INSERT INTO proprietario VALUES
	(1000,"Ricardo Neto","519876754"),
    (1001,"Roben Lunardi","519897569"),
    (1002,"Natasha Vasconcelos","519678908"),
    (1004,"Bruna Perez","519987867"),
    (1005,"Angelo Correa","519923451")


INSERT INTO veiculo VALUES
	(2000,1001,"IBM-3676","Nissan kicks"),
    (2001,1002,"GMS-1874","Ford Fiesta"),
    (2002,1005,"GSP-1298","Gol g5"),
    (2003,1005,"OIL-7761","Fiat toro"),
    (2004,1004,"NHU-1866","Nissan Frontier")

use mecanica;

INSERT INTO servico VALUES
    (1, 1, 2000, 'Troca de óleo', '2023-11-01', '2023-11-01', 200),
    (2, 2, 2001, 'Alinhamento', '2023-12-15', '2023-12-15', 350),
    (3, 3, 2002, 'Balanceamento', '2024-01-10', '2024-01-10', 150),
    (4, 4, 2003, 'Troca de pastilhas', '2023-09-20', '2023-09-20', 400),
    (5, 5, 2004, 'Revisão completa', '2023-10-15', '2023-10-20', 800),
    (6, 1, 2001, 'Troca de pneus', '2023-11-25', '2023-11-25', 1200),
    (7, 2, 2002, 'Conserto de ar condicionado', '2023-12-05', '2023-12-08', 600),
    (8, 3, 2003, 'Troca de correia dentada', '2024-01-20', '2024-01-22', 1000),
    (9, 4, 2004, 'Alinhamento e balanceamento', '2023-09-15', '2023-09-15', 450),
    (10, 5, 2000, 'Revisão de suspensão', '2023-10-25', '2023-10-27', 700),
    (11, 1, 2002, 'Troca de óleo e filtro', '2023-11-15', '2023-11-15', 250),
    (12, 2, 2003, 'Conserto de câmbio', '2023-12-20', '2023-12-23', 1500),
    (13, 3, 2004, 'Troca de bateria', '2024-01-15', '2024-01-15', 300),
    (14, 4, 2000, 'Revisão de freios', '2023-09-25', '2023-09-25', 500),
    (15, 5, 2001, 'Troca de escapamento', '2023-10-30', '2023-10-30', 750);


use mecanica;

SELECT veiculo.placa, veiculo.modelo
FROM veiculo
JOIN servico ON veiculo.id_veiculo = servico.id_veiculo
WHERE servico.descricao_servico = 'Revisão completa';

use mecanica;

SELECT proprietario.nome
FROM proprietario
JOIN veiculo ON proprietario.id_proprietario = veiculo.id_proprietario
WHERE veiculo.modelo LIKE '%Ford%';


use mecanica;

SELECT servico.descricao_servico
FROM servico
WHERE servico.data_entrada BETWEEN '2023-11-01' AND '2023-11-30';



SELECT YEAR(servico.data_entrada) AS ano, MONTH(servico.data_entrada) AS mes, SUM(servico.valor) AS faturamento_total
FROM servico
WHERE YEAR(servico.data_entrada) = 2023  
GROUP BY YEAR(servico.data_entrada), MONTH(servico.data_entrada)
ORDER BY ano, mes;






















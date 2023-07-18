CREATE TABLE pessoa (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    genero VARCHAR(1),
    data_nascimento DATE,
    idEndResidencial INT,
    constraint idEndResidencial FOREIGN KEY (idEndResidencial) REFERENCES endereco(idEndResidencial)
);

-- 

CREATE table endereco(
    idEndResidencial INT PRIMARY KEY,
    logradouro VARCHAR(100),
    numero INT,
    bairro VARCHAR(50),
    cep VARCHAR(8),
    idCidade INT,
    complemento VARCHAR(50),
    constraint idCidade FOREIGN KEY (idCidade) REFERENCES cidade(idCidade)
);

CREATE table cidade(
    idCidade INT PRIMARY KEY,
    nome VARCHAR(100),
    UF char(2)
);

-- 

CREATE TABLE aluno (
    id INT PRIMARY KEY,
    matricula INT,
    idCurso INT,
    dtIngresso DATE,
    constraint id FOREIGN KEY (id) REFERENCES pessoa(id)
    constraint idCurso FOREIGN KEY (idCurso) REFERENCES curso(idCurso)
);

CREATE TABLE professor (
    id INT PRIMARY KEY,
    matricula INT,
    dtIngresso DATE,
    idDepartamento INT,
    constraint idDepartamento FOREIGN KEY (idDepartamento) REFERENCES departamento(idDepartamento),
    constraint id FOREIGN KEY (id) REFERENCES pessoa(id)
);

CREATE TABLE departamento (
    idDepartamento INT PRIMARY KEY,
    nome VARCHAR(100)
);

-- 

CREATE TABLE matricula (
    idTurma INT,
    idAluno INT,
    PRIMARY KEY (idTurma, idAluno),
    notaFinal DOUBLE,
    numFaltas INT,
    constraint idTurma FOREIGN KEY (idTurma) REFERENCES turma(idTurma),
    constraint idAluno FOREIGN KEY (idAluno) REFERENCES aluno(id)
);

CREATE TABLE turma (
    idTurma INT PRIMARY KEY,
    codigo VARCHAR(10),
    idCurso INT,
    idDisciplina INT,
    idProfessor INT,
    ano INT,
    sem INT,
    nAlunos INT,
    nAvaliacoes INT,
    constraint idCurso FOREIGN KEY (idCurso) REFERENCES curso(idCurso)
    constraint idDisciplina FOREIGN KEY (idDisciplina) REFERENCES disciplina(idDisciplina),
    constraint idProfessor FOREIGN KEY (idProfessor) REFERENCES professor(id)
);

CREATE TABLE curso (
    idCurso INT PRIMARY KEY,
    nome VARCHAR(100),
    chObrigatoria INT,
    chOptativa INT,
    chTotal INT
);

CREATE TABLE gradecurricular (
    idCurso INT,
    idDisciplina INT,
    PRIMARY KEY (idCurso, idDisciplina),
    obrigatoria char(1),
    constraint idCurso FOREIGN KEY (idCurso) REFERENCES curso(idCurso),
    constraint idDisciplina FOREIGN KEY (idDisciplina) REFERENCES disciplina(idDisciplina)
);

CREATE TABLE disciplina (
    idDisciplina INT PRIMARY KEY,
    codigo VARCHAR(8),
    nome VARCHAR(100),
    ch INT
    ementa VARCHAR(1000)
    programa VARCHAR(100)
);

--

CREATE TABLE referencia (
    idDisciplina INT,
    idBibliografia INT,
    PRIMARY KEY (idDisciplina, idBibliografia),
    basica char(1)
);

CREATE TABLE bibliografia (
    idBibliografia INT PRIMARY KEY,
    descricao VARCHAR(100)
);

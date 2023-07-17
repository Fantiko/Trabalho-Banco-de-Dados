-- Vamos adicionar o requisito "Participar de Monitoria" ao modelo, relacionando tanto alunos quanto 
-- professores à monitoria. Também adicionaremos uma nova tabela para representar a Monitoria e suas 
-- informações.

CREATE TABLE monitoria (
    idMonitoria INT PRIMARY KEY,
    tipo VARCHAR(50),
    remunerada CHAR(1),
    idDisciplina INT,
    idAluno INT,
    idProfessor INT,
    FOREIGN KEY (idDisciplina) REFERENCES disciplina(idDisciplina),
    FOREIGN KEY (idAluno) REFERENCES aluno(id),
    FOREIGN KEY (idProfessor) REFERENCES professor(id)
);

-- Explicações:

-- A tabela "monitoria" terá um identificador próprio, "idMonitoria", como chave primária.
-- O atributo "tipo" representa o tipo de monitoria (por disciplina ou função).
-- O atributo "remunerada" será usado para indicar se a monitoria é remunerada ou não (Sim ou Não).
-- Os atributos "idDisciplina", "idAluno" e "idProfessor" serão usados para relacionar a monitoria com 
-- a disciplina, o aluno e o professor envolvidos, respectivamente.
-- As chaves estrangeiras são definidas para garantir a integridade referencial das relações.
-- Com essa adição, o modelo estará pronto para atender ao requisito de "Participar de Monitoria" tanto 
-- para alunos quanto para professores. As informações da monitoria, como tipo, remuneração e os envolvidos,
-- serão armazenadas na nova tabela "monitoria".
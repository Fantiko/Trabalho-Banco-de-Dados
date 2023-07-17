-- Questão proposta: Liste os alunos matriculados em uma disciplina específica, juntamente com suas respectivas notas finais e o nome do professor que ministrou a disciplina.

-- Consulta SQL proposta:

SELECT aluno.nome AS nome_aluno, matricula.notaFinal, professor.nome AS nome_professor
FROM aluno
JOIN matricula ON aluno.id = matricula.idAluno
JOIN turma ON matricula.idTurma = turma.idTurma
JOIN disciplina ON turma.idDisciplina = disciplina.idDisciplina
JOIN professor ON turma.idProfessor = professor.id
WHERE disciplina.nome = 'Nome da Disciplina';
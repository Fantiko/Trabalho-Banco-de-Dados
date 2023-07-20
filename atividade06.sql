SELECT aluno.matricula AS matricula_aluno, disciplina.codigo AS codigo_disciplina,matricula.notaFinal as m_final
FROM aluno 
JOIN matricula ON aluno.id = matricula.idAluno
JOIN turma ON matricula.idTurma = turma.idTurma
JOIN disciplina ON turma.idDisciplina = disciplina.idDisciplina
JOIN professor ON turma.idProfessor = professor.id
WHERE disciplina.codigo = 'CSE601';

-- Generate 10 cities
INSERT INTO cidade (idCidade, nome, UF)
VALUES
    (1, 'City 1', 'AA'),
    (2, 'City 2', 'BB'),
    (3, 'City 3', 'CC'),
    (4, 'City 4', 'DD'),
    (5, 'City 5', 'EE'),
    (6, 'City 6', 'FF'),
    (7, 'City 7', 'GG'),
    (8, 'City 8', 'HH'),
    (9, 'City 9', 'II'),
    (10, 'City 10', 'JJ');

-- gerando 30 enderecos
INSERT INTO endereco (idEndResidencial, logradouro, numero, bairro, cep, idCidade, complemento)
VALUES
    (1, 'Street 1', 123, 'Neighborhood 1', '12345678', 1, 'Complement 1'),
    (2, 'Street 2', 456, 'Neighborhood 2', '23456789', 2, 'Complement 2'),
    (3, 'Street 3', 789, 'Neighborhood 3', '34567890', 3, 'Complement 3'),
    (4, 'Street 4', 321, 'Neighborhood 4', '45678901', 4, 'Complement 4'),
    (5, 'Street 5', 654, 'Neighborhood 5', '56789012', 5, 'Complement 5'),
    (6, 'Street 6', 987, 'Neighborhood 6', '67890123', 6, 'Complement 6'),
    (7, 'Street 7', 135, 'Neighborhood 7', '78901234', 7, 'Complement 7'),
    (8, 'Street 8', 246, 'Neighborhood 8', '89012345', 8, 'Complement 8'),
    (9, 'Street 9', 357, 'Neighborhood 9', '90123456', 9, 'Complement 9'),
    (10, 'Street 10', 468, 'Neighborhood 10', '01234567', 10, 'Complement 10'),
    (11, 'Street 11', 579, 'Neighborhood 11', '12345678', 11, 'Complement 11'),
    (12, 'Street 12', 680, 'Neighborhood 12', '23456789', 12, 'Complement 12'),
    (13, 'Street 13', 791, 'Neighborhood 13', '34567890', 13, 'Complement 13'),
    (14, 'Street 14', 802, 'Neighborhood 14', '45678901', 14, 'Complement 14'),
    (15, 'Street 15', 913, 'Neighborhood 15', '56789012', 15, 'Complement 15'),
    (16, 'Street 16', 024, 'Neighborhood 16', '67890123', 16, 'Complement 16'),
    (17, 'Street 17', 135, 'Neighborhood 17', '78901234', 17, 'Complement 17'),
    (18, 'Street 18', 246, 'Neighborhood 18', '89012345', 18, 'Complement 18'),
    (19, 'Street 19', 357, 'Neighborhood 19', '90123456', 19, 'Complement 19'),
    (20, 'Street 20', 468, 'Neighborhood 20', '01234567', 20, 'Complement 20'),
    (21, 'Street 21', 579, 'Neighborhood 21', '12345678', 21, 'Complement 21'),
    (22, 'Street 22', 680, 'Neighborhood 22', '23456789', 22, 'Complement 22'),
    (23, 'Street 23', 791, 'Neighborhood 23', '34567890', 23, 'Complement 23'),
    (24, 'Street 24', 802, 'Neighborhood 24', '45678901', 24, 'Complement 24'),
    (25, 'Street 25', 913, 'Neighborhood 25', '56789012', 25, 'Complement 25'),
    (26, 'Street 26', 024, 'Neighborhood 26', '67890123', 26, 'Complement 26'),
    (27, 'Street 27', 135, 'Neighborhood 27', '78901234', 27, 'Complement 27'),
    (28, 'Street 28', 246, 'Neighborhood 28', '89012345', 28, 'Complement 28'),
    (29, 'Street 29', 357, 'Neighborhood 29', '90123456', 29, 'Complement 29'),
    (30, 'Street 30', 468, 'Neighborhood 30', '01234567', 30, 'Complement 30');

-- Generate 30 people with random data
INSERT INTO pessoa (id, nome, genero, data_nascimento, idEndResidencial)
VALUES
    (1,"Carolyn Logan","M","1997-04-12",1),
    (2,"Tyler Christian","F","1993-12-01",2),
    (3,"MacKenzie Rowland","M","1994-01-13",3),
    (4,"Allen Pugh","F","1998-07-22",4),
    (5,"Isabella Rodriquez","M","1999-11-11",5),
    (6,"Phyllis Hines","F","1996-08-07",6),
    (7,"Clementine Castaneda","M","1992-02-17",7),
    (8,"Myles Pearson","F","1994-02-26",8),
    (9,"Grace Strong","M","1995-01-17",9),
    (10,"Kermit Jacobson","F","1994-06-03",10),
    (11,"Elijah Rosario","M","1999-08-21",11),
    (12,"Noah Horton","F","1992-07-13",12),
    (13,"Brenden Alvarado","M","1992-08-02",13),
    (14,"Jason Cote","F","1992-07-26",14),
    (15,"Melanie Buchanan","M","1993-03-01",15),
    (16,"Venus Noel","F","1992-11-21",16),
    (17,"Mikayla Key","M","1992-08-30",17),
    (18,"Eliana Herring","F","1993-10-26",18),
    (19,"Paloma Petty","M","1994-03-29",19),
    (20,"Guy Tyler","F","1997-01-29",20),
    (21,"Alan Frazier","M","1996-04-26",21),
    (22,"Lars Huff","F","1994-11-03",22),
    (23,"Dominic Alford","M","1994-02-18",23),
    (24,"Phoebe Whitfield","F","2000-09-29",24),
    (25,"Ingrid Pollard","M","1994-06-05",25),
    (26,"Noelani Rodriguez","F","1994-05-18",26),
    (27,"Tanner Valentine","M","1994-05-05",27),
    (28,"Rinah Barron","F","1994-04-30",28),
    (29,"Nehru Bean","M","1995-10-31",29),
    (30,"Hammett Chang","F","1997-03-04",30);

-- Generate 20 students and associate them with existing pessoa records
INSERT INTO aluno (id, matricula, idCurso, dtIngresso)
VALUES
    (1, 10001, 1, '2020-09-01'),
    (2, 10002, 2, '2021-03-15'),
    (3, 10003, 1, '2019-07-10'),
    (4, 10004, 3, '2022-01-05'),
    (5, 10005, 2, '2020-11-20'),
    (6, 10006, 1, '2021-08-12'),
    (7, 10007, 3, '2019-06-30'),
    (8, 10008, 2, '2022-04-18'),
    (9, 10009, 1, '2021-02-25'),
    (10, 10010, 3, '2020-10-05'),
    (11, 10011, 2, '2019-12-14'),
    (12, 10012, 1, '2022-03-22'),
    (13, 10013, 3, '2021-01-08'),
    (14, 10014, 2, '2020-09-30'),
    (15, 10015, 1, '2019-11-05'),
    (16, 10016, 3, '2022-06-20'),
    (17, 10017, 2, '2021-04-12'),
    (18, 10018, 1, '2020-12-27'),
    (19, 10019, 3, '2019-10-02'),
    (20, 10020, 2, '2022-02-15');

-- Generate 3 departments
INSERT INTO departamento (idDepartamento, nome)
VALUES
    (1, 'Department of Computer Science'),
    (2, 'Department of Mechanical Engineering'),
    (3, 'Department of Business Administration');


-- Generate 10 professors 
INSERT INTO professor (id, matricula, dtIngresso, idDepartamento)
VALUES
    (21, 20001, '2015-09-01', 1),   
    (22, 20002, '2018-03-15', 2),   
    (23, 20003, '2019-07-10', 3),   
    (24, 20004, '2017-01-05', 1),   
    (25, 20005, '2020-11-20', 2),   
    (26, 20006, '2016-08-12', 3),   
    (27, 20007, '2019-06-30', 1),   
    (28, 20008, '2022-04-18', 2),
    (29, 20009, '2018-02-25', 3),
    (30, 20010, '2020-10-05', 1);

-- Generate 20 enrollments
INSERT INTO matricula (idTurma, idAluno, notaFinal, numFaltas)
VALUES
    (1, 1, 8.5, 2),   
    (1, 2, 7.2, 4),   
    (1, 3, 6.9, 1),   
    (2, 4, 9.1, 0),   
    (2, 5, 7.8, 3),   
    (3, 6, 6.5, 2),   
    (3, 7, 8.0, 1),   
    (4, 8, 7.3, 3),   
    (4, 9, 6.8, 1),   
    (5, 10, 8.9, 0),   
    (6, 11, 9.5, 0),   
    (6, 12, 7.0, 2),   
    (7, 13, 8.2, 1),   
    (7, 14, 6.7, 4),   
    (8, 15, 7.6, 2),   
    (8, 16, 9.0, 0),   
    (9, 17, 6.3, 3),   
    (9, 18, 8.4, 1),   
    (10, 19, 7.9, 2),  
    (10, 20, 9.2, 0);


-- Generate 10 turmas
INSERT INTO turma (idTurma, codigo, idCurso, idDisciplina, idProfessor, ano, sem, nAlunos, nAvaliacoes)
VALUES
    (1, 'TURMA001', 1, 1, 21, 2023, 1, 40, 4),   
    (2, 'TURMA002', 2, 2, 22, 2023, 1, 35, 3),   
    (3, 'TURMA003', 3, 3, 23, 2023, 1, 30, 2),   
    (4, 'TURMA004', 1, 4, 24, 2023, 2, 38, 4),   
    (5, 'TURMA005', 2, 5, 25, 2023, 2, 42, 3),   
    (6, 'TURMA006', 3, 6, 26, 2023, 2, 37, 3),   
    (7, 'TURMA007', 1, 7, 27, 2023, 1, 31, 2),   
    (8, 'TURMA008', 2, 8, 28, 2023, 1, 34, 4),   
    (9, 'TURMA009', 3, 9, 29, 2023, 1, 29, 2),   
    (10, 'TURMA010', 1, 10, 30, 2023, 1, 32, 3);

-- Generate 3 courses
INSERT INTO curso (idCurso, nome, chObrigatoria, chOptativa, chTotal)
VALUES
    (1, 'Computer Science', 120, 40, 160),
    (2, 'Mechanical Engineering', 140, 30, 170),
    (3, 'Business Administration', 110, 50, 160);

-- Generate 20 disciplines
INSERT INTO disciplina (idDisciplina, codigo, nome, ch, ementa, programa)
VALUES
    (1, 'MAT101', 'Mathematics I', 60, 'Basic concepts of algebra and calculus', 'Integration and differentiation.'),
    (2, 'PHY201', 'Physics I', 80, 'Introduction to classical mechanics and thermodynamics', 'Motion, forces, and heat.'),
    (3, 'BIO301', 'Biology I', 70, 'Introduction to cell biology and genetics', 'Cell structure and inheritance.'),
    (4, 'CHEM401', 'Chemistry I', 90, 'Fundamental principles of chemistry', 'Atoms, molecules, and reactions.'),
    (5, 'ENG501', 'Introduction to Engineering', 50, 'Overview of engineering disciplines', 'Engineering problem-solving and design.'),
    (6, 'CSE601', 'Computer Science I', 80, 'Introduction to programming and algorithms', 'Programming in Python.'),
    (7, 'PHIL701', 'Philosophy of Science', 40, 'Examining the nature of scientific inquiry', 'Scientific method and ethics.'),
    (8, 'HIST801', 'History of Science', 60, 'Exploring the development of scientific thought', 'Key milestones and discoveries.'),
    (9, 'PSY901', 'Introduction to Psychology', 70, 'Overview of psychological theories and research', 'Human behavior and cognition.'),
    (10, 'SOC1001', 'Sociology I', 60, 'Introduction to sociological concepts and methods', 'Social structures and interactions.'),
    (11, 'ENG201', 'Engineering Graphics', 50, 'Introduction to technical drawing and CAD', '2D and 3D representations.'),
    (12, 'CSE301', 'Data Structures', 90, 'Study of fundamental data structures', 'Arrays, linked lists, trees.'),
    (13, 'MKT401', 'Marketing Principles', 60, 'Introduction to marketing concepts and strategies', 'Market analysis and segmentation.'),
    (14, 'FIN501', 'Finance Fundamentals', 70, 'Basic principles of finance and investment', 'Time value of money and risk.'),
    (15, 'HRM601', 'Human Resource Management', 80, 'Overview of HR practices and policies', 'Recruitment and performance management.'),
    (16, 'OPS701', 'Operations Management', 70, 'Study of production and operations processes', 'Process analysis and optimization.'),
    (17, 'BUS801', 'Business Ethics', 40, 'Exploring ethical issues in business', 'Corporate social responsibility.'),
    (18, 'ECON901', 'Microeconomics', 60, 'Principles of microeconomics and consumer behavior', 'Supply and demand analysis.'),
    (19, 'LAW1001', 'Business Law', 80, 'Introduction to legal principles in business', 'Contracts and corporate law.'),
    (20, 'ENT101', 'Entrepreneurship', 50, 'Fundamentals of entrepreneurship and innovation', 'Business planning and startup development.');

-- Generate 20 curriculum grades
INSERT INTO gradecurricular (idCurso, idDisciplina, obrigatoria)
VALUES
    (1, 1, 'S'), 
    (1, 2, 'S'), 
    (1, 3, 'N'), 
    (1, 4, 'S'), 
    (1, 5, 'N'), 
    (2, 6, 'S'), 
    (2, 7, 'S'), 
    (2, 8, 'N'), 
    (2, 9, 'N'), 
    (2, 10, 'S'),
    (3, 11, 'S'),
    (3, 12, 'N'),
    (3, 13, 'S'),
    (3, 14, 'N'),
    (4, 15, 'S'),
    (4, 16, 'S'),
    (4, 17, 'N'),
    (4, 18, 'S'),
    (4, 19, 'N'),
    (4, 20, 'N');

-- Generate 20 references
INSERT INTO referencia (idDisciplina, idBibliografia, basica)
VALUES
    (1, 1, 'S'), 
    (1, 2, 'S'), 
    (1, 3, 'N'), 
    (1, 4, 'S'), 
    (1, 5, 'N'), 
    (2, 6, 'S'), 
    (2, 7, 'S'), 
    (2, 8, 'N'), 
    (2, 9, 'N'), 
    (2, 10, 'S'),
    (3, 11, 'S'),
    (3, 12, 'N'),
    (3, 13, 'S'),
    (3, 14, 'N'),
    (4, 15, 'S'),
    (4, 16, 'S'),
    (4, 17, 'N'),
    (4, 18, 'S'),
    (4, 19, 'N'),
    (4, 20, 'N');

-- Generate 20 bibliographies
INSERT INTO bibliografia (idBibliografia, descricao)
VALUES
    (1, 'Introduction to Computer Science'),
    (2, 'Mathematics for Engineers'),
    (3, 'Fundamentals of Physics'),
    (4, 'Introduction to Biology'),
    (5, 'Principles of Chemistry'),
    (6, 'Engineering Graphics and Design'),
    (7, 'Data Structures and Algorithms'),
    (8, 'Marketing Management'),
    (9, 'Financial Accounting'),
    (10, 'Human Resource Management'),
    (11, 'History of Science and Technology'),
    (12, 'Philosophy of Science'),
    (13, 'Microeconomics: Principles and Applications'),
    (14, 'Introduction to Business Law'),
    (15, 'Operations Management'),
    (16, 'Computer Programming with Python'),
    (17, 'Digital Electronics and Logic Design'),
    (18, 'Machine Learning and Artificial Intelligence'),
    (19, 'Entrepreneurship and Innovation'),
    (20, 'Organizational Behavior and Leadership');




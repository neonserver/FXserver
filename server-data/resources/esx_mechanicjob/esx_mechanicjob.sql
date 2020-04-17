USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_mechanic', 'Mecânico', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_mechanic', 'Mecânico', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('mechanic', 'Mecânico')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('mechanic',0,'recrue','Recruta',12,'{}','{}'),
	('mechanic',1,'novice','Novato',24,'{}','{}'),
	('mechanic',2,'experimente','Experimente',36,'{}','{}'),
	('mechanic',3,'chief',"Líder da equipe",48,'{}','{}'),
	('mechanic',4,'boss','Patrão',0,'{}','{}')
;
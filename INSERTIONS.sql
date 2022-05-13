INSERT INTO Student (snum,sname,major,level,age) VALUES
    (1,'Jacob','CS','Sr',19),
    (2,'Simon','CS','Jr',20),
    (3,'James','CV','Sr',20),
    (4,'Todd','CS','Jr',20),
    (5,'Sylvester','CS','Jr',20),
    (6,'Henry','CS','Sr',21),
	(7,'Jeremy','CS','Sr',21);

	SELECT * FROM Student;

	INSERT INTO Faculty (fid,fname, deptid) VALUES
    (11,'Kraft',1000),
    (12,'Parashar',1000),
    (13,'Zhao',1001),
    (14,'Teach',1002),
    (15,'Zhang',1000),
	(16,'Yang',1003);
	SELECT * FROM Faculty;

	INSERT INTO Class (name,meets_at,room,fid) VALUES
    ('class1','noon','R111',14),
    ('class2','morning','R122',12),
    ('class3','morning','R123',11),
    ('class4','evening','R124',14),
    ('class5','night','R123',15),
    ('class6','morning','R122',14),
    ('class7','morning','R123',14),
	('class8','morning','R128',16),
	('class9','night','R128',16),
	('class10','morning','R128',14);
	SELECT * FROM Class;

	INSERT INTO Enrolled (snum,cname) VALUES
    (1,'class1'),
    (2,'class1'),
    (3,'class2'),
	(3,'class3'),
	(4,'class4'),
	(5,'class4'),
	(1,'class5'),
	(2,'class5'),
	(3,'class5'),
	(4,'class5'),
	(5,'class5'),
	(6,'class5');

	SELECT * FROM Enrolled;





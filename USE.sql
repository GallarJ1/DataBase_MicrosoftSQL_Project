USE student;
CREATE TABLE Student(
	snum INT,
	sname VARCHAR(10),
	major VARCHAR(2),
	level VARCHAR(2),
	age INT,
	PRIMARY KEY(snum));
	EXEC sp_help 'Student';
	
	CREATE TABLE Faculty(
	fid INT,
	fname VARCHAR(20),
	deptid INT,
	PRIMARY KEY(fid));
	EXEC sp_help 'Faculty';


    CREATE TABLE Class(
	name VARCHAR(20),
	meets_at VARCHAR(10),
	room VARCHAR(10),
	fid INT,
	PRIMARY KEY(name),
	FOREIGN KEY(fid) REFERENCES Faculty(fid));
	EXEC sp_help 'Class';

	CREATE TABLE Enrolled(
	snum INT,
	cname VARCHAR(20),
	PRIMARY KEY(snum,cname),
	FOREIGN KEY(snum) REFERENCES Student(snum),
	FOREIGN KEY(cname) REFERENCES Class(name));
	EXEC sp_help 'Enrolled';

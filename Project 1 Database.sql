/*Question 1 */
SELECT DISTINCT s.sname
FROM Student s,Class c,Faculty f, Enrolled e
WHERE  s.snum=e.snum AND
e.cname=c.name AND
f.fname = 'Teach' AND
s.level = 'JR' AND
c.fid = f.fid
/* Question 2 */
SELECT MAX(s.age)
FROM Student s
WHERE (s.major = 'History') OR
s.snum IN (SELECT e.snum
           FROM Class c, Enrolled e, Faculty f
		   WHERE e.cname = c.name AND c.fid = f.fid AND f.fname = 'Teach')
/*Question 3 */
SELECT c.name
FROM Class c
WHERE c.room='R128'
OR
c.name IN (SELECT e.cname 
           FROM Enrolled e 
		   GROUP BY e.cname 
		   HAVING COUNT(*)>=5);
/*Question 4 */
SELECT DISTINCT s.sname
FROM Student s
WHERE s.snum IN (SELECT e1.snum
FROM Enrolled e1,Enrolled e2,Class c1,Class c2
WHERE e1.snum = e2.snum AND
e1.cname<>e2.cname    AND
e1.cname=c1.name     AND
e2.cname=c2.name     AND
c1.meets_at = c2.meets_at  );
/*Question 5*/
SELECT f.fname,f.fid
FROM faculty f
WHERE f.fid in ( SELECT fid FROM class
GROUP BY fid HAVING COUNT(*)=(SELECT COUNT(DISTINCT room) FROM class) );
/*Question 6*/
SELECT DISTINCT f.fname
FROM Faculty f
WHERE 5 > (SELECT COUNT (E.snum)
           FROM Class c, Enrolled e
		   WHERE c.name = e.cname
		   AND c.fid = f.fid)
/* Question 7 */
SELECT s.level, AVG(s.age)
FROM Student s
GROUP BY s.level
/* Question 8 */
SELECT s.level, AVG (s.age)
FROM Student s
WHERE s.level <> 'JR'
GROUP BY s.level
/* Question 9 */
SELECT f.fname, COUNT(*) AS CourseCount 
FROM Faculty f, Class c
WHERE f.fid = c.fid
GROUP BY f.fid, f.fname
HAVING MIN(c.room) = MAX (c.room) AND MAX(c.room) = 'R128';
/*Question 10 */
SELECT DISTINCT s.sname
FROM Student s
WHERE s.snum IN (SELECT e.snum
                 FROM Enrolled e
				 GROUP BY e.snum
				 HAVING COUNT(*) >= ALL(SELECT COUNT(*)
				                        FROM Enrolled e2
										GROUP BY e2.snum))
/*Question 11 */
SELECT DISTINCT s.sname
FROM Student s
WHERE s.snum NOT IN (SELECT e.snum
                     FROM Enrolled e)
/*Question 12 */
SELECT s.age, s.level
FROM Student s
GROUP BY s.age, s.level
HAVING s.level IN (SELECT s1.level
                   FROM Student s1
				   WHERE s1.age = s.age
				   GROUP BY s1.level, s1.age
				   HAVING COUNT(*) >= ALL(SELECT COUNT(*)
				                          FROM Student s2
										  WHERE s1.age = s2.age
										  GROUP BY s2.level, s2.age))










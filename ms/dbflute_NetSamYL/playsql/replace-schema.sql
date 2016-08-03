CREATE TABLE EMP(
	ID INTEGER NOT NULL PRIMARY KEY, 
	NAME VARCHAR(20),
	HIRE_DATE DATE,
	DEPT_ID INTEGER, 
	VERSION_NO NUMERIC(8)
);

CREATE TABLE DEPT(
	ID INTEGER NOT NULL PRIMARY KEY, 
	NAME VARCHAR(20), 
	VERSION_NO INTEGER
);

ALTER TABLE EMP ADD CONSTRAINT  DEPT_ID_FK FOREIGN KEY (DEPT_ID) REFERENCES DEPT (ID);

INSERT INTO DEPT VALUES(1, 'ACCOUNTING', 1);
INSERT INTO DEPT VALUES(2, 'RESEARCH', 1);
INSERT INTO DEPT VALUES(3, 'SALES', 1);
INSERT INTO DEPT VALUES(4, 'OPERATIONS', 1);

INSERT INTO EMP VALUES(1, 'SMITH', '1980-12-17', 2, 1);
INSERT INTO EMP VALUES(2, 'ALLEN', '1981-02-20', 3, 1);
INSERT INTO EMP VALUES(3, 'WARD', '1981-02-22', 3, 1);
INSERT INTO EMP VALUES(4, 'JONES', '1981-04-02', 2, 1);
INSERT INTO EMP VALUES(5, 'MARTIN', '1981-09-28', 3, 1);
INSERT INTO EMP VALUES(6, 'BLAKE', '1981-05-01', 3, 1);
INSERT INTO EMP VALUES(7, 'CLARK', '1981-06-09', 1, 1);
INSERT INTO EMP VALUES(8, 'SCOTT', '1982-12-09', 2, 1);
INSERT INTO EMP VALUES(9, 'KING', '1981-11-17', 1, 1);
INSERT INTO EMP VALUES(10, 'TURNER', '1981-09-08', 3, 1);
INSERT INTO EMP VALUES(11, 'ADAMS', '1983-01-12', 2, 1);
INSERT INTO EMP VALUES(12, 'JAMES', '1981-12-03', 3, 1);
INSERT INTO EMP VALUES(13, 'FORD', '1981-12-03', 2, 1);
INSERT INTO EMP VALUES(14, 'MILLER', '1982-01-23', null, 1);

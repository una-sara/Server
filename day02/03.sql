#����ָ�������ݿ⣬������ڵĻ�
DROP DATABASE IF EXISTS jd;
#�����µ����ݿ�jd
CREATE DATABASE jd;
#�������ݿ�jd
USE jd;
#��������ѧ�����ݵı�student
#ѧ�š��������Ա𡢷���
CREATE TABLE student(
  sid INT,
  name VARCHAR(8), #variable character
  sex VARCHAR(1),  #M->��  F->Ů
  score INT
);
#��������
INSERT INTO student VALUES('1','tom','M','87');
INSERT INTO student VALUES('2','jerry','F','92');
#��ѯ����
SELECT * FROM student;




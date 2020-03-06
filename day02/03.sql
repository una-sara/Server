#丢弃指定的数据库，如果存在的话
DROP DATABASE IF EXISTS jd;
#创建新的数据库jd
CREATE DATABASE jd;
#进入数据库jd
USE jd;
#创建保存学生数据的表student
#学号、姓名、性别、分数
CREATE TABLE student(
  sid INT,
  name VARCHAR(8), #variable character
  sex VARCHAR(1),  #M->男  F->女
  score INT
);
#插入数据
INSERT INTO student VALUES('1','tom','M','87');
INSERT INTO student VALUES('2','jerry','F','92');
#查询数据
SELECT * FROM student;




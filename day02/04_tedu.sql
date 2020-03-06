#丢弃数据库tedu，如果存在的话
DROP DATABASE IF EXISTS tedu;
#创建数据库tedu
CREATE DATABASE tedu;
#进入该数据库
USE tedu;
#创建保存员工数据的表emp
CREATE TABLE emp(
  eid INT,
  ename VARCHAR(8),
  addr VARCHAR(10),
  phone INT  
);



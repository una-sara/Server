#丢弃数据库dang，如果存在
DROP DATABASE IF EXISTS dang;
#创建数据库dang
CREATE DATABASE dang;
#进入数据库dang
USE dang;
#创建保存图书数据的表book
CREATE TABLE book(
  bid INT,
  title VARCHAR(16),
  price INT
);
#插入数据
INSERT INTO book VALUES('1','html','36');
INSERT INTO book VALUES('2','javascript','69');
INSERT INTO book VALUES('3','小然的幸福生活','88');
#查询数据
SELECT * FROM book;
#�������ݿ�dang���������
DROP DATABASE IF EXISTS dang;
#�������ݿ�dang
CREATE DATABASE dang;
#�������ݿ�dang
USE dang;
#��������ͼ�����ݵı�book
CREATE TABLE book(
  bid INT,
  title VARCHAR(16),
  price INT
);
#��������
INSERT INTO book VALUES('1','html','36');
INSERT INTO book VALUES('2','javascript','69');
INSERT INTO book VALUES('3','СȻ���Ҹ�����','88');
#��ѯ����
SELECT * FROM book;
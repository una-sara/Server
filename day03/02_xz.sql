#设置客户端连接服务器端编码
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS xz;
#创建数据库，设置存储的编码
CREATE DATABASE xz CHARSET=UTF8;
#进入数据库
USE xz;
#创建保存笔记本数据的表laptop
CREATE TABLE laptop(
  lid INT,
  title VARCHAR(128),
  price DECIMAL(7,2),
  stockCount SMALLINT,
  shelfTime DATE,
  isIndex BOOL
);
#插入数据
INSERT INTO laptop VALUES
(1,'小米Air',3999,500,'2018-12-1',TRUE),
('2','荣耀','4999','1500','2019-1-1',FALSE),
('3','联想E450','3699','300','2018-3-1',1);




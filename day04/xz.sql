#设置客户端连接服务器端编码
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS xz;
#创建数据库，设置存储的编码
CREATE DATABASE xz CHARSET=UTF8;
#进入数据库
USE xz;

#创建保存笔记本分类的表laptop_family
CREATE TABLE laptop_family(
  fid INT PRIMARY KEY,
  fname VARCHAR(6),
  laptopCount SMALLINT NOT NULL DEFAULT 0
);

#插入数据
INSERT INTO laptop_family VALUES(10,'联想',2);
INSERT INTO laptop_family VALUES(20,'戴尔',3);
INSERT INTO laptop_family VALUES(30,'小米',2);
INSERT INTO laptop_family VALUES(40,'苹果',2);
INSERT INTO laptop_family VALUES(50,'华硕',DEFAULT);
INSERT INTO laptop_family(fid,fname) VALUES(60,'神州');

#创建保存笔记本数据的表laptop
CREATE TABLE laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128) UNIQUE,
  price DECIMAL(7,2) DEFAULT 3000,
  spec VARCHAR(32) NOT NULL,
  detail VARCHAR(3000),
  shelfTime DATE,
  isOnsale BOOL,
  familyId INT,
  #将fimilyId设置为外键，取值到 laptop_family中的主键fid 
  FOREIGN KEY(familyId) REFERENCES laptop_family(fid)
);
#插入数据
INSERT INTO laptop VALUES(1,'ThinkPadE470',3999,'办公版','详情1','2018-10-1',1,10);
INSERT INTO laptop VALUES(2,'小米Air',4999,'开发版','详情2','2017-5-1',0,30);
INSERT INTO laptop VALUES(3,'灵越7000',4199,'游戏版','详情3','2019-3-1',1,20);
INSERT INTO laptop VALUES(4,'戴尔燃700',3899,'测试版','详情4','2019-5-1',1,20);
INSERT INTO laptop VALUES(5,'ThinkPadE430',3199,'办公版','详情5','2018-7-1',0,10);
INSERT INTO laptop VALUES(6,NULL,3399,'办公版','详情6','2017-7-1',0,20);
INSERT INTO laptop VALUES(17,NULL,3799,'办公版','详情7','2015-3-1',0,10);
INSERT INTO laptop VALUES(NULL,'苹果Air',DEFAULT,'办公版',DEFAULT,'2018-1-1',1,40);

INSERT INTO laptop(lid,title,spec) VALUES(NULL,'苹果Pro','开发版'); 

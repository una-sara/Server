#设置客户端连接服务器端的编码为uft8
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS xz;
#创建数据库,设置存储数据的编码为utf8
CREATE DATABASE xz CHARSET=UTF8;
#进入该数据库
USE xz;
#创建保存数据的表
CREATE TABLE user(
  uid INT,
  uname VARCHAR(9),
  upwd VARCHAR(12),
  email VARCHAR(32),
  phone VARCHAR(11),
  sex VARCHAR(1),#M/F
  userName VARCHAR(5),
  regTime VARCHAR(10),  #2019-12-25
  isOnline INT   #1->在线  0->不在线
);
#插入数据
INSERT INTO user VALUES
('1','dangdang','123456','dangdang@163.com','18112345678','M','小叮当','2019-5-1','1'),
('2','jingjing','123456','jing@163.com','1831111111','M','小静静','2018-9-1','0'),
('3','ranran','888888','ranran@163.com','18977777777','F','小然','2014-2-1','1');
#修改数据
UPDATE user SET upwd='777777',phone='19912345678' WHERE uid='1';
#删除数据
DELETE FROM user WHERE uid='2';
#查询数据
SELECT * FROM user;


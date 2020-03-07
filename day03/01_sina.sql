#设置客户端连接服务器端编码
SET NAMES UTF8;
#丢弃数据库sina
DROP DATABASE IF EXISTS sina;
#创建数据库sina，设置存储的编码
CREATE DATABASE sina CHARSET=UTF8;
#进入数据库
USE sina;
#创建保存新闻数据的表news
CREATE TABLE news(
  nid INT,
  title VARCHAR(32),
  ctime VARCHAR(10),
  content VARCHAR(5000),
  author VARCHAR(5),
  origin VARCHAR(10)
);
#插入数据
INSERT INTO news VALUES
('1','从民生“小事”感受','2019-6-4','内容1','小然','人民日报'),
('2','标题二','2019-6-3','内容2','小雪','新京报'),
('3','特朗普死于非命','2019-6-10','内容3','小梅','达内日报');
#修改数据
UPDATE news SET ctime='2019-6-3',content='最新消息' WHERE nid='1';
#删除数据
DELETE FROM news WHERE nid='2';




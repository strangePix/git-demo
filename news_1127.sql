drop database if exists news_1127;

create database if not exists news_1127;

use news_1127;


create table `news_detail`(
	`id` int primary key auto_increment,
	`title` varchar(100) not null,
	`summary` varchar(255),
	`author` varchar(50),
	`createdate` datetime not null
)engine=INNODB charset=utf8;

create table `news_comment`(
	`id` int primary key auto_increment,
	`newsid` int not null,
	`content` varchar(255) not null,
	`author` varchar(50),
	`createdate` datetime
)engine=INNODB charset=utf8;

alter table news_comment add CONSTRAINT fk_1 FOREIGN KEY (newsid) REFERENCES news_detail (id);


insert into `news_detail` (title,summary,author,createdate) values ('知识产权保护，电商发展之基','随着移动互联网的普及，电子商务平台为经济发展增添新的驱动力，也使中国成为全球第一大网络零售大国','大雄','2019-06-11 22:21');
insert into `news_detail` (title,summary,author,createdate) values ('演员雷佳音出人保乐力加中国公益大使','演员雷佳音出人保乐力加中国公益大使，将在理性饮酒、环境保护、社区发展等多方面进行公益实践，旨在青年弓箭可持续发展的生态环境和积极地生活方式','大雄','2019-06-12 19:21');
insert into `news_detail` (title,summary,author,createdate) values ('手机丢了，怎么宝珠支付宝和微信的钱','你或你的亲友，可能都有过丢失手机的惨痛经历','大雄','2019-06-12 20:31');
insert into `news_detail` (title,summary,author,createdate) values ('《我不是药神》获烟灰缸奖一点也不冤','影视明星的行为很容易引发影迷的模仿，影视作品理应承担应有的社会责任，即使难以避免出现吸烟镜头','小师弟','2019-06-13 12:21');
insert into `news_detail` (title,summary,author,createdate) values ('四川本轮强降雨导致55处地区灾害发生','四川省气象台6月21日15时30分发布蓝色暴雨预警','老九君','2019-06-13 20:35');

insert into `news_comment` (newsid,content,author,createdate) values ('4','鸡蛋里挑个鸡仔，说有很多骨头','走归途','2019-06-13 20:20');
insert into `news_comment` (newsid,content,author,createdate) values ('4','这个电影应该引起更深刻的反思','M.','2019-06-13 20:21');
insert into `news_comment` (newsid,content,author,createdate) values ('4','扯淡！','罗泾','2019-06-13 20:23');
insert into `news_comment` (newsid,content,author,createdate) values ('5','别忘了收衣服','佚名','2019-06-13 23:15');
insert into `news_comment` (newsid,content,author,createdate) values ('5','希望灾害早日结束','罗泾','2019-06-13 23:22');


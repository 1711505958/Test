
--创建驴行网数据库
Create DATABASE Donkey_net;

--创建user（用户）表
create table user1(id   int  PRIMARY KEY,
name varchar(20),
password varchar(20),
age int,
gender varchar(10),
phoneNumber varchar(20),
grade int);

--往用户表里多条数据插入数据
insert into user1 (id,name,password,age, gender,phoneNumber,grade)values( 1,'胡汉三','123',23,'male',13225341478,1);
insert into user1 (id,name,password,age, gender,phoneNumber,grade)values( 2,'小蔺','254',25,'female',17863939188,2);
insert into user1 (id,name,password,age, gender,phoneNumber,grade)values( 3,'朱永琪','325',23,'male',13256321036,2);
insert into user1 (id,name,password,age, gender,phoneNumber,grade)values( 4,'张三','ssz2546',23,'female',18850154231,2);
insert into user1 (id,name,password,age, gender,phoneNumber,grade)values( 5,'Tom','hjg465',23,'male',15512039845,2);
insert into user1 (id,name,password,age, gender,phoneNumber,grade)values( 6,'盛师壮','hupeng157',23,'male',18230645892,2);

--查询一下用户表的数据
select * from user1;

--创建journey（景点）表
create table journey
(
spId   int  PRIMARY KEY,
spName varchar(20),
spAddress varchar(20),
spDate varchar(20),
spContent varchar(100)
 );

 --往景点表里插入数据
 insert into journey (spId,spName,spAddress,spDate,spContent)values( 1,'栈桥','大学路',11.23,'大桥流水');
 insert into journey (spId,spName,spAddress,spDate,spContent)values( 2,'八大关','香港中路',6.28,'海水树林');
 insert into journey (spId,spName,spAddress,spDate,spContent)values( 3,'极地海洋世界','中山路',7.1,'海底景观');
 insert into journey (spId,spName,spAddress,spDate,spContent)values( 4,'中山公园','延安一路',6.28,'公园动物园');
 insert into journey (spId,spName,spAddress,spDate,spContent)values( 5,'信号山','信号山公园',6.29,'建筑物');
 insert into journey (spId,spName,spAddress,spDate,spContent)values( 6,'五四广场','香港东路',7.3,'音乐喷泉');
 insert into journey (spId,spName,spAddress,spDate,spContent)values( 7,'青岛大学','青大一路',7.24,'建筑文化');

 --从journry表查询数据
 select * from journey;

 --创建userJourney表
 create table  userJourney
(
  uid int,
  jid int ,
 primary key(uid, jid),
 uName varchar(20),
 jName varchar(30)
);

--往userJourney插入数据
insert  into  userJourney(uid,jid,uName,jName) values(1,1,'胡汉三','栈桥');
insert  into  userJourney(uid,jid,uName,jName) values(2,3,'小蔺','八大关');
insert  into  userJourney(uid,jid,uName,jName) values(3,4,'ssz','中山公园');
insert  into  userJourney(uid,jid,uName,jName) values(4,2,'朱永琪','青岛大学');

--从userJourney查询数据

select * from userJourney
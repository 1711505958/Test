
--����¿�������ݿ�
Create DATABASE Donkey_net;

--����user���û�����
create table user1(id   int  PRIMARY KEY,
name varchar(20),
password varchar(20),
age int,
gender varchar(10),
phoneNumber varchar(20),
grade int);

--���û�����������ݲ�������
insert into user1 (id,name,password,age, gender,phoneNumber,grade)values( 1,'������','123',23,'male',13225341478,1);
insert into user1 (id,name,password,age, gender,phoneNumber,grade)values( 2,'С��','254',25,'female',17863939188,2);
insert into user1 (id,name,password,age, gender,phoneNumber,grade)values( 3,'������','325',23,'male',13256321036,2);
insert into user1 (id,name,password,age, gender,phoneNumber,grade)values( 4,'����','ssz2546',23,'female',18850154231,2);
insert into user1 (id,name,password,age, gender,phoneNumber,grade)values( 5,'Tom','hjg465',23,'male',15512039845,2);
insert into user1 (id,name,password,age, gender,phoneNumber,grade)values( 6,'ʢʦ׳','hupeng157',23,'male',18230645892,2);

--��ѯһ���û��������
select * from user1;

--����journey�����㣩��
create table journey
(
spId   int  PRIMARY KEY,
spName varchar(20),
spAddress varchar(20),
spDate varchar(20),
spContent varchar(100)
 );

 --����������������
 insert into journey (spId,spName,spAddress,spDate,spContent)values( 1,'ջ��','��ѧ·',11.23,'������ˮ');
 insert into journey (spId,spName,spAddress,spDate,spContent)values( 2,'�˴��','�����·',6.28,'��ˮ����');
 insert into journey (spId,spName,spAddress,spDate,spContent)values( 3,'���غ�������','��ɽ·',7.1,'���׾���');
 insert into journey (spId,spName,spAddress,spDate,spContent)values( 4,'��ɽ��԰','�Ӱ�һ·',6.28,'��԰����԰');
 insert into journey (spId,spName,spAddress,spDate,spContent)values( 5,'�ź�ɽ','�ź�ɽ��԰',6.29,'������');
 insert into journey (spId,spName,spAddress,spDate,spContent)values( 6,'���Ĺ㳡','��۶�·',7.3,'������Ȫ');
 insert into journey (spId,spName,spAddress,spDate,spContent)values( 7,'�ൺ��ѧ','���һ·',7.24,'�����Ļ�');

 --��journry���ѯ����
 select * from journey;

 --����userJourney��
 create table  userJourney
(
  uid int,
  jid int ,
 primary key(uid, jid),
 uName varchar(20),
 jName varchar(30)
);

--��userJourney��������
insert  into  userJourney(uid,jid,uName,jName) values(1,1,'������','ջ��');
insert  into  userJourney(uid,jid,uName,jName) values(2,3,'С��','�˴��');
insert  into  userJourney(uid,jid,uName,jName) values(3,4,'ssz','��ɽ��԰');
insert  into  userJourney(uid,jid,uName,jName) values(4,2,'������','�ൺ��ѧ');

--��userJourney��ѯ����

select * from userJourney
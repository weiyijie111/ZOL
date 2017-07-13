drop database if exists com;

create database com;
use com;

create table inst (   -- 用户表
	id int auto_increment primary key,
	username varchar(20) unique not null,
	password varchar(20) not null,
	email varchar(50) not null
)default charset='utf8';

create table news(   -- 新闻表
	nid int auto_increment primary key,
	ntitle varchar(50) not null unique,
	nimg varchar(50),
	ncontent longtext,
	ncreateDate date
)default charset='utf8';

create table institution(  -- 机构表 
	jid int auto_increment primary key,
	jname varchar(30) not null unique,
	jimg varchar(50),
	jcontent longtext,
	jcreateDate date
)default charset='utf8';

create table activity(  -- 活动
	hid int auto_increment primary key,
	htitle varchar(50) not null unique,
	himg varchar(50),
	hcontent longtext,
	hcreateDate date
)default charset='utf8';

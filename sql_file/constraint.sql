create table member(
	mid varchar(100) primary key,
    mname varchar(100) not null,
	tel varchar(100) unique,
    hobby varchar(100)
);

select * from information_schema.TABLE_CONSTRAINTS where TABLE_NAME = 'member';

create table mmm(
	mid varchar(100),
    mname varchar(100),
	tel varchar(100),
    hobby varchar(100)
);

-- 제약조건 추가
alter table mmm modify mname varchar(100) not null;

alter table mmm add constraint unique(tel);

alter table mmm add constraint primary key(mid);

-- 제약조건 제거
alter table mmm modify mname varchar(100) null;

alter table mmm drop constraint tel;

alter table mmm drop primary key;
alter table mmm modify mid varchar(100) null;

create table mmm2(
	-- mid varchar(100) primary key auto_increment,
	-- tid int auto_increment,
    pid int primary key auto_increment,
    hobby varchar(100)
);

insert into mmm2 
(pid, hobby) values
(1,'프로젝트하기');

select * from mmm2;

insert into mmm2 
(pid, hobby) values
(1,'놀러가기');

insert into mmm2 
(pid, hobby) values
(2, '공부하기');

insert into mmm2 
(hobby) values
('숙제하기');


delete from mmm2 where pid = 3;

insert into mmm2 
(hobby) values
('그룹토의하기');
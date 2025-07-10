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

create table reservation(
	rid int auto_increment primary key,
    title varchar(100),
    mmid varchar(100),
    
    -- 제약 조건 외래키 지정
    constraint foreign key(mmid) references member(mid)
);

insert into reservation 
(title, mmid) values
('회식','aaa');

select * from reservation;

insert into reservation 
(title) values
('소갈비찜');

-- 참조하는 테이블 컬럼에 존재하지 않는 값을 입력할 수 없다.
-- 외래키의 허용 : 참조 테이블 컬럼의 값 or null
insert into reservation 
(title, mmid) values
('노래방','ddd');

delete from member where mid = 'ccc';

-- 참조키에서 사용하고 있는 경우 삭제 불가
delete from member where mid = 'aaa';


create table board(
	id int auto_increment primary key,
    gid int,
    seq int,
    lev int,
    cnt int,
    title varchar(200),
    content varchar(999),
    pname varchar(100),
    pw varchar(100),
    upfile varchar(100),
    reg_date datetime
);

insert into board 
(id ,gid ,seq ,lev ,cnt,title,content,pname,pw ,upfile,reg_date) values
(1,1,0,0,0,'첫번째제목','첫번째내용','박범수','1111','family.jpg','2025-06-10');

insert into board 
(id ,gid ,seq ,lev ,cnt,title,content,pname,pw ,upfile,reg_date) values
(2,2,0,0,0,'두번째제목','두번째내용','김범수','1111','family1.jpg','2025-06-12'),
(3,3,0,0,0,'세번째제목','세번째내용','이범수','1111',null,'2025-06-13'),
(4,4,0,0,0,'네번째제목','네번째내용','모범수','1111','family3.jpg','2025-06-14'),
(5,5,0,0,0,'다섯번째제목','다섯번째내용','노범수','1111',null,'2025-06-21');


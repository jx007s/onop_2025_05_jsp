select id from mem2 where name = '쓴백이';

select * from exam where pid = 'aaa';

select * from exam where pid = (select id from mem2 where name = '쓴백이');

insert into exam
(id, hakgi, name, pid, reg_date, kor, eng, mat) values
(9, 1, 'final', (select id from mem2 where name = '단백이'), now(), 78,89,71);

select max(id)+1 from exam;

insert into exam
(id, hakgi, name, pid, reg_date, kor, eng, mat) values
((select max(id)+1 from exam ex), 1, 'final', 
 (select id from mem2 where name = '짠백이'), now(), 91,92,98
 );
 
select * , mid('가양미우수',interval(avg, 0, 60,70,80,90),1) as grade from 
(select * , tot / 3 as avg from 
(select *, ifnull(kor,0)+ifnull(eng,0)+ifnull(mat,0) as tot from exam) t1) qwer;

-- 조인
select professor.*, id from mem2
left outer join professor
on mem2.pro_id = pid
where id = 'xxx';

-- 서브쿼리
select * from professor 
where pid = (select pro_id from mem2 where id = 'xxx');


select pid from 
(select * , mid('가양미우수',interval(avg, 0, 60,70,80,90),1) as grade from 
(select * , tot / 3 as avg from 
(select *, ifnull(kor,0)+ifnull(eng,0)+ifnull(mat,0) as tot from exam) t1) qwer) t2
where grade = '수';


select * from professor 
where pid = (select pro_id from mem2 where 
id = 
(select pid from 
(select * , mid('가양미우수',interval(avg, 0, 60,70,80,90),1) as grade from 
(select * , tot / 3 as avg from 
(select *, ifnull(kor,0)+ifnull(eng,0)+ifnull(mat,0) as tot from exam) t1) qwer) t2
where grade = '우')
);

select * from mem2
where id = 'aaa' or id = 'ddd';

select * from mem2
where id in ('aaa' , 'ddd');

select id from mem2
where name like '_백이';

select * from exam
where pid in (
select id from mem2
where name like  '_백이');



select * from exam
where mat > (61,81);

select * from exam
where mat >= all(61,81);


(select mat from exam ex
where pid = 'aaa');

select * from exam
where mat > any
(select mat from exam ex
where pid = 'aaa');

select * from exam
where mat > all
(select mat from exam ex
where pid = 'aaa');


 
 
 
 
 


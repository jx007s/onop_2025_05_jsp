select 5+4, 5-4, 5*4, 19/4, 19%4;

select *, kor+4, kor-4, kor*4, kor/4, kor%4 from exam;

-- 0: false, 1 : true
select 
10 > 20,
10 >= 20,
10 <= 20,
10 < 20,
10 = 20,
10 != 20,
10 <> 20;

select 
'장동건' >  '장서건',
'장동건' >= '장서건',
'장동건' <= '장서건',
'장동건' <  '장서건',
'장동건' =  '장서건',
'장동건' != '장서건',
'장동건' <> '장서건';

select 
'장동건' >  10,
'장동건' >= 10,
'장동건' <= 10,
'장동건' <  10,
'장동건' =  10,
'장동건' != 10,
'장동건' <> 10;
-- % : 0~n  개,  _ : 1개
select * from mem2 where name = '단백이';
select * from mem2 where name = '백이';
select * from mem2 where name = '_백이';
select * from mem2 where name like '_백이';
select * from mem2 where name like '백이';
select * from mem2 where name like '_이';
select * from mem2 where name like '__이';
select * from mem2 where name like '%이';  -- '이' 로 끝나는 글자
select * from mem2 where name like '%이%'; -- '이' 를 포함하는 글자

select * from exam where hakgi = 1;
select * from exam where name = 'semi';

select * from exam where hakgi = 1 and name = 'semi';
select * from exam where hakgi = 1 or name = 'semi';
select * from exam where hakgi = 1 && name = 'semi';
select * from exam where hakgi = 1 || name = 'semi';

select * from exam where kor between 60 and 70;
select * from exam where kor between 70 and 60;

select * from exam where kor >= 60 and kor <= 70;

select * from mem2 where mail = 1234;
select * from mem2 where mail != 1234;

-- select * from mem2 where mail not 1234;
-- select * from mem2 where mail = null;

select * from mem2 where mail is null;
select * from mem2 where mail is not null;

select concat(name, '안냐세요') from mem2;

select pid from exam;
select distinct pid from exam;
select distinct pid, name from exam;

select * from exam
order by name desc;

select * from exam
order by name desc, pid;


select * from exam
where hakgi = 1
order by name desc, pid;

select count(*) from mem2;

select count(mail) from mem2;

select sum(kor), sum(eng), avg(kor), max(kor), min(kor) from exam;

select sum(kor), sum(eng), avg(kor), max(kor), min(kor) from exam
where hakgi = 1;

select sum(kor) from exam;

select hakgi, sum(kor) from exam
group by hakgi;

select hakgi,name, avg(kor) from exam
where kor >= 60
group by hakgi, name;

select hakgi,name, avg(kor) from exam
group by hakgi, name
having avg(kor)>=60;

select hakgi,name, avg(kor) from exam
where kor >= 60
group by hakgi, name
having avg(kor)>=75
order by name;



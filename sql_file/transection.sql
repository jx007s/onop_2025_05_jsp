set @@autocommit = 1;  -- autocommit 사용하기
set @@autocommit = 0;  -- autocommit 해제하기

select @@autocommit;

insert into mem2 
(id, name, birth) values
('ggg','한가인','2016-08-09');

select * from mem2;

commit;

insert into mem2 
(id, name, birth) values
('hhh','두가인','2017-11-11');

rollback;

insert into mem2 
(id, name, birth) values
('iii','스티븐','2019-05-03'),
('kkk','이연걸','2022-09-13');

savepoint A;

insert into mem2 
(id, name, birth) values
('mmm','성룡','1966-05-04'),
('qqq','브래드피트','1968-07-01');

savepoint B;

insert into mem2 
(id, name, birth) values
('www','이소룡','1951-06-08'),
('rrr','실버스타스텔론','1945-09-14');

rollback to savepoint B;
rollback to savepoint A;
rollback;

SELECT * FROM mem2;

insert into mem2 
(id, birth, height) values 
('aaa','2002-06-02',184);


insert into mem2 
(id, mail, birth) values 
('bbb',1234,'2002-06-02'),
('ccc',2234,'2012-08-02'),
('ddd',3234,'2009-11-17')
;


-- 전체 변경
update mem2 set
name = '단백이' ;

-- 문자열 표현 : '' , ""
update mem2 set
name = '짠백이',
height = 175 
where id = "bbb"  /* 조건절 if 문 과 비슷 */
;

-- 삭제
delete from mem2 
where id = 'ccc';

-- 검색 
select id, name, height from mem2;

-- 연산자 사용 가능
-- as : 별칭 넣기
select id, name, height , height + 20 as hh20 from mem2;


select id, name, height , height + 20 as hh20 from mem2
where height > 180;



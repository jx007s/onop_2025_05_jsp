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

/*

EXAM 테이블을 생성 및 데이터 입력하세요

컬럼명

시번,  학기,   종류,   응시생, 응시일,  국어, 영어,  수학
id,  hakgi, name,  pid, reg_date, kor, eng,  mat
숫자  숫자,   문자     문자   날짜     숫자   숫자  숫자

1,1 , semi ddd '2019-5-4' 77 78 71
2,1 , semi eee '2019-5-4' 87 88 81
3,1 , final ddd '2019-7-4' 56 65 71
4,1 , final fff '2019-7-4' 76 65 41
5,2 , semi fff '2019-10-4' 97 98 91
6,2 , semi mmm '2019-10-4' 67 68 61
7,2 , final rrr '2019-12-4' 76 85 91
8,2 , final ttt '2019-12-4' 66 85 21
*/








-- 테이블 정의
create table person(
	id varchar(100),    /*  컬럼명 자료형  */
    birth date,
    name text,
    height int,
    reg_date datetime  /* 컬럼명 등 정의 명은 대소문자 구분 안함 */
);

-- 컬럼 추가
alter table person add email varchar(100);

-- 컬럼 자료형 변경
alter table person modify email varchar(50);

-- 컬럼 변경
alter table person change email mail int;

-- 컬럼 삭제
alter table person drop reg_date;

-- 테이블 목록
show tables;

-- 구조 보기
desc person;

-- 테이블 명 변경
alter table person rename member;

-- 테이블 복사
create table mem2 as select * from member;

-- 테이블 삭제
drop table member;


/*
공대남방 테이블을 정의하세요 shirt  =====================

숫자         문자     실수       날짜,      날짜시간,       정수
옷번호,     제품명,   가격,       출시일,      판매일,      크기(천단위)
*/

create table shirt(

	no int,
    title varchar(100),
    price double,
	reg_date date,
    sale_date datetime,
    size int
);


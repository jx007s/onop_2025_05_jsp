-- 이퀄조인
select * from exam, mem2
where mem2.id = pid;

select exam.* , mem2.name as m_name, birth from exam, mem2
where mem2.id = pid;

-- 왼쪽 외부 조인 :  exam이 모두 선택 ,  조건이 맞지 않는 mem2는 null 로 처리
select * from exam
left outer join mem2
on mem2.id = pid;

-- 오른쪽 외부 조인 : mem2 이 모두 선택 ,  조건이 맞지 않는 exam는 null 로 처리
select * from exam
right outer join mem2
on mem2.id = pid;

-- 내부조인 : 이퀄조인과 같다
select * from exam
inner join mem2
on mem2.id = pid;

select * from mem2
where friend = id;

-- 셀프조인 : 동일 테이블을 다중으로 사용하여 조인 , 테이블 별칭을 제공해야 한다. 
-- 이퀄 조인
select me.*,fr.id as fid, fr.name as fname 
from mem2 me, mem2 fr
where me.friend = fr.id;

-- select * from mem2, mem2;

select me.*,fr.id as fid, fr.name as fname 
from mem2 me
left outer join mem2 fr
on me.friend = fr.id;


select me.*,fr.id as fid, fr.name as fname 
from mem2 me
right outer join mem2 fr
on me.friend = fr.id;

/*
교수테이블을 생성하세요 (professor)
"pid" "NAME", "TEL"
학생테이블에 교수를 추가하시고 각 학생마다 교수를 지정하세요 (pid)
학생별 교수 이름을 출력하세요
*/

create table professor(
	pid varchar(100),
    NAME varchar(100),
    TEL varchar(100)
);

insert into professor 
(pid, name, tel) values
("pp1","김교수","1111"),
("pp2","이교수","2222"),
("pp3","박교수","3456");


select mem2.*, professor.name 
from mem2
left outer join professor
on pro_id = pid;









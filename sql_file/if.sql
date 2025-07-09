select 123.456, -123.456, abs(123.456), abs(-123.456); 
select 123.456, -123.456, ceiling(123.456), ceiling(-123.456); 
select 123.456, -123.456, floor(123.456), floor(-123.456); 
select 123.456, -123.456, truncate(123.456,2), truncate(-123.456,2), truncate(123.451,2), truncate(-123.451,2); 
select round(123.456), round(-123.456),round(123.456,2), round(-123.456,2); 

select pow(2,4), mod(15,7);
select greatest(12,7,91,45,23) , least(12,7,91,45,23);

select interval(76,  0,60,70,80,90);
 --                  1 2  3  4   5
select interval(76,  0,90,70,60,80);
 --                  1 2  3  4   5
 
select interval(76,  90,70,60,80);
 --                  1  2  3  4  
 
 select interval(80,  0,60,70,80,90);
  --                  1  2  3  4  5
  
select pi();

select *, ifnull(height, 0) from mem2;

select kor, if(kor>=70,'합격','불합격') from exam;

select kor, 
if(kor>=90,'수',if(kor>=80,'우',if(kor>=70,'미',if(kor>=60,'양','가')))) 
from exam;

select kor ,
case
	when kor >= 90 then '수'
    when kor >= 80 then '우'
    when kor >= 70 then '미'
    when kor >= 60 then '양'
    else '가'
end
from exam;

-- select '1234', password('1234');
select 
aes_encrypt('내용','qwer'),    hex(aes_encrypt('내용','qwer'));

-- 7D5C7A40009B3836A6C35D2ED353DCA0
select unhex('7D5C7A40009B3836A6C35D2ED353DCA0'),
aes_decrypt(unhex('7D5C7A40009B3836A6C35D2ED353DCA0'), 'qwer');

-- exam 테이블에서 총점, 평균을 계산하고 평균을 이용하여 수우미양가 를 출력하세요
-- 각 과목의 null 값은 0으로 대체하여 계산하세요
-- 평균은 소숫점 2자리에서 반올림 하세요

select * , 
ifnull(kor,0)+ifnull(eng,0)+ifnull(mat,0) as tot ,
round((ifnull(kor,0)+ifnull(eng,0)+ifnull(mat,0))/3,2) as avg,
mid('가양미우수', 
   interval((ifnull(kor,0)+ifnull(eng,0)+ifnull(mat,0))/3,0,60,70,80,90) , 1) 
      as grade
from exam;

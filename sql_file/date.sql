select now(), sysdate(), curdate(), curtime();

select year(now()), month(now()), day(now());
select dayofyear(now()), dayofmonth(now()), dayofweek(now());
/*
dayofweek
일 월 화 수 목 금 토
1  2 3 4 5  6 7
*/
select monthname(now()), dayname(now());

select week(now()), weekday(now()), weekofyear(now());
/*
weekday
월 화 수 목 금 토 일 
0  1 2 3 4 5  6 
*/

select hour(now()),minute(now()), second(now());

select now(), date_add(now(), interval 3 month), date_add(now(), interval -3 month), date_add(now(), interval 3 day), date_add(now(), interval -3 day);
select now(), date_sub(now(), interval 3 month), date_sub(now(), interval -3 month), date_sub(now(), interval 3 day), date_sub(now(), interval -3 day);

select now(), adddate(now(), interval 3 month), adddate(now(), interval -3 month), adddate(now(), interval 3 day), adddate(now(), interval -3 day);
select now(), subdate(now(), interval 3 month), subdate(now(), interval -3 month), subdate(now(), interval 3 day), subdate(now(), interval -3 day);

-- select time_add();
select now(), addtime(now(),'00:05:00'), addtime(now(),'-00:05:00');
select now(), subtime(now(),'00:05:00'), subtime(now(),'-00:05:00');

select datediff(now(), '2024-05-06'), datediff(now(), '2025-08-28');

select period_add(202510,05); -- 2025년 10월 + 5개월
select period_diff(202510,202709); -- 2025년10월 , 2027월09월 의 개월차

-- timestamp (초단위)
select now(), unix_timestamp(), unix_timestamp('1970-01-01 09:00:00'), unix_timestamp('1970-01-01 09:00:10');
-- 
select from_unixtime(0), from_unixtime(100) , from_unixtime(1752023436);

-- 일단위  날짜 -> 일 숫자
select to_days('0000-01-01'), to_days('0000-02-15'), to_days('0001-02-15'), to_days(now());
--                        1	46	411	739806

-- 일 숫자 -> 날짜  365 보다 큰 값에서 유효
select from_days(1), from_days(46), from_days(411), from_days(739806);

-- 시간 --> 초
select time_to_sec('00:23:45'), time_to_sec('01:01:01'), time_to_sec('2025-07-09 01:01:01');

select sec_to_time(100), sec_to_time(300), sec_to_time(4800), sec_to_time(24*60*60), sec_to_time(60*60*60);

select str_to_date('2022년 03월 20일','%Y년 %m월 %d일');


select date_format(now(), '%Y')
,date_format(now(), '%y')
,date_format(now(), '%M')
,date_format(now(), '%m')
,date_format(now(), '%c')
,date_format(now(), '%D')
,date_format(now(), '%d')
,date_format(now(), '%e')
,date_format(now(), '%w')  -- 일요일 : 0
,date_format(now(), '%W') 
,date_format(now(), '%a') 
,date_format(now(), '%p') 
,date_format(now(), '%H') 
,date_format(now(), '%k') 
,date_format(now(), '%h') 
,date_format(now(), '%l')
,date_format(now(), '%i')
,date_format(now(), '%s')
,date_format(now(), '%j')
,date_format(now(), '%r')
,date_format(now(), '%T')
;


select now(), now()+10;

-- mem2 성년인 사람의 올해 생일을 출력하세요

select *, 
str_to_date(concat(date_format(now(),'%Y-'),date_format(birth,'%m-%d')),'%Y-%m-%d') as now_birth 
from mem2
where adddate(birth, interval 19 year) < now();


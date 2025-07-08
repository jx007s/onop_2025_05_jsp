select '아기상어', left('아기상어', 2), right('아기상어', 2), 
mid('아기상어 뚜루루뚜루', 3,5), substring('아기상어 뚜루루뚜루', 3,5)
, substr('아기상어 뚜루루뚜루', 3,5), substr('아기상어 뚜루루뚜루', 3);

select substring_index('aaa,bb,cccc.dd,eeee,ff.gg,hh',',',3);
select substring_index('aaa,bb,cccc.dd,eeee,ff.gg,hh',',',-2);

-- length : byte : 한글 3byte
select length('abcd 아기상어 efg'), char_length('abcd 아기상어 efg');

select instr('오앤오피 onop 이지롱 OOn On', 'on'),instr('오앤오피 onop 이지롱 OOn On', 'On');

select ascii('A'), CHAR(65);

select upper('오앤오피 oN Op'), lower('오앤오피 oN Op');

select repeat('약탈자',5);

select insert('qwer asdfgh zxc',3,4,'변신'), reverse('qwer asdfgh zxc');

select replace('onop Onop on 사앤사피 육앤6피', 'on', '5앤');

select char_length( ltrim('     onop 풀스택     ')), char_length( rtrim('     onop 풀스택     ')),
char_length( trim('     onop 풀스택     '));

select lpad('오앤오피 풀스택',15,'@'),  rpad('오앤오피 풀스택',15,'@'), 
lpad('오앤오피 풀스택1234567890',15,'@'),  rpad('오앤오피 풀스택1234567890',15,'@');

-- exam :  1 ==> A학기, 2 ==> B학기 로 바꾸어 출력하세요

select *, (kor+eng+mat) as tot, (kor+eng+mat)/3 as res, 
replace(replace(hakgi, 1, 'A학기'),2,'B학기') as hg from exam;


select *, (kor+eng+mat) as tot, (kor+eng+mat)/3 as res, 
concat(char(hakgi+64),'학기') as hg from exam;


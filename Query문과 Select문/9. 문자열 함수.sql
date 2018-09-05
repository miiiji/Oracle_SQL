--대문자 -> 소문자
select 'ABcdEF', lower('ABcdEF')
from dual;

select ename, lower(ename)
from dual;

--소문자 -> 대문자
select 'ABcdEF', upper('ABcdEF')
from dual;

-- 대문자->소문자->대문자
select ename, lower(ename), upper(lower(ename))
from emp;

--첫글자만 대문자로 나머지는 소문자로
select 'aBCDEF', initcap('aBCEFG') 
from dual;

--concat 문자열연결
select concat('abc','def')
from dual;

select concat(concat(concat(concat('사원의 이름은',ename),'이고, 직무는'),job), '입니다.')
from emp;

--문자열의 길이(바이트랑 그냥 길이)
select length('abcd'), lengthb('abcd')
from dual;

--문자열 잘라내기
select substr('abcd',3),substrb('abcd',3) 
from dual;

--문자열 찾기
select instr('abcdabcdabcd','bc'), instr('abcdabcdabcd','bc',3)
from dual;

select instr('abcdefg','aaa') from dual;

SELECT ename
FROM emp
where ename like '_A%';

--A가 2번째 이후에 나오는거 찾기 
SELECT ename
FROM emp
where instr(name, 'A') > 1;

-- 특정 문자열로 채우기
select '문자열', lpad('문자열',20,'_'), rpad('문자열',20,'_')
from dual;

-- 공백 제거
select '      문자열         ', ltrim('      문자열         '), rtrim('      문자열         ')
from dual;

-- 문자열 대치
select 'abcdefg', replace('abcdefg','abc','kkkkkkkk')
from dual;




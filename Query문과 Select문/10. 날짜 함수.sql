select sysdate 
FROM dual;

select hiredate-100
FROM emp
WHERE job='SALESMAN';

select trunc(sysdate - hiredate)
from emp;

--반올림
select sysdate as "abc"
from dual;

SELECT sysdate, round(sysdate,'CC') as "년도두자리", round(sysdate,'YYYY') as '월기준',
        round(sysdate,'DDD') as "시기준", round(sysdate,'HH') as "분기준",
        round(sysdate,'MM') as "일기준", round(sysdate, 'DAY') as "주기준",
        round(sysdate,"MI") as "초기준"
FROM dual;

--월기준 반올림
select round(hiredate,'YYYY')
from emp;

--버림
SELECT sysdate, trunc(sysdate,'CC') as "년도두자리"
from dual;

SELECT empno, ename, sal, hiredate
FROM emp
WHERE hiredate >= '1981/01/01' and hiredate <= '1981/12/31';

select empno, ename, sal, hiredate
FROM emp
where trunc(hiredate,'YYYY') = '1981/01/01'; 

--두 날짜 사이의 일수를 구한다.
SELECT sysdate - hiredate
FROM emp;

-- 모든 사원이 근무한 개월 수를 구한다.(함수)
SELECT trunc(months_between(sysdate, hiredate))
FROM emp;

-- 개월수를 더한다
SELECT sysdate + 100, add_months(sysdate,100)
from dual;

-- 각 사원들의 입사일 후 100개월
SELECT hiredate, add_months(hiredate,100)
from emp;

-- 지정된 날짜를 기준으로 지정된 요일이 몇일인지
select sysdate, next_day(sysdate, '월요일') 
from dual;

-- 지정된 날짜의 월의 마지막 날짜를 구한다
select sysdate, last_day(sysdate)
from dual;

-- to_char : 오라클 -> 프로그램
SELECT sysdate, to_char(sysdate, 'YYYY-MM-DD HH:MI:SS AM')
FROM dual;

SELECT to_date('2018-03-20 01:58:20 오후', 'YYYY-MM-DD HH:MI:SS AM')
from dual;

select to_char(hiredate, 'YYYY-=-MM-DD') 
from emp;
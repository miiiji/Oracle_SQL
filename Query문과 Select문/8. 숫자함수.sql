SELECT 10 + 10
FROM dual;

--절대값
select abs(sal-2000)
FROM emp;

--소수점 이하는 버리기
select floor(12.3456)
from dual;

select floor(sal - sal*0.15)
from emp
where sal>=1500;

--반올림
select 12.345, rount(12.345)
from dual;

--소수점 바로 아래를 0번째라 생각하고 오른쪽은 양수 
select round(888.8888,2)
from dual;

--왼쪽은 음수
select round(888.8888,-2)
from dual;

select round(emp + emp*0.2,-2)
FROM emp
WHERE sal<=2000

--버림
SELECT trunc(sal,-2)
FROM emp;

-- 나머지 구하기
SELECT mod(10,3), mod(10,4)
from dual;


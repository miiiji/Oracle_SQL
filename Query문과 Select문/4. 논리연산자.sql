--  10번 부서에서 근무하고 있는 직무가 Manager인 사원의 사원번호, 이름 , 근무부서, 직무를 가져온다.

select empno,ename,deptno,job
from emp
where job='MANAGER' and deptno=10;

-- 입사년도가 1981년인 사원증에 급여가 1500 이상인 사원의 사원번호, 이름, 급여, 입사일을 가져온다.

select empno,ename,sal,hiredate
where emp
FROM '1981/01/01'<= hiredate and hiredate <='1981/12/31' and sal>1500;

select empno,ename,sal,hiredate
where emp 
from hiredate between '1981/01/01' and '1981/12/31' and sal>1500;


select empno,ename,deptno,sal
from emp
where deptno = 20 and sal >= 1500;

select empno,ename,mgr,job
from emp
where mgr=7698 and job='CLERK';

select empno,ename,sal
from emp
where not(sal between 1000 and 2000);

select empno,ename,deptno
from emp
where deptno = 20 or deptno = 30;

select empno,ename,job
from emp
where job='CLERK' or job='SALESMAN' or job='ANALYST';

select empno,ename,job
from emp
where job in ('CLERK','SALESMAN','ANALYST');

SELECT empno,ename
FROM  emp
WHERE not(empno in(7499,7566,7839));

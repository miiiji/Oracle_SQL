 select sum(sal)
 from emp;

 select sum(comm)
 from emp;

 select sum(sal)
 FROM emp
 where sal >= 1500;

 SELECT sum(sal)
 FROM emp
 where deptno = 20;

 select  sum(sal)
 FROM emp
 WHERE job = 'SALESMAN';


--error 로우가 안맞아서
 SELECT ename, sum(sal)
 FROM emp
 WHERE job = 'SALESMAN';

 SELECT trunc(avg(sal))
 FROM emp;

SELECT trunc(avg(comm))
FROM emp;

SELECT trunc(avg(nvl(comm,0)))
FROM emp;

SELECT trunc(avg(sal))
FROM emp
WHERE comm is not null;

SELECT trunc(avg(sal))
FROM emp
WHERE deptno = 30;

select avg(comm + sal)
FROM emp
WHERE job = 'SALESMAN'

select count(empno)
FROM emp;

select max(sal), min(sal)
FROM emp;

SELECT empno, ename, sal
FROM emp
order by sal asc;

SELECT empno, ename, sal
FROM emp
order by empno desc;

SELECT empno, ename
FROM emp
order by ename asc;

SELECT empno, ename,hiredate
FROM emp
order by hiredate desc;

SELECT ename,empno,sal
FROM emp
WHERE job='SALESMAN'
order by sal;

SELECT empno, ename, hiredate
FROM emp
WHERE hiredate between '1981/01/01' and '1981/12/31'
order by empno desc;

SELECT ename,sal,comm
FROM emp
order by comm;

SELECT ename,sal,comm
FROM emp
order by comm desc;

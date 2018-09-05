SELECT empno, ename, comm
FROM emp
WHERE comm is null;

SELECT empno, ename, comm
FROM emp
WHERE comm is not null;

SELECT ename, empno
FROM emp
WHERE mgr is null;

SELECT ename, empno
FROM emp
WHERE mgr is not null;

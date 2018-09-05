SELECT ename,empno
FROM emp
WHERE ename like 'F%';

SELECT ename,empno
FROM emp
WHERE ename like '%S';

SELECT ename,empno
FROM emp
WHERE ename='%A%';

SELECT ename,empno
FROM emp
WHERE ename='_A%';

SELECT ename,empno
FROM emp
WHERE ename='____';
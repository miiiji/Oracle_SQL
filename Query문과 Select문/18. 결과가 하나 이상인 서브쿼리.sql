-- 서브쿼리의 결과가 하나 이상인 경우 IN,ANY,ALL 등의 연산자 사용한다
-- 둘중 하나만 만족하면 된다면 in 사용
SELECT empno, ename, sal
FROM emp
WHERE deptno in (SELECT deptno
                FROM emp
                WHERE sal >= 3000);

SELECT empno, ename, hiredate
FROM emp 
WHERE deptno in (select deptno
                from emp  
                where job='CLERK');

SELECT dname, loc
FROM dept
WHERE deptno in (SELECT deptno
                FROM emp
                where mgr = (SELECT empno
                            from emp
                            where ename='KING'));

SELECT empno, ename, sal
FROM emp
WHERE empno in (SELECT mgr
                from emp
                WHERE job='CLERK');

--all 은 모두 검사하는것 
SELECT empno, ename, sal
FROM emp 
WHERE sal > all(select avg(sal)
                FROM emp
                group by deptno);

SELECT empno, ename, sal
FROM emp 
WHERE sal > (select max(avg(sal))
            FROM emp
            group by deptno);

SELECT ename, empno, sal
FROM emp
WHERE sal > all(SELECT min(sal)
                FROM emp
                group by deptno);


SELECT ename, empno, sal
FROM emp
WHERE sal < all(SELECT sal
                FROM emp
                WHERE job='SALESMAN');


SELECT ename, empno, sal
FROM emp
WHERE sal >  any (SELECT min(sal)
                FROM emp
                WHERE job='SALESMAN');

SELECT ename, empno, sal
FROM emp
WHERE hiredate <  any (SELECT hiredate
                        FROM emp
                        WHERE deptno = (SELECT deptno
                                         FROM dept
                                         WHERE loc ='DALLAS'));








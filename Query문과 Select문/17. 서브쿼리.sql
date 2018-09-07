-- 서브쿼리
-- 쿼리문 안에 들어가는 쿼리문을 서브쿼리라고 한다
-- 쿼리문 작성시 사용되는 값을 다른 쿼리문을 통해 구해야 할 경우

SELECT dname
FROM dept
WHERE deptno = (select deptno
                FROM emp
                WHERE ename = 'SCOTT' );

SELECT a2.dname 
FROM emp a1, dept a2
WHERE a1.deptno = a2.deptno and a1.ename = 'SCOTT';


SELECT a1.empno, a1.ename, a1.sal, a2.dname 
FROM emp a1, dept a2
WHERE a1.deptno = a2.deptno and a1.deptno=(SELECT deptno
                                            FROM emp 
                                            WHERE ename = 'SMITH');

select empno, ename, job
FROM emp
WHERE job = (SELECT job
            FROM emp
            WHERE ename = 'MARTIN');

--a1 : 사원의 정보
--a2 : 직속상관 정보
SELECT a1.empno, a1.ename, a2.ename
FROM emp a1, emp a2
WHERE a1.mgr = a2.empno and a1.mgr = (SELECT mgr 
                                      FROM emp
                                      WHERE ename = 'ALLEN'); 

SELECT empno, ename, deptno
FROM emp
WHERE deptno = (SELECT deptno
                FROM emp 
                WHERE ename = 'WARD');

SELECT empno, ename, sal
FROM emp 
WHERE sal > (SELECT avg(sal)
                  FROM emp 
                  WHERE job = 'SALESMAN');


SELECT trunc(avg(sal))
FROM emp a1, dept a2
WHERE a1.deptno = a2.deptno and a1.deptno = (SELECT deptno
                                            FROM dept
                                            WHERE loc ='DALLAS');

SELECT a1.ename,a1.empno,a2.loc
FROM emp a1, dept a2
WHERE a1.deptno = a2.deptno and a1.deptno = (SELECT deptno
                                            FROM dept
                                            WHERE dname='SALES');

SELECT a1.empno, a1.ename, a1.job
FROM emp a1, dept a2
WHERE a1.deptno = a2.deptno and a1.deptno = (SELECT deptno
                                            FROM dept
                                            WHERE loc ='CHICAGO' )
                            and a1.mgr = (select empno    
                                         FROM emp
                                         WHERE ename='BLAKE')




















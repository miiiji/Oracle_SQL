-- 두 select 문을 통해 얻어온 결과에 대해 집합 연산 할 수 있는 명령문 
-- UNION: 합집합
-- UNION: 합집합. 중복된 데이터를 모두가져온다
-- INTERSECT: 교집합
-- MINUS: 차집합

select empno, ename, job, deptno
FROM emp
WHERE deptno = 10;

SELECT empno, ename,job, deptno
FROM emp 
WHERE job = 'CLERK'

-- UNION
select empno, ename, job, deptno
FROM emp
WHERE deptno = 10;
union
SELECT empno, ename,job, deptno
FROM emp 
WHERE job = 'CLERK'

select empno, ename, job, deptno
FROM emp
WHERE deptno = 10;
union all
SELECT empno, ename,job, deptno
FROM emp 
WHERE job = 'CLERK'

select empno, ename, job, deptno
FROM emp
WHERE deptno = 10;
INTERSECT
SELECT empno, ename,job, deptno
FROM emp 
WHERE job = 'CLERK'

select empno, ename, job, deptno
FROM emp
WHERE deptno = 10;
MINUS
SELECT empno, ename,job, deptno
FROM emp 
WHERE job = 'CLERK'



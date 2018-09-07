--self join
--같은 테이블을 두번이상 조인하는것

select a1.empno, a1.ename, a2.ename
FROM emp a1, emp a2
WHERE a1.mgr = a2.empno and a1.ename = 'SMITH';

SELECT a2.empno, a2.ename, a2.job
FROM emp a1, emp a2
WHERE a1.empno = a2.mgr and a1.ename='FORD';

-- a1: smith 의 정보
-- a2: smith 의 직속상관 정보
-- a3 : 직속상관과 동일한 
SELECT a3.empno, a3.ename, a3.job
FROM emp a1, emp a2, emp a3
WHERE a1.mgr = a2.empno and a2.job = a3.job and a1.ename = 'SMITH';


--outer join
--조인조건에 해당하지 않기 때문에 결과에 포함되지 않는 로우까지 가져오는 조인
--간단히 말해서 그냥 모든 조인 다 들고오는거 

--a1: 각 사원의 정보
--a2: 직장상사의 정보

select a1.ename, a1.empno, a2.ename
FROM emp a1, emp a2
where a1.mgr = a2.empno;

-- 만약 null 까지 처리하려면 부족한 쪽에다가 +
select a1.ename, a1.empno, a2.ename
FROM emp a1, e mp a2
where a1.mgr = a2.empno(+);


select a2.dname, a1.empno, a1.ename, a1.sal
from emp a1, dept a2
where a1.deptno(+) = a2.deptno;
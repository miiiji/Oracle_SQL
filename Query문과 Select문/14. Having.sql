-- Having 
-- Group by 로 묶인 각 그룹들 중에 실제로 가져올
-- 그룹을 선택할 조건

SELECT deptno,avg(sal)
FROM emp
group BY deptno
HAVING avg(sal) >= 2000;
 
SELECT sum(sal)
FROM emp
group BY deptno
HAVING max(sal) <= 3000;

select sum(sal)
FROM emp
where job = 'CLERK'
group BY deptno
HAVING min(sal) <= 1000;

SELECT avg(sal)
FROM emp
WHERE sal >= 1500
group BY deptno
HAVING min(sal) >= 900 and max(sal) <= 10000

--Group By 는 select문을 수행하여 가져온 하나의 결과를 여러 그룹으로 나눠 
--그룹 각각의 총합과 평균등을 구할 수 있다

SELECT avg(sal)
FROM emp
group by deptno;

SELECT sum(sal)
FROM emp
group by job;

SELECT avg(sal)
FROM emp
where sal >= 1500
group by deptno;


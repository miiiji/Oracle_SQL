-- 각 사원들의 급여액과 급여액에서 1000을 더한 값 200을 뺀 값 2를 곱한 값 2로 나눈 값을 가져온다

select sal, sal+1000, sal-200, sal*2, sal/2
from emp;

-- 각 사원의 급여액, 커미션, 급여+커미션 액수를 가져온다

select sal, comm, comm+sal
from emp;

-- 위의 케이스에서 만약 comm값이 null일 경우 0으로 바꿔주는 방법
select sal, nvl(comm,0) , nvl(comm,0)+sal
from emp;

--사원들의 이름과 직무를 다음 양식으로 가져온다
--000사원의 담당 직무는 000 입니다

select ename|| '사원의 담당 직무는' || job || '입니다'
from emp;

--중복된 로우를 제거하는 키워드
--사원들이 근무하고 있는 근무 부서의 번호를 가져온다

select distinct deptno
from emp;
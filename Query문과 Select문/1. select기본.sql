-- 현재 접속한 데이터 베이스내의 테이블을 조회한다

select * from tab;

-- 원하는 테이블의 구조를 조회한다

desc LOGMNR_GLOBAL$;

-- 부서의 모든 정보를 가져온다

select *
from dept;

-- 사원의 모든 정보를 가져온다

select *
from emp;

-- 특정 컬럼의 데이터 가져오기
-- 사원의 이름과 사원번호를 가져온다

select empno, ename
from emp;

-- 사원의 이름과 사원 번호 직무 급여를 가져온다

select empno,ename,job,sal
from emp;

-- 부서 번호와 부서 이름을 가져온다 .

select deptno, dname
from dept;

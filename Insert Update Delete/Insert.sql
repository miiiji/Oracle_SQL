-- 테이블 내에 새로운 로우를 추가함
  
-- 필요한 테이블의 구조만 가져오기
create table emp01
as
SELECT empno, ename, job 
FROM emp
WHERE 1=0;

select *
from emp01;

-- 사원정보 추가
INSERT into emp01 (empno, ename, job)
values (1111, '홍길동', '인사');

INSERT into emp01 (empno, ename, job)
values (2222,'김길동','개발');

INSERT into emp01 (empno, ename, job)
values (3333,'최길동','인사');

INSERT into emp01 (empno, ename, job)
values (2222,'박길동','생산');

--컬럼 목록을 생략하는 경우
INSERT into emp01
values (5555, '황길동','생산');

--컬럼 목록에 모든 컬럼이 있지 않은 경우 -> 나머지 값은 null로
INSERT into emp01 (empno, ename)
values (6666, '이길동');

--서브쿼리로 테이블에 저장하기

drop table emp02;

create table emp02
AS
SELECT empno, ename, job 
from emp
where 1=0;

SELECT empno, ename, job
FROM emp;

INSERT into emp02(empno, ename, job)
select empno, ename, job
FROM emp;  

INSERT into emp02
select empno, ename, job 
from emp01;

create table emp03
AS
select empno, ename, job 
from emp 
WHERE 1=0;

create table emp04
AS
select empno, ename, hiredate
FROM emp
WHERE 1=0;

INSERT ALL
into emp03(empno,ename,job) values (empno, ename, job)
into emp04(empno,ename,hiredate) values(empno,ename,hiredate)
SELECT empno,ename,job,hiredate from emp;

-- 빈 테이블 형성
create table empmiji
AS
select empno,ename,sal
from emp
where 1=0;

INSERT into empmiji(empno,ename,sal)
select (empno,ename,sal)
FROM emp
WHERE sal>=1500;


create table emp05
AS
SELECT a1.empno,a1.ename,a2.dname
from emp a1, dept a2
WHERE a1.deptno = a2.deptno and 1=0;

INSERT into emp05 (empno,ename,dname)
select empno, ename, dname
from emp a1, dept a2
WHERE a1.deptno = a2.deptnol
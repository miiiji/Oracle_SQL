-- view는 디비에서 제공하는 가상의 테이블 의미
-- 개발의 용이성
-- 여러개의 테이블을 조인할 때
-- 사원의 사원번호 이름 급여 근무부서이름 근무지역을 가지고 있는 뷰를 생성
drop VIEW emp_dept_view;

CREATE view emp_dept_view
as
SELECT a1.empno, a1.ename, a1.sal, a2.dname, a2.loc
FROM emp a1, dept a2
WHERE a1.deptno = a2.deptno;

-- 뷰 조회
SELECT * from emp_dept_view;

--테이블 생성

CREATE table emp100
AS
SELECT * from emp;

drop table dept100;

CREATE table dept100
AS
SELECT * from dept;

create view emp100_dept100_view
as
SELECT a1.empno, a1.name, a1.sal, a2.dname, a2.loc
from emp100 a1, dept100 a2
WHERE a1.deptno = a2.deptno;

select*from emp100_dept100_view;

-- 원본 테이블에 데이터를 저장한다
insert into emp100 (empno, ename, sal, deptno)
values (5000,'홍길동',2000,10);

INSERT into emp100_dept100_view (empno, ename, sal)
VALUES (6000,'김길동',2000);

create view emp200_view
as
select empno,ename,sal
from emp100;

insert into emp200_view (empno,ename,sal)
VALUES (7000,'박길동',3000);

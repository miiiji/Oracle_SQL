drop table emp01;

create table emp01
as
select * from emp;

--사원들의 부서번호를 40번으로 변경
UPDATE emp01 
set deptno = 40;

UPDATE emp01
set hiredate = sysdate;

UPDATE emp01
set job = '개발장';

drop table emp01;

create table emp01
as
SELECT * from emp;


update emp01
set deptno = 40, hiredate = sysdate, job='개발자';

select * from emp01;

drop table emp01;

create table emp01
AS
select * from emp;

--10번 부서 -> 40번 부서
update emp01
set deptno = 40
where deptno = 10;

UPDATE emp01
set hiredate = sysdate, comm = 2000
WHERE job = 'SALESMAN';

SELECT * from emp01;

--전체 사원의 평균 급여보다 낮은 사원들의 급여를 50% 인상한다
UPDATE emp01
set sal = sal *1.5
where sal < (select avg(sal)
            from emp01);


select * from emp01;

update emp01
set job = 'Developer'
WHERE job = 'MANAGER';

update emp01
set sal = (select trunc(avg(sal))
            from emp01)
where deptno = 30;


UPDATE emp01
SET deptno =(select deptno
            FROM emp01
            WHERE loc = 'DALLAS')
WHERE mgr = (SELECT empno
            FROM emp01
            WHERE ename = 'BLAKE');

UPDATE emp01
set sal = (select max(sal)
            from emp01),
    mgr = (SELECT empno
           FROM emp01
            WHERE ename='KING')
WHERE deptno = 20;

DROP table emp01;

create table emp01;
as
select * from emp;

 
UPDATE emp01
SET job = (select job
            from emp01
            WHERE sal = (select max(sal)
                        from emp01)),
    sal = (select sal
            from emp01
            WHERE sal = (select max(sal)
                        from emp01))
WHERE job ='CLERK';
--위에랑 똑같은 방법
UPDATE emp01
set (job,sal)  = (select job,sal
                from emp01
                WHERE sal = (select max(sal)
                            from emp01))
WHERE job ='CLERK';





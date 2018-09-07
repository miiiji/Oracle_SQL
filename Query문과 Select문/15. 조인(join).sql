  --사원테이블 (emp)와 부서테이블(dept)를 join
  select *
  from emp;

  select *
  from dept;

  select *
  from emp, dept;

  --두테이블의 공통분모만 뽑아오기
  SELECT *
  from emp a1, dept a2
  where emp.deptno = dept.deptno;

  SELECT a1.empno, a1.ename, a2,dname
  FROM emp a1, dept a2
  WHERE a1.deptno = a2.deptno;

  SELECT a1.empno, a1.ename, a2.loc
  FROM emp a1, dept a2
  WHERE a1.deptno = aw.deptno;

  SELECT a1.empno, a1.ename, a1.jov
  FROM emp a1, dept a2
  WHERE a1.deptno = a2.deptno and a2.loc = 'DALLAS';

  SELECT avg(sal)
  FROM emp a1, dept a2
  WHERE a1.deptno = a2.deptno and a2.dname='SALES'

  SELECT a1.empno, a1.ename, a1.hiredate, a2.dname
  FROM emp a1, dept a2
  WHERE a1.deptno = a2.deptno and a1.hiredate between '1982/01/01' and '1982/12/31';

  SELECT a1.empno, a1.ename, a1.sal, a2.grade
  FROM emp a1, salgrade a2
  WHERE a1.sal between a2.losal and a2.hisal;

  SELECT a1.empno, a1.ename, a2.grade
  FROM emp a1, salgrade a2, dept a3
  WHERE a1.sal between a2.losal and a2.hisal and a1.deptno = a3.deptno and  a3.dname='SALES';

  SELECT sum(a1.sal), trunc(avg(a1.sal)), count(a1.sal), max(a1.sal), min(a1.sal)
  FROM emp a1, salgrade a2
  WHERE a1.sal between a2.losal and a2.hisal
  group BY a2.grade;

  SELECT a1.empno, a1.ename, a1.sal, a3.dname, a3.loc
  FROM emp a1, salgrade a2, dept a3
  WHERE a1.sal BETWEEN a2.losal and a2.hisal and a1.deptno = a3.deptno
        and a2.grade = 4;










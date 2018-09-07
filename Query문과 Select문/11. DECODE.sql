SELECT empno, ename, 
        decode(deptno, 10, '인사과',
                       20, '개발부',
                       30, '경영지원팀',
                       40, '생산부')
FROM emp;

select empno, ename, job,
       decode(job, 'CLERK', sal * 1.1,
                   'SALESMAN', sal * 1.15,
                   'PRESIDENT', sal * 3,
                   'MANAGER', sal * 1.05,
                   'ANALYST', sal * 1.2 )
from emp;


SELECT empno, ename,
        case when sal < 1000 then 'c등급'
             when sal >= 1000 and sal < 2000 then 'B등급'
             when sal >= 2000 then 'A등급'
        end 
from emp;

SELECT empno, ename,
        case when sal <= 1000 then sal * 2
             when sal > 1000 and sal < 2000 then sal * 0.5
             when sal >= 2000 then sal * 3
        end
from emp;



--index -> DB에서 검색속도 빠르게 하기위해
--보통 primary key를 사용 -> 자동으로 index가 설정되기 때문

drop table test_table100;

create table test_table100(
    data1 number CONSTRAINT TEST_TABLE100_PK primary key,
    data2 number not null
);

select index_name, table_name, column_name
from user_ind_columns;

--시간분석
drop table emp01;

CREATE table emp01
AS
SELECT * from emp;

SELECT * from emp01;
--insert를 무한대로 해서 몇십만개의 로우가 생기도록
insert into emp01
SELECT * from emp01;
--0.1초
insert into emp01 (ename)
values ('홍길동');

--emp01의ename에 index를 설정
create index emp01_idx
on emp01(ename);
--0.01초
insert into emp01 (ename)
values ('홍길동');




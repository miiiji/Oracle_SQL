drop table test_table1; 

create table test_table1(
    data1 number not null,
    data2 number not null
);

--컬럼추가
ALTER table test_table1
add (data3 number not null);

--컬럼의 데이터 타입 변경
ALTER table test_table1
MODIFY (data3 varchar2(100));

drop table test_table2;
--테이블 이름 변경
ALTER table test_table1
rename to test_table2;

--컬럼 이름 변경
ALTER table test_table2
rename column data3 to data4;

--컬럼 삭제
alter table test_table2
drop column data4;

--테이블 삭제
drop table test_table2;

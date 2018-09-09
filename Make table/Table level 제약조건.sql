-- 컬럼 레벨 
drop table test_table10;

create table test_table10(
    data1 number CONSTRAINT TEST_TABLE10_DATA_PK primary key,
    data2 number not null CONSTRAINT TEST_TABLE10_DATA2_UK unique,
    data3 number not null CONSTRAINT TEST_TABLE10_DATA3_FK
                    references emp(empno),
    data4 number not null CONSTRAINT TEST_TABLE10_DATA4_CK
                    CHECK(data4 between 1 and 10),
    data5 number not null CONSTRAINT TEST_TABLE10_DATA5_CK
                    CHECK(data5 in(10, 20, 30))
);

-- 테이블 레벨 제약조건
create table test_table1(
    data1 number,
    data2 number not null,
    data3 number not null,
    data4 number not null,
    data5 number not null,

    CONSTRAINT TEST_TABLE1_DATA1_PK primary key(data1),
    CONSTRAINT TEST_TABLE1_DATA2_UK unique(data2),
    CONSTRAINT TEST_TABLE1_DATA3_FK foreign key (data3)
                                    references emp(empno),
    CONSTRAINT TEST_TABLE1_DATA4_CK check(data4 between 1 and 10),
    CONSTRAINT TEST_TABLE1_DATA5_CK check(data5 in(10,20,30))
);

--복합키
drop table test_table12;

CREATE table test_table12(
    data1 number,
    data2 number,
    CONSTRAINT TEST_TABLE12_COMBO_PK primary key(data1,data2)
); 

INSERT into test_table12( data1, data2)
VALUES (100,200);

INSERT into test_table12( data1, data2)
VALUES (100,400);


 
 
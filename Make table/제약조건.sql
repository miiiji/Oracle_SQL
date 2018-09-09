--조건 컬럼에 대한 조건을 설정하는 것
-- not null : 컬럼에 null 표시 안함

drop table test_table;

create table test_table(
    data1 number,
    data2 number not null
);

insert into test_table(data1,data2)
values (100,101);

select * from test_table;

--data2는 null로 들어가는데 not null이니까 오류
insert into test_table(data1)
VALUES (200);

-- unique : 중복된 값을 허용하지않고 null은 무한대로 허용한다
drop table test_table2;

create table test_table2(
    data1 number,
    data2 number CONSTRAINT TEST_TABLE2_DATA2_UK unique
);

INSERT into test_table2 (data1, data2)
VALUES (100,101);

INSERT into test_table2 (data1, data2)
VALUES (200,201);

-- 오류 -> unique에 대한 제약조건
INSERT into test_table2 (data1, data2)
VALUES (300,201);

INSERT into test_table2 (data1, data2)
VALUES (200,null);
--null은 무한대로 넣을 수 있기 때문에 오류가 나지 않는다 
INSERT into test_table2 (data1, data2)
VALUES (200,null);

--primary key: not null + unique 

CREATE table test_table3(
    data1 number,
    data2 number CONSTRAINT TEST_TABLE3_DATA2_PK primary key 
);

INSERT into test_table3 (data1, data2)
VALUES (100,101);

INSERT into test_table3 (data1, data2)
VALUES (100);

--foreign key : 참조하고 있는 컬럼의 값들만 저장할 수 있어욤
CREATE table test_table4(
    data1 number CONSTRAINT TEST_TABLE4_PK PRIMARY key,
    data2 number not null
);

INSERT into test_table4 (data1, data2)
values (100,101);

INSERT into test_table4 (data1,data2)
values (200,201);

SELECT * from test_table4;

CREATE table test_table5(
    data3 number not null,
    data4 number CONSTRAINT TEST_TABLE5_DATA4_FK
            REFERENCES test_table4(data1)
);

INSERT into test_table5 (data3,data4)
values (1,100);

INSERT into test_table5 (data3,data4)
values (2,200);

-- 오류발생     
INSERT into test_table5 (data3,data4)
values (3,300);
 
--check 제약조건 : 컬럼에 저장될 값을 지정한다
drop table test_table6;

CREATE table test_table6(
    data1 number CONSTRAINT TEST_TABLE6_DATA2_CK
                CHECK (data1 between 1 and 10),
    data2 number CONSTRAINT TEST_TABLE6_DATA2_CK
                CHECK (data2 in(10,20,30))

);

INSERT into test_table6(data1,data2)
VALUES (1,10);

insert into test_table6(data1,data2)
VALUES (2,20);

-- 오류 -> 각각 위배가 됨
insert into test_table6(data1,data2)
VALUES (20,10);


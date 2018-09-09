-- 테이블을 생성한 후 제약조건 추가 혹은 제거 하려면 alter 구문 사용

CREATE table test_table20(
    data1 number,
    data2 number,
    data3 number,
    data4 number,
    data5 number,
    data6 number
);

-- null 제약조건 추가 not null만 좀 다름
ALTER table test_table20
MODIFY data1 not null;

--not null이니까 사용할 수 없다고 뜸
INSERT into test_table20 (data1)
values (null);

--primary key 제약 조건 추가
ALTER table test_table20
add CONSTRAINT TEST_TABLE20_DATA2_PK primary key(Data2);

insert into test_table20 (data1,data2)
values (1,10);

--foreign key 

alter table test_table20
add CONSTRAINT TEST_TABLE20_DATA3_FK foreign key(data3)
                REFERENCES emp(empno);

INSERT into test_table20 (data1,data2,data3)
values(10,100,7369);

--없는 값이니까 오류
INSERT into test_table20 (data1,data2,data3)
values(10,100,100);

-- unique 추가

ALTER table test_table20
add CONSTRAINT TEST_TABLE20_DATA4_UK unique(data4);

insert into test_table20 (data1,data2,data4)
values (13,103,100);
--오류 이미 있는 값이니까
insert into test_table20 (data1,data2,data4)
values (12,103,100);

--check 제약조건
alter  table test_table20
add CONSTRAINT TEST_TABLE20_DATA5_CK check(data5 between 1 and 10);

insert into test_table20 (data1,data2,data5)
values (14,104,5);
-- 오류 check의 범위를 벗어나니까
insert into test_table20 (data1,data2,data5)
values (14,104,30);

------- 제약조건 제거
CREATE table test_table30(
data1 number not null,
data2 number CONSTRAINT TEST_TABLE30_DATA2_PK primary key,
data3 number CONSTRAINT TEST_TABLE30_DATA3_FK 
                REFERENCES emp(empno),
data4 number CONSTRAINT TEST_TABLE30_DATA4_UK unique,
data5 number CONSTRAINT TEST_TABLE30_DATA5_CK
                check (data4 between 1 and 10),
data6 number CONSTRAINT TEST_TABLE30_DATA6_CK
                check (data6 in (10,20,30))
);
--not null 제약 조건 제거
ALTER table test_table30
MODIFY data1 null;

ALTER table test_table30
drop CONSTRAINT TEST_TABLE30_DATA2_PK;
 
insert into test_table30 (data2)
values (null);

--외래키 제약 조건 제거
ALTER table test_table30
drop CONSTRAINT TEST_TABLE30_DATA3_FK;

--unique 제약 조건 제거
alter table test_table30
drop CONSTRAINT TEST_TABLE30_DATA4_UK;

insert into test_table30 (data4)
values(100);

INSERT into test_table30 (data4)
values(100);

--check 제약 조건 제거 
ALTER table test_table30
DROP CONSTRAINT TEST_TABLE30_DATA5_CK;

ALTER table test_table30
DROP CONSTRAINT TEST_TABLE30_DATA6_CK;

--제약조건 활성/비활성 
CREATE table test_table40(
    data1 number CONSTRAINT TEST_TABLE40_DATA1_PK primary key
);

INSERT into test_table40 (data1)
values (100);

insert into test_table40 (data1)
values (100);

--비활성화
ALTER table test_table40
disable CONSTRAINT TEST_TABLE40_DATA1_PK;

INSERT into test_table40 (data1)
values (100);

select * from
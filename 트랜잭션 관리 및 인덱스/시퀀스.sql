-- primary key를 지정하기 애매한 경우 1부터 1씩
-- 증가되어 저장하는 컬럼을 정한다

-- start with 숫자: 시작값. 절대 최소값보다 작을 수 없고 생략 안돼
-- increment by: 증가값
-- cycle: 최대 혹은 최소값까지 가면 순환
-- cache: 시퀀스를 메모리상에서 관리 할 수 있도록 설정

drop table test_table1;

create table test_table1(
    idx number CONSTRAINT TEST_TABLE1_IDX_PK primary key,
    number_data number not null
)

--시퀀스 만들기
create SEQUENCE test_seq1
start with 0
increment by 1
minvalue 0;

--오류 -> 다음 시퀀스 값을 들고 와야 현재 값을 알 수 있다
SELECT test_seq1.currval from dual;

INSERT into test_table1(idx, number_data)
values (test_seq1.nextval,100);

INSERT into test_table1(idx, number_data)
values (test_seq1.nextval,200);

-- 지금부터는 뜸 오류 X
SELECT test_seq1.currval from dual;

--시퀀스 제거
drop SEQUENCE test_seq1;
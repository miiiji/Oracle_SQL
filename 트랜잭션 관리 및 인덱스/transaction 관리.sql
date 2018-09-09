-- 트랜잭션이란 최종결과를 내기까지 위한 
-- 하나의 작업 단위를 의미
-- db는 메모리 상에서만 작업 수행을 하고 디스크에는 반영 X
-- 실수로 인한 데이터의 유실을 막기위함
-- 디스크에 반영될 때 까지의 작업단위를 트랜잭션
-- 트랜잭션이 종료될때까지는 물리적 디스크에 반영 X

-- commit : 물리적 디스크에 반영됌

insert into test_table(data1,data2)
values(103,203);

update test_table
set data2 = 2000
WHERE data1 = 100;

--이상태에서 확인해보면 적용 XXXX 왜냐면 아직 커밋 안해서

-- roll back: 트랜잭션이 변경 되기 전 상태로 돌아감 (복원 , 커밋을 하기 전까지)
-- savepoint p1;
-- rollback to p1;
-- save 해 둔 p1으로 돌아감
-- savepoint 롤 백의 범위를 정해줌







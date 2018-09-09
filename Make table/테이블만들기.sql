--char : 고정길이 문자열 타입
-- varchar2(size) : 가변길이 문자열 타입
--char은 이름과 같은 정해진 곳에 쓰는게 더 좋음
--varchar2는 변화가 있는 곳에 쓰는게 좋음

--학생번호, 학생이름 ,학생나이, 학생 국어 영어 수학 점수

CREATE table stu_table(
    stu_idx number,
    stu_name char(10),
    stu_age number,
    stu_kor number,
    stu_eng number,
    stu math number
);
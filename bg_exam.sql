DROP TABLE t_member CASCADE CONSTRAINTS;

CREATE TABLE t_member (
    id VARCHAR2(10),
    pwd VARCHAR2(10),
    name VARCHAR2(50),
    email VARCHAR2(50),
    joinDate DATE DEFAULT SYSDATE
);

--수정 추가
insert into t_member
values('lee', '1212', '이순심', 'lee@test.com', SYSDATE);

--출력
SELECT * FROM t_member;
--모든 테이블에 대한 결과 출력 오라클은 해당 코드에서 ctrl+enter 하면 다시 실행 됨.
--반복하여 쓸 필요 없음

--수정 업데이트
UPDATE t_member SET name='이순신' WHERE id='lee';
--삭제
DELETE FROM t_member WHERE id='lee'
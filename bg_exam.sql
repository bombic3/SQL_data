DROP TABLE t_member CASCADE CONSTRAINTS;

CREATE TABLE t_member (
    id VARCHAR2(10),
    pwd VARCHAR2(10),
    name VARCHAR2(50),
    email VARCHAR2(50),
    joinDate DATE DEFAULT SYSDATE
);

--���� �߰�
insert into t_member
values('lee', '1212', '�̼���', 'lee@test.com', SYSDATE);

--���
SELECT * FROM t_member;
--��� ���̺� ���� ��� ��� ����Ŭ�� �ش� �ڵ忡�� ctrl+enter �ϸ� �ٽ� ���� ��.
--�ݺ��Ͽ� �� �ʿ� ����

--���� ������Ʈ
UPDATE t_member SET name='�̼���' WHERE id='lee';
--����
DELETE FROM t_member WHERE id='lee'
--employees ���̺��� AD�� �����ϸ鼭 �ڿ� ������� ���ڿ��� 3���� ������ ���� ����
--���� ������ ��ȸ(job_id)
SELECT * FROM employees WHERE job_id LIKE 'AD___';

--employees ���̺��� manager_id�� null ���� ���� ������ ���
SELECT * FROM employees WHERE manager_id IS null;

--employees ���̺��� salary�� 400 �ʰ��ϸ鼭 job_id�� IT_PROG�� ���� ��ȸ
SELECT * FROM employees WHERE salary > 400 AND job_id = 'IT_PROG';


SELECT * FROM employees WHERE salary > 400 
AND job_id = 'IT_PROG' 
OR job_id = 'FI_ACCOUNT';

SELECT * FROM employees WHERE employee_id <> 105;

SELECT * FROM employees WHERE manager_id IS NOT null;

SELECT LOWER (last_name) LOWER����, 
       UPPER (last_name) UPPER����, 
       INITCAP(email) INITCAP����
FROM employees;





--employees ���̺��� job_id ������ ���� ù° �ڸ����� �����ؼ� �� ���� ���ڸ� ���
SELECT job_id, SUBSTR(job_id, 1, 2) FROM employees;

--employees ���̺��� job_id �� ���ڿ��� ACCOUNT �� ACCNT �� ����
--REPLACE('���ڿ�' or �� �̸�, '�ٲٷ��� ���ڿ�', '�ٲ� ���ڿ�')
SELECT job_id, REPLACE(job_id, 'ACCOUNT', 'ACCNT') FROM employees;

--employees ���̺��� first_name �� ���� 12�ڸ��� ���ڿ� �ڸ��� �����
--first_name �� ������ ���� 12�ڸ����� ������ ���ʿ������� *�� ä���� ���
SELECT first_name, LPAD(first_name, 12, '*') FROM employees;

--���� ���� : TRIM - �¿��� ���� ����
SELECT 'star' || TRIM (' - space - ') || 'end' ���ŵ�_���� FROM dual;

--employees ���̺��� salary �� 30�Ϸ� ���� ���� �Ҽ��� ù° �ڸ�,
--�Ҽ��� ��° �ڸ�, ���� ù° �ڸ����� �����Ͽ� ���
SELECT salary,
        salary/30 �ϱ�,
        TRUNC(salary/30, 0) ������0,
        TRUNC(salary/30, 1) ������1,
        TRUNC(salary/30, -1) ������2
FROM employees;
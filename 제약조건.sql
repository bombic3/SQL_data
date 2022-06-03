--��������

--### ��������
-- - ���� ���� ��Ģ�� �´� �����͸� �Է¹ް� ��Ģ�� ��߳��� �����ʹ� �ź��Ͽ� ������ ���Ἲ�� ��Ű�� ���
--1. �⺻Ű ���� ����
--2. �ܷ� Ű ���� ����
--3. ����Ű
--4. NOT NULL
--5. CHECK

-- �⺻Ű ���� ���� : ������ �ߺ� ����
INSERT INTO departments
VALUES (100, 'Sample_Dept', 200, 1700);
-- 100 �־ �ȵ� unique �� �ߺ� �ȵȴ� ���
-- 1000 ������ ��

-- �ܷ�Ű ���� ���� : �� ���� �θ� ���̺��� ������ ���� �ݵ�� ����
INSERT INTO departments(department_id, department_name, manager_id, location_id)
VALUES (273, 'Sample_Dept', 200, 111);
-- integrity constraint ~ parent key not found -> �θ��� �� ����
-- 111�� �θ����̺��� �࿡ �������� ����

-- ����Ű ���� ���� : �ߺ��� ������� ������ null�� ��� ����
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number,
                      hire_date, job_id, salary)
VALUES (207, 'first_name', 'last_name', 'SKING', '111.11.11', 
        to_date('030617', 'YYMMDD'), 'IT_PROG', 6000);
--  unique -> �ߺ� ����

-- NOT NULL : null ���� ������� �ʴ´�.
INSERT INTO departments(department_id, department_name, manager_id, location_id)
VALUES (273, null, 200, 700);
-- cannot insert NULL into -> null ������

-- CHECK : ������ ���� �� ������ ���� ���
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number,
                      hire_date, job_id, salary)
VALUES (207, 'first_name', 'last_name', 'TEST', '111.11.11', 
        to_date('030617', 'YYMMDD'), 'IT_PROG', 0);
-- check constraint -> üũ ���������� �� ����
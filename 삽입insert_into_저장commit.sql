-- ����insert_into_����commit

--departments ���̺��� department_id�� 271, 
--department_name �� ��Sample_Dept��, manager_id �� 200, location_id �� 1700�� ���� ����
INSERT INTO departments (department_id, department_name, manager_id, location_id)
VALUES (271, 'Sample_Dept', 200, 1700);
-- ���߰��Ǿ����ϴ�
INSERT INTO departments
VALUES (271, 'Sample_Dept', 200, 1700);
-- ��ü�� �Է��Ҷ��� �ʵ�� ��������, �κ��Է½� �ʵ�� ǥ��

SELECT *
FROM departments;
-- Ȯ��

SELECT *
FROM departments
ORDER BY department_id DESC;
-- �������� > �ֽŰ� ���� ���̵���

commit;



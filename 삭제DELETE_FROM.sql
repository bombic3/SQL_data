-- ����DELETE_FROM

--departments ���̺��� department_name�� ��Sample_Dept���� ���� ����
-- �Ϲ����� ���
DELETE FROM departments
WHERE department_name = 'Sample_Dept';

-- ���������� ����� ���
DELETE FROM departments
WHERE department_id IN (SELECT department_id
                        FROM employees
                        WHERE department_name = 'Sample_Dept');
                        
-- Ȯ��
SELECT *
FROM departments
ORDER BY department_name DESC;

-- ����
commit;
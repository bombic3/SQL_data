SELECT
    *
FROM employees
ORDER BY commission_pct;

SELECT salary*commission_pct
FROM employees
ORDER BY commission_pct;

--employees ���̺��� commission_pct�� ���ϵ�
--commission_pct�� null�� ���� 1�� ġȯ�Ͽ� mommission_pct�� ���� ����� ���
SELECT salary*NVL(commission_pct,1)
FROM employees
ORDER BY commission_pct;

--employees ���̺��� first_name, last_name, department_id, salary �� ����ϵ�
--department_id�� 60�� ��� �޿��� 10% �λ��� ���� ��10%�λ��� ���� ���,
--������ ��쿡�� ������ ���� �����λ� ���
SELECT first_name, last_name, department_id, salary �����޿�,
    DECODE(department_id, 60, salary*1.1, salary) �����ȱ޿�,
    DECODE(department_id, 60, '10%�λ�', '���λ�') �λ󿩺�
FROM employees;

SELECT employee_id, first_name, last_name, salary,
    CASE
        WHEN salary >= 9000 THEN '�����޿�'
        WHEN salary BETWEEN 6000 AND 8999 THEN '�����޿�'
        ELSE '�����޿�'
    END AS �޿����
FROM employees
WHERE job_id = 'IT_PROG';

--RANK, DENSE_RANK, ROW_NUMBER �Լ��� ���� �̿��ؼ�
--emplyees ���̺��� salary ���� ���� ������� ������ ���
SELECT employee_id, salary,
    RANK() OVER(ORDER BY salary DESC) RANK_�޿�,
    DENSE_RANK() OVER(ORDER BY salary DESC) DENSE_RANK_�޿�,
    ROW_NUMBER() OVER(ORDER BY salary DESC) ROW_NUMBER_�޿�
FROM employees;


--RANK, DENSE_RANK, ROW_NUMBER �Լ��� ���� �̿��ؼ� 
--department_id �ȿ��� salary ���� ���� ������� ���
SELECT
    A.employee_id,
    A.department_id,
    B.department_name,
    salary,
    RANK() OVER (PARTITION BY A.department_id ORDER BY salary DESC) RANK_�޿�,
    DENSE_RANK() OVER (PARTITION BY A.department_id ORDER BY salary DESC) DENSE_RANK�޿�,
    ROW_NUMBER() OVER (PARTITION BY A.department_id ORDER BY salary DESC) ROW_NUMBER�޿�
FROM employees A, departments B
WHERE A.department_id = B.department_id
ORDER BY B.department_id, A.salary DESC;

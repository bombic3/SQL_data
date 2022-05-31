--employees ���̺��� salary�� �� ���� �� ������ Ȯ��
SELECT COUNT(salary) FROM employees;

--employees ���̺��� salary�� �հ�� ��� ���ϱ�, �� ����� avg�� ������� �� ��
SELECT COUNT(salary) �հ�, AVG(salary) ���, SUM(salary)/COUNT(salary) �������
FROM employees;

--employees ���̺��� salary�� �ִ� �ּڰ�, first_name �Բ� ���
SELECT MAX(salary) �ִ밪, MIN(salary) �ּҰ�, MAX(first_name) �ִ빮�ڰ�, MIN(first_name) �ּҹ��ڰ�
FROM employees;

--employees ���̺��� employee_id�� 10 �̻��� ������ ���� job_id���� �׷�ȭ �Ͽ�
--job_id�� �� �޿��� job_id�� ��� �޿�, job_id�� �� �޿� ������ �������� ����
SELECT job_id ����, SUM(salary) ������_�ѱ޿�, AVG(salary) ������_��ձ޿�
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
ORDER BY ������_�ѱ޿� DESC, ������_��ձ޿�;

-- �� 1���׷� : job_id , 2���׷� : manager_id�� �׷�ȭ
SELECT job_id job_id_��׷�,
        manager_id manager_id_�߱׷�,
        SUM(salary) �׷���_�ѱ޿�,
        AVG(salary) �׷���_��ձ޿�
FROM employees
WHERE employee_id >= 10
GROUP BY job_id, manager_id
ORDER BY �׷���_�ѱ޿� DESC, �׷���_��ձ޿�;

--employees ���̺��� employee_id�� 10 �̻��� ������ ���� job_id���� �׷�ȭ �Ͽ� 
--job_id�� �� �޿��� 30000���� ū ���� ����ϰ� job_id�� �� �޿��� �������� �������� ����
SELECT job_id ����, SUM(salary) ������_�ѱ޿�, AVG(salary) ������_��ձ޿�
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
HAVING SUM(salary) > 30000
ORDER BY ������_�ѱ޿� DESC, ������_��ձ޿�;

--�ϴ�� 1:��
SELECT a.first_name, a.last_name, B.*
FROM employees A, job_history B
WHERE a.employee_id = b.employee_id
AND a.employee_id = 101;

--��������(equi join) : ���� ���̺��� ���� ������ ��ġ�ϴ� �ุ ��������
--���� �Ϲ����̰� ���� ���� ����
SELECT
    *
FROM employees A, departments B
WHERE a.department_id = b.department_id;

--employees ���̺�� departments ���̺�� locations ���̺��� �����Ͽ� 
--�� ������ ��� �μ��� ���ϴ� ���� �μ��� �������� ������� ��ȸ
SELECT a.employee_id, a.department_id, b.department_name, c.location_id, c.city
FROM employees A, departments B, locations C
WHERE a.department_id = b.department_id
AND b.location_id = c.location_id;


--���� ���ο��� ������ ���� ��Ȯ�� ��ġ�ϴ� ��쿡�� ����� ���
SELECT COUNT(*) ���εȰǼ�
FROM employees A, departments B
WHERE a.department_id = b.department_id;

SELECT COUNT(*)
FROM employees;

--(+) ��ȣ�� ���̸� ������ ���� ������ ���̺� null ���� ���� ���� �����Ǿ� 
--������ ���� ����� ���̺��� ����� null �࿡ ���ε� 
--���� �����͸� ���ؼ� ���� �ʰ� �������� ������ �� ����

--employees ���̺�� departments ���̺��� department_id�� �ܺ� �����Ͽ� 
--department_id�� null ���� Kimberely Grant �� �Բ�  ���
SELECT a.employee_id, a.first_name, a.last_name, a.manager_id,
        b.first_name ||' '||
FROM employees A, employees B
WHERE a.manager_id = b.manager_id
ORDER BY a.employee_id;
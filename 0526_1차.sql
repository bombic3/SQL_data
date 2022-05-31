--employees ���̺��� ��� ������ ����϶�.
SELECT * FROM employees;

SELECT employee_id, email FROM employees;

-- employees ���̺� employee_id, first_name, last_name ����Ͽ���
-- employee_id ������������ �����Ͽ���
SELECT employee_id, first_name, last_name FROM employees ORDER BY employee_id DESC;

-- employees ���̺��� �ߺ� ���� ������ �ʵ��� jop_id���
SELECT DISTINCT job_id FROM employees;

--employees ���̺��� employee_id�� �����ȣ, first_name�� �̸�, last_name�� ������ ���
SELECT employee_id AS �����ȣ, first_name AS �̸�, last_name AS �� FROM employees;

--employees ���̺��� employee_id�� ����ϰ� first_name, last_name�� �ٿ��� ���
SELECT employee_id, first_name||last_name FROM employees;

-- ����) employees ���̺���  first_name�� last_name�� ���̸鼭
-- ��� �� ĭ ��� ���� ���� email (@company.com)���� �־ ���
SELECT employee_id, first_name||' '||last_name, email||'@company.com'
FROM employees;

-- employee ���̺���
-- employee_id, salary, salary�� 500�� ���� ��,
-- 100�� �� ��, 10%�� �߰��ؼ� 2�� ���� ���� ���
SELECT employee_id, salary, salary+500, salary-100, (salary*1.1)/2 FROM employees;

-- employee ���̺��� employee_id�� �������ȣ��,
-- salary�� ���޿���, salary+500�� ���߰��޿���,
-- salary-100�� �����ϱ޿���, (salary*1.1)/2�� �������޿����� ���
SELECT employee_id AS �����ȣ, salary AS �޿�, salary+500 AS �߰��޿�
, salary-100 AS ���ϱ޿�, (salary*1.1)/2 AS �����޿� FROM employees;

-- employee_id �� 100�� ������ ������ ���
SELECT * FROM employees WHERE  employee_id = 100;

--employee ���̺��� first_name�� David�� ���� ���� ���
SELECT * FROM employees WHERE first_name = 'David';

--employee ���̺��� employee_id �� 105 �̻��� ���� ���� ���
SELECT * FROM employees WHERE employee_id >= 105;

--employee ���̺��� salary�� 10,000 �̻��̰� 20,000 ������ ���� ������ ���
SELECT * FROM employees WHERE salary BETWEEN 10000 AND 20000;

--employee ���̺��� salary�� 10000, 17000, 24000�� ����
SELECT * FROM employees WHERE salary IN(10000, 17000, 24000);

--employee ���̺��� job_id���� AD�� �����ϴ� ���(%) �����͸� ��ȸ�϶�
SELECT * FROM employees WHERE job_id LIKE 'AD%';
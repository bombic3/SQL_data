-- ���տ�����_��������_���߿�����_�ζ��κ�

-- ���� �������� ����
--1. UNION : �ߺ��Ǵ� ���� �� ���� ���ԵǴ� ������
--2. UNION ALL :  ��ø�Ǵ� �൵ ���ԵǴ� ������
--3. INTERSET : �ߺ��Ǵ� �ุ �����ϴ� ������
--4. MINUS : ù��°��鿡�� �ι�°����� �� ������

--imployee ���̺��� department_id ���հ� 
--departments ���̺��� department_id ������ UNION �����ڸ� �̿��� ��ħ
SELECT department_id
FROM employees
UNION
SELECT department_id
FROM departments;

SELECT department_id
FROM employees
UNION all
SELECT department_id
FROM departments;

SELECT department_id
FROM employees
INTERSECT
SELECT department_id
FROM departments;

--imployee ���̺��� last_name�� ��De Haan���� ������ salary�� ������ �������� ���� �ִ��� ���
SELECT *
FROM employees A
WHERE a.salary = (SELECT salary 
                  FROM employees
                  WHERE last_name = 'De Haan');
--��������(����) = ��������(������)
--�� �ڵ�� ������ ��� ���
SELECT *
FROM employees A
WHERE a.salary = 17000;


-- ������
-- Taylor�� �������� �����ؼ� ���� ��
SELECT *
FROM employees A
WHERE a.salary = (SELECT salary 
                  FROM employees
                  WHERE last_name = 'Taylor');

--### ������ ������, ������ ������
--- ������ ������ : =, >, ��, <, ��, <>, ��
--    �� ������ ��������, ���� �� ��������
--    
--- ������ ������ : IN,NOT IN, EXISTS, ANYM, ALL
--    �� ������ ��������, ���� �� ��������

--������ �ٽ� IN ����Ͽ� ���
SELECT *
FROM employees A
WHERE a.salary IN (SELECT salary 
                  FROM employees
                  WHERE last_name = 'Taylor');
                  
                  
--### ���� �������� ���
--IN : ���� �� - IN(10, 20) �� 10�̳� 20�� ����
--NOT IN : ���� ���� �ƴ� - NOT(10, 20) �� 10�̳� 20�� ���Ե��� ����
--EXISTS : ���� ������ ��ȯ - EXISTS(10) �� 10�� ������
--ANY : �ּ��� �ϳ��� �����ϴ� �� (OR) - ANY(10, 20) �� 10�̳� 20�� ����
--** IN �� �ٸ� ���� �� �����ڸ� ����Ѵٴ� ��
--ALL : ��� �����ϴ� �� (AND) - ALL(10, 20) �� 10�� 20�� ����
--** �� �����ڸ� ���


--imployee ���̺��� department_id ���� ���� ���� salary �� ������ ã�ƺ��� 
--ã�Ƴ� salary �� �ش��ϴ� ������ �������� ���� �� ���������� ����� ã�� ��
SELECT *
FROM employees A
WHERE a.salary IN( SELECT MIN(salary) �����޿�
                   FROM employees
                   GROUP BY department_id
                  )
ORDER BY a.salary DESC;

--imployees ���̺��� job_id ���� ���� ���� salary �� ������ ã�ƺ���, 
--ã�Ƴ� job_id�� salsry �� �ش��ϴ� ������ �������� ���� �� ���������� ����ؼ� ã�� ��
SELECT *
FROM employees A
WHERE (a.job_id, a.salary) IN( SELECT job_id, MIN(salary) �׷캰�޿�
                              FROM employees
                              GROUP BY job_id
                             )
ORDER BY a.salary DESC;

--���� �߿��� department_name �� IT�� ������ ������ �ζ��� �並 �̿��� ���
SELECT *
FROM employees A,
                ( SELECT department_id
                  FROM departments
                  WHERE department_name='IT') B
--              ���������� B ���̺��̶�� ���� -> �ζ��κ�(�����)
WHERE a.department_id = b.department_id;
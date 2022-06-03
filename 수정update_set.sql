-- ����update_set

--departments ���̺��� department_name �� ��Sample_Dept�� �� ���� ã�Ƽ�
--manager_id �� 201, location_id �� 1800���� ����
UPDATE departments
SET manager_id = 201,
    location_id = 1800
WHERE department_name = 'Sample_Dept';

commit;

SELECT
    *
FROM departments
ORDER BY department_id DESC;


--departments ���̺��� department_id�� 40�� namager_id �� location_id �� ������ ���� ã�Ƴ���
--department_name �� ��Sample_Dept���� ���� manager_id �� location_id �� ã�Ƴ� ������ ���� �����ϰ� ����
--(update �ȿ� �����������)
UPDATE departments
SET (manager_id, location_id) = (SELECT MANAGER_ID, location_id
                                  FROM departments
                                  WHERE department_id = 40)
WHERE department_name = 'Sample_Dept';

commit;
-- 수정update_set

--departments 테이블에서 department_name 이 ‘Sample_Dept’ 인 행을 찾아서
--manager_id 를 201, location_id 를 1800으로 변경
UPDATE departments
SET manager_id = 201,
    location_id = 1800
WHERE department_name = 'Sample_Dept';

commit;

SELECT
    *
FROM departments
ORDER BY department_id DESC;


--departments 테이블에서 department_id가 40인 namager_id 와 location_id 의 데이터 값을 찾아내고
--department_name 이 ‘Sample_Dept’인 행의 manager_id 와 location_id 를 찾아낸 데이터 값과 동일하게 변경
--(update 안에 서브쿼리사용)
UPDATE departments
SET (manager_id, location_id) = (SELECT MANAGER_ID, location_id
                                  FROM departments
                                  WHERE department_id = 40)
WHERE department_name = 'Sample_Dept';

commit;
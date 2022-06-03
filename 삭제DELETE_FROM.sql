-- 삭제DELETE_FROM

--departments 테이블에서 department_name이 ‘Sample_Dept’인 행을 삭제
-- 일반적인 방법
DELETE FROM departments
WHERE department_name = 'Sample_Dept';

-- 서브쿼리를 사용한 방법
DELETE FROM departments
WHERE department_id IN (SELECT department_id
                        FROM employees
                        WHERE department_name = 'Sample_Dept');
                        
-- 확인
SELECT *
FROM departments
ORDER BY department_name DESC;

-- 저장
commit;
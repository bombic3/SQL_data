-- 삽입insert_into_저장commit

--departments 테이블에서 department_id가 271, 
--department_name 이 ‘Sample_Dept’, manager_id 가 200, location_id 가 1700인 행을 삽입
INSERT INTO departments (department_id, department_name, manager_id, location_id)
VALUES (271, 'Sample_Dept', 200, 1700);
-- 행추가되었습니다
INSERT INTO departments
VALUES (271, 'Sample_Dept', 200, 1700);
-- 전체를 입력할때는 필드명 생략가능, 부분입력시 필드명 표시

SELECT *
FROM departments;
-- 확인

SELECT *
FROM departments
ORDER BY department_id DESC;
-- 내림차순 > 최신것 위에 보이도록

commit;



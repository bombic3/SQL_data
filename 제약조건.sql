--제약조건

--### 제약조건
-- - 정해 놓은 규칙성 맞는 데이터만 입력받고 규칙에 어긋나는 데이터는 거부하여 데이터 무결성을 지키는 방법
--1. 기본키 제약 조건
--2. 외래 키 제약 조건
--3. 유일키
--4. NOT NULL
--5. CHECK

-- 기본키 제약 조건 : 데이터 중복 불허
INSERT INTO departments
VALUES (100, 'Sample_Dept', 200, 1700);
-- 100 있어서 안들어감 unique 뜸 중복 안된단 얘기
-- 1000 넣으면 들어감

-- 외래키 제약 조건 : 열 값이 부모 테이블의 참조열 값을 반드시 참조
INSERT INTO departments(department_id, department_name, manager_id, location_id)
VALUES (273, 'Sample_Dept', 200, 111);
-- integrity constraint ~ parent key not found -> 부모의 값 없다
-- 111은 부모테이블의 행에 존재하지 않음

-- 유일키 제약 조건 : 중복은 허락하지 않지만 null값 허용 가능
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number,
                      hire_date, job_id, salary)
VALUES (207, 'first_name', 'last_name', 'SKING', '111.11.11', 
        to_date('030617', 'YYMMDD'), 'IT_PROG', 6000);
--  unique -> 중복 불허

-- NOT NULL : null 값을 허용하지 않는다.
INSERT INTO departments(department_id, department_name, manager_id, location_id)
VALUES (273, null, 200, 700);
-- cannot insert NULL into -> null 넣지마

-- CHECK : 범위나 조건 등 지정된 값만 허용
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number,
                      hire_date, job_id, salary)
VALUES (207, 'first_name', 'last_name', 'TEST', '111.11.11', 
        to_date('030617', 'YYMMDD'), 'IT_PROG', 0);
-- check constraint -> 체크 제약조건을 잘 봐라
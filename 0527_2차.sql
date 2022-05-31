--employees 테이블에서 AD로 시작하면서 뒤에 따라오는 문자열이 3자인 데이터 값을 갖는
--직원 정보를 조회(job_id)
SELECT * FROM employees WHERE job_id LIKE 'AD___';

--employees 테이블에서 manager_id가 null 값인 직원 정보를 출력
SELECT * FROM employees WHERE manager_id IS null;

--employees 테이블에서 salary가 400 초과하면서 job_id가 IT_PROG인 값을 조회
SELECT * FROM employees WHERE salary > 400 AND job_id = 'IT_PROG';


SELECT * FROM employees WHERE salary > 400 
AND job_id = 'IT_PROG' 
OR job_id = 'FI_ACCOUNT';

SELECT * FROM employees WHERE employee_id <> 105;

SELECT * FROM employees WHERE manager_id IS NOT null;

SELECT LOWER (last_name) LOWER적용, 
       UPPER (last_name) UPPER적용, 
       INITCAP(email) INITCAP적용
FROM employees;





--employees 테이블에서 job_id 데이터 값의 첫째 자리부터 시작해서 두 개의 문자를 출력
SELECT job_id, SUBSTR(job_id, 1, 2) FROM employees;

--employees 테이블에서 job_id 의 문자열이 ACCOUNT → ACCNT 로 수정
--REPLACE('문자열' or 열 이름, '바꾸려는 문자열', '바뀔 문자열')
SELECT job_id, REPLACE(job_id, 'ACCOUNT', 'ACCNT') FROM employees;

--employees 테이블에서 first_name 에 대해 12자리의 문자열 자리를 만들되
--first_name 의 데이터 값이 12자리보다 작으면 왼쪽에서부터 *을 채워서 출력
SELECT first_name, LPAD(first_name, 12, '*') FROM employees;

--공백 제거 : TRIM - 좌우의 공백 제거
SELECT 'star' || TRIM (' - space - ') || 'end' 제거된_공백 FROM dual;

--employees 테이블에서 salary 를 30일로 나눈 값의 소수점 첫째 자리,
--소수점 둘째 자리, 정수 첫째 자리에서 절삭하여 출력
SELECT salary,
        salary/30 일급,
        TRUNC(salary/30, 0) 적용결과0,
        TRUNC(salary/30, 1) 적용결과1,
        TRUNC(salary/30, -1) 적용결과2
FROM employees;
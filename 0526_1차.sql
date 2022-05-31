--employees 테이블의 모든 정보를 출력하라.
SELECT * FROM employees;

SELECT employee_id, email FROM employees;

-- employees 테이블 employee_id, first_name, last_name 출력하여라
-- employee_id 내림차순으로 정렬하여라
SELECT employee_id, first_name, last_name FROM employees ORDER BY employee_id DESC;

-- employees 테이블에서 중복 값이 생기지 않도록 jop_id출력
SELECT DISTINCT job_id FROM employees;

--employees 테이블에서 employee_id는 사원번호, first_name은 이름, last_name은 성으로 출력
SELECT employee_id AS 사원번호, first_name AS 이름, last_name AS 성 FROM employees;

--employees 테이블에서 employee_id를 출력하고 first_name, last_name을 붙여서 출력
SELECT employee_id, first_name||last_name FROM employees;

-- 응용) employees 테이블에서  first_name과 last_name을 붙이면서
-- 가운데 한 칸 띄고 다음 열에 email (@company.com)문구 넣어서 출력
SELECT employee_id, first_name||' '||last_name, email||'@company.com'
FROM employees;

-- employee 테이블에서
-- employee_id, salary, salary에 500을 더한 값,
-- 100을 뺀 값, 10%를 추가해서 2로 나눈 값을 출력
SELECT employee_id, salary, salary+500, salary-100, (salary*1.1)/2 FROM employees;

-- employee 테이블에서 employee_id를 ‘사원번호’,
-- salary를 ‘급여’, salary+500을 ‘추가급여’,
-- salary-100을 ‘인하급여’, (salary*1.1)/2를 ‘조정급여’로 출력
SELECT employee_id AS 사원번호, salary AS 급여, salary+500 AS 추가급여
, salary-100 AS 인하급여, (salary*1.1)/2 AS 조정급여 FROM employees;

-- employee_id 가 100인 직원의 정보를 출력
SELECT * FROM employees WHERE  employee_id = 100;

--employee 테이블에서 first_name이 David인 직원 정보 출력
SELECT * FROM employees WHERE first_name = 'David';

--employee 테이블에서 employee_id 가 105 이상인 직원 정보 출력
SELECT * FROM employees WHERE employee_id >= 105;

--employee 테이블에서 salary가 10,000 이상이고 20,000 이하인 직원 정보를 출력
SELECT * FROM employees WHERE salary BETWEEN 10000 AND 20000;

--employee 테이블에서 salary가 10000, 17000, 24000인 직원
SELECT * FROM employees WHERE salary IN(10000, 17000, 24000);

--employee 테이블에서 job_id값이 AD로 시작하는 모든(%) 데이터를 조회하라
SELECT * FROM employees WHERE job_id LIKE 'AD%';
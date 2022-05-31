SELECT
    *
FROM employees
ORDER BY commission_pct;

SELECT salary*commission_pct
FROM employees
ORDER BY commission_pct;

--employees 테이블에서 commission_pct를 곱하되
--commission_pct가 null일 때는 1로 치환하여 mommission_pct를 곱한 결과를 출력
SELECT salary*NVL(commission_pct,1)
FROM employees
ORDER BY commission_pct;

--employees 테이블에서 first_name, last_name, department_id, salary 를 출력하되
--department_id가 60인 경우 급여를 10% 인상한 값과 ‘10%인상’을 같이 출력,
--나머지 경우에는 원래의 값과 ‘미인상’ 출력
SELECT first_name, last_name, department_id, salary 원래급여,
    DECODE(department_id, 60, salary*1.1, salary) 조정된급여,
    DECODE(department_id, 60, '10%인상', '미인상') 인상여부
FROM employees;

SELECT employee_id, first_name, last_name, salary,
    CASE
        WHEN salary >= 9000 THEN '상위급여'
        WHEN salary BETWEEN 6000 AND 8999 THEN '중위급여'
        ELSE '하위급여'
    END AS 급여등급
FROM employees
WHERE job_id = 'IT_PROG';

--RANK, DENSE_RANK, ROW_NUMBER 함수를 각각 이용해서
--emplyees 테이블의 salary 값이 높은 순서대로 순위를 출력
SELECT employee_id, salary,
    RANK() OVER(ORDER BY salary DESC) RANK_급여,
    DENSE_RANK() OVER(ORDER BY salary DESC) DENSE_RANK_급여,
    ROW_NUMBER() OVER(ORDER BY salary DESC) ROW_NUMBER_급여
FROM employees;


--RANK, DENSE_RANK, ROW_NUMBER 함수를 각각 이용해서 
--department_id 안에서 salary 값이 높은 순서대로 출력
SELECT
    A.employee_id,
    A.department_id,
    B.department_name,
    salary,
    RANK() OVER (PARTITION BY A.department_id ORDER BY salary DESC) RANK_급여,
    DENSE_RANK() OVER (PARTITION BY A.department_id ORDER BY salary DESC) DENSE_RANK급여,
    ROW_NUMBER() OVER (PARTITION BY A.department_id ORDER BY salary DESC) ROW_NUMBER급여
FROM employees A, departments B
WHERE A.department_id = B.department_id
ORDER BY B.department_id, A.salary DESC;

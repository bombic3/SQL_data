--employees 테이블에서 salary의 행 수가 몇 개인지 확인
SELECT COUNT(salary) FROM employees;

--employees 테이블에서 salary의 합계와 평균 구하기, 단 평균은 avg를 사용하지 말 것
SELECT COUNT(salary) 합계, AVG(salary) 평균, SUM(salary)/COUNT(salary) 계산된평균
FROM employees;

--employees 테이블에서 salary의 최댓값 최솟값, first_name 함께 출력
SELECT MAX(salary) 최대값, MIN(salary) 최소값, MAX(first_name) 최대문자값, MIN(first_name) 최소문자값
FROM employees;

--employees 테이블에서 employee_id가 10 이상인 직원에 대해 job_id별로 그룹화 하여
--job_id별 총 급여와 job_id별 평균 급여, job_id별 총 급여 기준을 내림차순 정렬
SELECT job_id 직무, SUM(salary) 직무별_총급여, AVG(salary) 직무별_평균급여
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
ORDER BY 직무별_총급여 DESC, 직무별_평균급여;

-- → 1차그룹 : job_id , 2차그룹 : manager_id로 그룹화
SELECT job_id job_id_대그룹,
        manager_id manager_id_중그룹,
        SUM(salary) 그룹핑_총급여,
        AVG(salary) 그룹핑_평균급여
FROM employees
WHERE employee_id >= 10
GROUP BY job_id, manager_id
ORDER BY 그룹핑_총급여 DESC, 그룹핑_평균급여;

--employees 테이블에서 employee_id가 10 이상인 직원에 대해 job_id별로 그룹화 하여 
--job_id별 총 급여가 30000보다 큰 값만 출력하고 job_id별 총 급여를 기준으로 내림차순 정렬
SELECT job_id 직무, SUM(salary) 직무별_총급여, AVG(salary) 직무별_평균급여
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
HAVING SUM(salary) > 30000
ORDER BY 직무별_총급여 DESC, 직무별_평균급여;

--일대다 1:다
SELECT a.first_name, a.last_name, B.*
FROM employees A, job_history B
WHERE a.employee_id = b.employee_id
AND a.employee_id = 101;

--동등조인(equi join) : 양쪽 테이블에서 조인 조건이 일치하는 행만 가져오는
--가장 일반적이고 자주 쓰는 조인
SELECT
    *
FROM employees A, departments B
WHERE a.department_id = b.department_id;

--employees 테이블과 departments 테이블과 locations 테이블을 조인하여 
--각 직원이 어느 부서에 속하는 지와 부서의 소재지가 어디인지 조회
SELECT a.employee_id, a.department_id, b.department_name, c.location_id, c.city
FROM employees A, departments B, locations C
WHERE a.department_id = b.department_id
AND b.location_id = c.location_id;


--동등 조인에서 데이터 값이 정확히 일치하는 경우에만 결과를 출력
SELECT COUNT(*) 조인된건수
FROM employees A, departments B
WHERE a.department_id = b.department_id;

SELECT COUNT(*)
FROM employees;

--(+) 기호를 붙이면 데이터 값이 부족한 테이블에 null 값을 갖는 행이 생성되어 
--데이터 값이 충분한 테이블의 행들이 null 행에 조인됨 
--양쪽 데이터를 비교해서 많은 쪽과 작은쪽을 구별할 수 있음

--employees 테이블과 departments 테이블을 department_id로 외부 조인하여 
--department_id가 null 값인 Kimberely Grant 도 함께  출력
SELECT a.employee_id, a.first_name, a.last_name, a.manager_id,
        b.first_name ||' '||
FROM employees A, employees B
WHERE a.manager_id = b.manager_id
ORDER BY a.employee_id;
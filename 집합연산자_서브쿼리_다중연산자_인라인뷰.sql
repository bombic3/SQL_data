-- 집합연산자_서브쿼리_다중연산자_인라인뷰

-- 집합 연산자의 종류
--1. UNION : 중복되는 행은 한 번만 포함되는 합집합
--2. UNION ALL :  중첩되는 행도 포함되는 합집합
--3. INTERSET : 중복되는 행만 포함하는 교집합
--4. MINUS : 첫번째행들에서 두번째행들을 뺀 차집합

--imployee 테이블의 department_id 집합과 
--departments 테이블의 department_id 집합을 UNION 연산자를 이용해 합침
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

--imployee 테이블의 last_name이 ‘De Haan’인 직원과 salary가 동일한 직원에는 누가 있는지 출력
SELECT *
FROM employees A
WHERE a.salary = (SELECT salary 
                  FROM employees
                  WHERE last_name = 'De Haan');
--메인쿼리(왼쪽) = 서브쿼리(오른쪽)
--위 코드와 동일한 결과 출력
SELECT *
FROM employees A
WHERE a.salary = 17000;


-- 다중행
-- Taylor가 여러명이 존재해서 오류 뜸
SELECT *
FROM employees A
WHERE a.salary = (SELECT salary 
                  FROM employees
                  WHERE last_name = 'Taylor');

--### 단일행 연산자, 다중행 연산자
--- 단일행 연산자 : =, >, ≥, <, ≤, <>, ≠
--    → 단일행 서브쿼리, 다중 열 서브쿼리
--    
--- 다중행 연산자 : IN,NOT IN, EXISTS, ANYM, ALL
--    → 다중행 서브쿼리, 다중 열 서브쿼리

--다중행 다시 IN 사용하여 출력
SELECT *
FROM employees A
WHERE a.salary IN (SELECT salary 
                  FROM employees
                  WHERE last_name = 'Taylor');
                  
                  
--### 다중 연산자의 기능
--IN : 같은 값 - IN(10, 20) ⇒ 10이나 20이 포함
--NOT IN : 같은 값이 아님 - NOT(10, 20) ⇒ 10이나 20이 포함되지 않음
--EXISTS : 값이 있으면 반환 - EXISTS(10) ⇒ 10이 존재함
--ANY : 최소한 하나라도 만족하는 것 (OR) - ANY(10, 20) ⇒ 10이나 20이 포함
--** IN 과 다른 점은 비교 연산자를 사용한다는 점
--ALL : 모두 만족하는 것 (AND) - ALL(10, 20) ⇒ 10과 20이 포함
--** 비교 연산자를 사용


--imployee 테이블에서 department_id 별로 가장 낮은 salary 가 얼마인지 찾아보고 
--찾아낸 salary 에 해당하는 직원이 누구인지 다중 행 서브쿼리를 사용해 찾을 것
SELECT *
FROM employees A
WHERE a.salary IN( SELECT MIN(salary) 최저급여
                   FROM employees
                   GROUP BY department_id
                  )
ORDER BY a.salary DESC;

--imployees 테이블에서 job_id 별로 가장 낮은 salary 가 얼마인지 찾아보고, 
--찾아낸 job_id별 salsry 에 해당하는 직원이 누구인지 다중 열 서브쿼리를 사용해서 찾을 것
SELECT *
FROM employees A
WHERE (a.job_id, a.salary) IN( SELECT job_id, MIN(salary) 그룹별급여
                              FROM employees
                              GROUP BY job_id
                             )
ORDER BY a.salary DESC;

--직원 중에서 department_name 이 IT인 직원의 정보를 인라인 뷰를 이용해 출력
SELECT *
FROM employees A,
                ( SELECT department_id
                  FROM departments
                  WHERE department_name='IT') B
--              서브쿼리를 B 테이블이라고 하자 -> 인라인뷰(가상뷰)
WHERE a.department_id = b.department_id;
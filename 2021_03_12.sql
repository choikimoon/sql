1.파일과 DBMS의 차이
2.SQL구문의 종류(4가지) DDL, DML(SELECT, INSERT, DELETE, UPDATE), DCL, TCL
					@CRUD@
3.수업시간 SQL coding rule ==> keyword는 대문자, 그 외에는 소문자
4.트랜잭션 ==> 논리적인 일의 단위
5.SQL DBMS과 통신하기 위한 유일한 수단
NOSQL(비정형 제품) ==> 제품마다 다름
6.
SELECT 테이블의 컬럼명을 콤마로 구분하여 나열 l *
FROM 가져올 데이터가 담긴 테이블이름

SELECT *
FROM emp; ==> emp는 키워드가 아니고 테이블이다.

테이블 ==> 오라클 객체

SELECT empno, ename ==> 키워드가 아니다
FROM emp;

sem계정에 있는 prod 테이블의 모든컬럼을 조회하는 SELECT 쿼리(SQL) 작성

SELECT *
FROM prod;

sem계정에 있는 prod 테이블의 prod_id, prod_name 두개의 칼럼만 조회하는 SELECT 쿼리(SQL) 작성

SELECT prod_id, prod_name
FROM prod;

select1

SELECT *
FROM lprod;

SELECT buyer_id, buyer_name
FROM buyer;

SELECT *
FROM cart;

SELECT mem_id, mem_pass, mem_name
FROM member;

컬럼 정보를 보는 방법
1. SELECT * ==> 컬럼의 이름을 알 수 있다
2. SQL DEVELOPER의 테이블 객체를 클릭하여 정보확인

숫자, 날짜에서 사용가능한 연산자
일반적인 사칙연산 + - / *, 우선순위 연산자 ()

SELECT ' SELECT * FROM ' || table_name || ';'
FROM user_tables;

SELECT * FROM emp;

sel_con1
SELECT ' SELECT * FROM ' || table_name || ';',
        concat('SELECT * FROM ' || table_name, ';'),
        concat(CONCAT('SELECT * FROM ', table_name), ';')
FROM user_tables;

concat(ename, 'Hello', *, World')
- 결합할 두개의 문제열을 입력받아 결합하고 결합된 문자열을 반환 해준다

--부서번호가 10인 직원들만 조회
--부서번호 : deptno
SELECT *
FROM emp
WHERE deptno = 10;

--users 테이블에서 userid 컬럼의 값이 brown인 사용자만 조회
--***SQL 키워드는 대소문자를 가리지 않지만 데이터값은 대소문자를 가린다
--
SELECT *
FROM users
WHERE userid = 'brown';

--emp 테이블에서 부서번호가 20번보다 큰부서에 속한 직원 조회

SELECT *
FROM emp
WHERE deptno > 20;

--emp 테이블에서 부서번호가 20번 부서에 속하지 않은 모든 직원 조회

SELECT *
FROM emp
WHERE deptno != 20;

WHERE : 기술한 조건을 참(TRUE)으로 만족하는 행들만 조회한다(FILTER)

-- 항상 참이다
SELECT *
FROM emp
WHERE 1=1;

-- 수식만 봐도 거짓이다
SELECT *
FROM emp
WHERE 2=1;

-- 오라클에서는 문제가 없을 수 있음 (함정이 있음)
SELECT empno, ename, hiredate
FROM emp
WHERE hiredate >= '81/03/01' ; -- 81년 3월 1일 날짜 값을 표기하는 방법을 모른다 

SELECT empno, ename, hiredate
FROM emp
WHERE hiredate >= '81/03/01' ; -- 81년 3월 1일 날짜 값을 표기하는 방법을 모른다
-- 년도 한국은 yy(rr)/mm/dd 미국은 mm/dd/yy(rr)라서 혼동이 있을수 있음

문자열을 날짜 타입으로 변환하는 방법
TO_DATE(날짜 문자열, 날짜 문자열의 포맷팅)
TO_DATE('1981/12/11', YYYY/MM/DD')

-- 길어졌지만 안전한 쿼리이다
SELECT empno, ename, hiredate
FROM emp
WHERE hiredate >= TO_DATE('1981/03/01', 'YYYY/MM/DD');





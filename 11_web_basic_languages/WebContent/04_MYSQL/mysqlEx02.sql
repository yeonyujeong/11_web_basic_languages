/*

	# 연습환경 셋팅작업
	
    - select문을 연습할때 데이터베이스에 데이터들이 있어야 조회가 가능하다.
    - select문을 연습할때 조회되는 데이터가 많을 수록 연습이 수월하다. 
    - 일일이 직접 데이터를 집어 넣지 않고 미리 만들어진 데이터들을 로드해서 사용하기 위함
    
    
    > mysql 환경변수 설정 잡기 - 환경변수의 path에 mysql이 설치되어져 있는 폴더의 bin폴더를 등록한다. 
    > 윈도우 cmd를 관리자 권한으로 실행한다.
    > test_db가 설치되어있는 곳으로 cd 명령어를 이용해서 이동한다.
    > mysql -u root -p -t <employees.sql  명령어를 입력한다. 
    > 로드 완료 메세지 확인한다.
    > SQL Editor에서 새로고침 후 employees 스키마를 확인한다.

*/

USE EMPLOYEES;

# 예시 1) EMPLOYEES 사원의 사원번호 , 이름 조회하기
SELECT
		EMP_NO,
        FIRST_NAME,
        LAST_NAME
FROM
	EMPLOYEES;
    
# 예시 2) DEPARTMENTS 테이블의 전체 데이터 조회하기
SELECT
		*
FROM
		DEPARTMENTS;
        
# 예시 3) SALARIES테이블의 SALARY , 3.3%세금 공제 후 SALARY 조회
SELECT
		SALARY,
        SALARY*0.033,
        SALARY - (SALARY*0.033),
        SALARY*0.033 AS TAX,				# AS키워드를 사용하여 컬럼명을 지정해줄 수 있다.
        SALARY - (SALARY*0.033) AFTER_TAX	# AS는 생략 가능하다.
FROM
		SALARIES;

# 예시 4) 각 사원들의 직함을 중복되지 않게 가져오기.
SELECT
		TITLE
FROM
		TITLES;
        
SELECT DISTINCT		# DISTINCT 중복 제거 키워드
		TITLE
FROM
		TITLES;
        
# 예시 5) 특정 개수만큼 조회하기 (MYSQL에만 있음)
SELECT
		*
FROM
		EMPLOYEES
LIMIT
		10;		# LIMIT 뒤에 적혀진 숫자만큼의 row만 조회한다.
        
SELECT
		*
FROM
		EMPLOYEES
LIMIT
		10,3;	#  10번째 row부터 3row만 조회한다.

        
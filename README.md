# ![image](https://github.com/ChimmyWorld/DevCommProject/assets/61040342/5ea31719-b139-418a-8532-1112de349e5d)

# 🌳 프로젝트 개요

## 프로젝트 기간
- 총 개발 기간 : 2023.12.11 ~ 2024.01.03
  - 1주차 : 기획문서 작성, ERD 설계, 기본 기능 구현 (e.g. 로그인 기능, 게시판 목록) 
  - 2주차 : 핵심 기능 개발 (게시판 및 댓글 CRUD, 추천 기능 등)
  - 3주차 : 기능 추가 및 수정, 버그 수정
  - 4주차 : HTML -> JSP 적용 및 테스트

# 🔨 개발 환경
✔️ 운영체제
  - Windows 10 64bit
    
✔️ 개발언어
  - Java
  - SQL
  - JavaScript
  - HTML5
  - CSS3
  - XML
  - JSON
    
✔️ 개발도구
  - Eclipse
  - Maven

✔️ 프레임워크
  - Spring Framework 4.3.30
  - Mybatis

✔️ 데이터베이스
  - Oracle Linux 7

✔️ WAS
  - Apache Tomcat 8.5

# 📋 ERD
![DevComm ERD](https://github.com/ChimmyWorld/DevCommProject/assets/61040342/7e548d65-d9c7-46b3-9e2c-c99347c3bd6e)

# 👍 주요 기능
|구분|기능|설명|비고|
|---|---|---|---|
|1|회원가입|- 아이디, 비밀번호, 닉네임, 이메일을 입력받아 회원가입 할 수 있다|중복된 정보 혹은 비밀번호 체크가 다른 경우 유효성 검사|
|2|로그인|- 등록된 유저 정보를 입력받아 로그인 할 수 있다|유저가 등록한 정보가 기억나지 않는 경우 ID 혹은 PW 찾기 가능|
|3|게시글|- 로그인 한 유저는 게시판 글 작성, 수정, 삭제를 할 수 있다 |로그인 하지 않은 경우 로그인 페이지로 이동|
|4|댓글|- 로그인 한 유저는 댓글 작성, 수정, 삭제를 할 수 있다 |로그인 하지 않은 경우 로그인 페이지로 이동|
|5|추천|- 로그인 한 유저는 게시글에 추천 혹은 비추천을 할 수 있다||
|6|마이페이지|- 로그인한 유저는 프로필 사진을 변경할 수 있다.<br/>- 내가 쓴 게시글 및 댓글 목록을 확인할 수 있고,<br/>검색 및 정렬이 가능하다.<br/>- 비밀번호 변경을 할 수 있다.<br/> - 회원 탈퇴를 진행할 수 있다 ||

# 📸 주요 서비스 화면

### 메인페이지
![image](https://github.com/ChimmyWorld/DevCommProject/assets/61040342/88850e87-01e8-4373-8777-7035730634ef)

### 로그인
![image](https://github.com/ChimmyWorld/DevCommProject/assets/61040342/c5d4e779-6445-453b-abd2-59fdb17d40ba)

### 회원가입
![image](https://github.com/ChimmyWorld/DevCommProject/assets/61040342/8258231d-ab00-4a80-a61a-23343ea951f2)

### 게시물 목록
![image](https://github.com/ChimmyWorld/DevCommProject/assets/61040342/f17ba602-c3ce-41c3-951b-ba543ad0f80e)

### 게시물 작성
![image](https://github.com/ChimmyWorld/DevCommProject/assets/61040342/96174f14-90d1-4de9-acf3-b6b75c47b347)

### 게시물 상세보기 (추천, 댓글 확인 가능)
![image](https://github.com/ChimmyWorld/DevCommProject/assets/61040342/8d6d63b3-e504-4724-96e2-9e743d80b108)

### 마이페이지 - 내정보
![image](https://github.com/ChimmyWorld/DevCommProject/assets/61040342/90348e81-9174-40bb-a18e-d0a90670819f)

### 마이페이지 - 내 활동 
![image](https://github.com/ChimmyWorld/DevCommProject/assets/61040342/c75a5cf8-7a90-4f82-a76f-eb649236a793)

### 마이페이지 - 계정 관리
![image](https://github.com/ChimmyWorld/DevCommProject/assets/61040342/aeec82ff-4a4e-4198-949c-7a15b239c932)

# 웹을 활용한 포스기
## 개요
대부분 프렌차이즈 음식점들은 포스기를 설치하여 운영하고 있다. 하지만 개인이 운영하고 있는 음식점 중 일부 좋지 않는 경제로 포스기 설치 조차 못하고 있는 음식점도 있다. 
이러한 문제점을 해결하고자 웹앱을 통해 배포 및 유지 보수를 할 수 있도록 구현하였다.

## 사용 기술
1. 자바스크립트 - 웹 브라우저 프로그래밍을 하기 위하여 사용
2. CSS - 웹 브라우저의 스타일을 위하여 사용
3. JSP - DB연동 및 동적 프로그래밍을 위해 사용
4. Imgur API - DB에 이미지를 저장하기 위해서 사용
5. Maria DB - 회원가입 정보, 메뉴 정보, 매출 정보를 저장하기 위해 사용
6. AJAX - 비동기적인 웹 개발을 위해 사용

## 저작권(라이센스)
C-2021-035554

## 포스기 프로그램 동작 과정
1. 회원가입을 한다.
2. 로그인 후 관리자 모드에 접속한다.
3. 관리자 모드에서 테이블 개수, 메뉴 이미지 선택, 이름, 가격을 입력한다.
4. 카운터 모드에 접속한다.
5. 주문받은 테이블을 클릭하여 메뉴판 페이지에 접속한다.
6. 메뉴판 페이지에서 주문받은 음식을 주문한다.
7. 주방 페이지에서 주문받은 음식이 실시간으로 표시된다.
8. 관리자는 관리자 모드에서 매출 정보를 년/월/일 별로 확인 한다.

## 페이지 이미지
### 로그인 페이지
![image](https://user-images.githubusercontent.com/74814641/134851813-b3d81f58-20b7-46fc-a85d-bdbf14e65901.png)

### 모드 선택 페이지
![image](https://user-images.githubusercontent.com/74814641/134852263-b2feb47f-9531-42ae-af89-df5eb3c17306.png)

### 주방 페이지
![image](https://user-images.githubusercontent.com/74814641/134851982-cb5469d4-8e89-4e37-8e7d-fa3dc22e088a.png)

### 테이블 페이지
![image](https://user-images.githubusercontent.com/74814641/134852057-ae673ce5-c9bf-4c4d-ba6c-cb0f7692f7e2.png)

### 메뉴판 페이지
![image](https://user-images.githubusercontent.com/74814641/134852098-8b761aba-c2d0-4974-9bac-f18fd53f0ee1.png)

### 관리자 모드
![image](https://user-images.githubusercontent.com/74814641/134852203-f42fde9d-3fc7-4d34-aa83-dec0169283bd.png)

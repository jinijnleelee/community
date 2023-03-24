<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>community</title>

    <link rel="stylesheet" href="resources/css/main-style.css">

    <!--  fontawesome 사이트 아이콘 이용   -->
    <script src="https://kit.fontawesome.com/f7459b8054.js" crossorigin="anonymous"></script>
</head>
<body>
  
    <main>
    
    	<!-- 
    		jsp:include 태그
    		 다른 jsp 파일의 내용을 해당 위치에 포함시킴
    		 * 외부 요청 주소 X (인터넷주소, 최상위 : /community),
    		   내부 접근 경로 O (파일경로, 최상위 : /webapp)
    	 -->
    
        <!-- header include -->
        
        <!-- 내부 접근 절대 경로 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp" />
    
        <section class="content">
            <section class="content-1">
            	
            	<h3>회원 정보 조회(AJAX)</h3>
            
            	<p>이메일을 입력받아 일치하는 회원 정보를 출력</p>
            	
            	이메일 : <input type="text" id="in1"/>
            	<button id="select1">조회</button>
            	<div id="result1" style="height: 150px;"></div>

                <hr>
            
            </section>

            <section class="content-2">

                <form action="#" name="login-frm">
        
                    <!-- 아이디, 비밀번호, 로그인 버튼 -->
                    <fieldset id="id-pw-area">
                        <section>
                            <input type="text" name="inputId"
                             placeholder="아이디" autocomplete="off">
                            <!-- autocomplete="off" : 자동완성 사용 X -->
        
                            <input type="password" name="inputPw" placeholder="비밀번호">
                        </section>
        
                        <section>
                            <!-- type="submit"이 기본값 -->
                            <button>로그인</button>
                        </section>
                    </fieldset>
        
        
                    <!-- label 태그 내부에 input태그를 작성하면 자동 연결됨 -->
                    <label>
                        <input type="checkbox" name="saveId"> 아이디 저장
                    </label>
        
        
                    <!-- 회원가입 / ID/PW 찾기 -->
                    <article id="signUp-find-area">
                    
                    
                   
                    
                    <!-- <a href=""WEB_INF/views/member/signUp.jsp  -->
                    <!-- WEB_INF폴더는 외부로부터 직접적으로 요청할수 없는폴더
                    왜? 중요한 코드(자바,sql 설정관련) 가 위치하는 폴더로써
                    외부로부터 접근을 차잔하기 위해서.
                   -> servlet을 이용해서 내부 접근(forward)은 가능 -->
                    
                    
                    
                        <a href="${contextPath}/member/signUp">회원가입</a>
                        <span>|</span>
                        <a href="#">ID/PW찾기</a>
                    </article>
                </form>
            </section>
        </section>

    </main>
    
    <!-- footer include -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

	<!-- jQuery 라이브러리 추가 -->
 	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	
	<!--  main.js 연결 -->
	<script src="resources/js/main_2.js"></script>

</body>
</html>
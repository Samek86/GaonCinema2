<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>[header.jsp]</title>

<script src="./resources/js/header.js"></script>

<div class="backcolor"></div>
<div class="header-wrap">
	
	
	<span class="logo">
		<a href="main.do"><img id="logoimg" src="./resources/img/Gaonlogo.png"></a>
	</span>

	<ul class="nav">
		<li><a href="movie.do">영화</a></li>
		<li><a href="reservation.do">예매</a></li>
		<li><a href="theater.do">영화관</a></li>
		<li><a href="store.do">스토어</a></li>
		<li><a href="event.do">이벤트</a></li>
		<li><a href="qna.do">고객센터</a></li>
		<li><button id="loginbt">로그인</button>
	</ul>
	
	<div class="login">
	 <!-- <img alt="" src=""> 이미지 로고 -->
		<form name="myform" action="login.do">
			<input type="text" name="name" placeholder="아이디"> <br>
			<input type="password" name="secret" placeholder="비밀번호">
			<input type="button" onclick="login()" value="로그인">
		</form>
			<input type="button" name="idpwFind" value="ID/PW찾기">
			<input type="button" name="join" value="회원가입">
	</div>
</div>

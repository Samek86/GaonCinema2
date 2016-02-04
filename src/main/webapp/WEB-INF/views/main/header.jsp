<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<c:choose>
		<c:when test="${NowUser==null}">
			<li><button id="loginbt">로그인</button></li>
		</c:when>
		<c:when test="${NowUser=='admin'}">
			<li><button id="memberbt">${NowUser}</button></li>
		</c:when>
		<c:otherwise>
			<li><button id="memberbt">${NowUser}</button></li>
		</c:otherwise>
	</c:choose>
	
	</ul>
	<div class="login">

		<button type="button" class="close">&times;</button>
	 	<img id = "loginlogo" src="./resources/img/login_logo.png">
		<input type="text" id="loginID" placeholder="아이디"> <br>
		<input type="password" id ="loginPW" name="secret" placeholder="비밀번호">
		<input type="button" id="loginbtn" value="로그인"><br>
		<input type="button" id="idpwFind" value="ID/PW찾기">
		<a href="write.do"><input type="button" id="joinbt" value="회원가입"></a>
	</div>
	
	<div class="member">
	<c:if test="${NowUser=='admin'}">
	 	<img id = "loginlogo" src="./resources/img/login_logo.png"><br>
		<button type="button" class="close">&times;</button>
		<img src="./resources/img/member/${img}"><br>
		<span class="membercontent">
		<b>아이디 : ${id}</b><br>
		<b>이 름 : ${name}</b><br>
		<b>포인트 :${point}</b><br>
		</span>
		<a href="" id="a_member">회원관리</a>
		<a href="" id="a_rev" >예약관리</a><br><br><br>
		<a href="" id="a_movie" >영화관리</a>
		<a href="logout.do" id="a_logout">로그아웃</a>
	</c:if>
	<c:if test="${NowUser!='admin'}">
	 	<img id = "loginlogo" src="./resources/img/login_logo.png"><br>
		<button type="button" class="close">&times;</button>
		<img src="./resources/img/member/${img}"><br>
		<span class="membercontent">
		<b>아이디 : ${id}</b><br>
		<b>이 름 : ${name}</b><br>
		<b>포인트 :${point}</b><br>
		</span>
		<a href="#" id="m_detail" >회원정보</a>
		<a href="#" id="m_like" >찜한영화</a><br><br><br>
		<a href="#" id="m_rev" >예약확인</a>
		<a href="logout.do" id="m_logout">로그아웃</a>
	</c:if>
	</div>
	
</div>


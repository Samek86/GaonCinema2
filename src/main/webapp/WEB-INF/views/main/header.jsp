<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
function loginview() {
	
} 
</script>
<div class="backcolor"></div>
<div class="header-wrap">
	
	
	<span class="logo">
		<a href="main.do"><img src="./resources/img/Gaonlogo.png"></a>
	</span>

	<ul class="nav">
		<li><a href="main.do">메인</a></li>
		<li><a href="movie.do">영화</a></li>
		<li><a href="reservation.do">예매</a></li>
		<li><a href="theater.do">영화관</a></li>
		<li><a href="store.do">스토어</a></li>
		<li><a href="event.do">이벤트</a></li>
		<li><a href="qna.do">고객센터</a></li>
		<li><button id="loginbt" onclick="loginview()">로그인</button>
	</ul>

		
	<div class="login">
		<form action="">
			<input type="text" placeholder="아이디"> <br>
			<input type="password" placeholder="비밀번호">
			<input type="submit" name="login" value="로그인"> <br>
		</form>
			<input type="button" name="idpwFind" value="ID/PW찾기">
			<input type="button" name="join" value="회원가입">
	</div>
</div>

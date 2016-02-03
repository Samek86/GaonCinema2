<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head> 
<title>[header.jsp]</title>
</head>
<body>
	<ul>
		<li><a href="main.do">메인</a></li>
		<li><a href="movie.do">영화</a></li>
		<li><a href="reservation.do">예매</a></li>
		<li><a href="theater.do">영화관</a></li>
		<li><a href="store.do">스토어</a></li>
		<li><a href="event.do">이벤트</a></li>
		<li><a href="qna.do">고객센터</a></li>
	</ul>
	<div>
	 로그인
		<form action="">
			<input type="text" placeholder="아이디"> <br>
			<input type="password" placeholder="아이디">
			<input type="submit" name="login" value="로그인"> <br>
		</form>
			<input type="button" name="idpwFind" value="ID/PW찾기">
			<a href="join.do"><input type="button" name="join" value="회원가입"></a>
	</div>
</body>
</html>
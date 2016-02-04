<%@ page language="java"
		 contentType="text/html; charset=UTF-8" %>
		 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
	<title>[qna.jsp]</title>
	<style type="text/css">
 	b,input,textarea{font-size:16pt; font-weight:bold;}
	a{text-decoration: none; font-family: Comic Sans MS;}
	</style>
</head>
	<body>
	<form action="insert.do" method="post">
			<b>사용자 아이디 : </b> <input type = text name= "name"><br>
			<b>제목 : </b> <input type = text name= "title"><br>
			<b>내용 :	</b> <textarea name = "contents" rows="3" cols="20"></textarea><br>
			<input type="submit" value="확인">&nbsp;&nbsp;
			<input type="reset" value="취소">
			</form>
			<p>
		</body>
</html>
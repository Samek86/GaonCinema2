<%@ page language="java" contentType="text/html; charset=UTF-8"   %>
         
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<html>
<head>
<title>[qnaInsert.jsp]</title>
  <style type="text/css">
    b,input,td{font-size:16pt;font-family: Comic Sans MS; font-weight:bold;}
		a{text-decoration:none; font-family:Comic Sans MS; color:blue;}
	</style>
</head>
<body>
	<form action="qnaInsert.do" method="get">
		<table>
			<tr>
				<td>사용자 : </td>
				<td><input name="userid" type="text"></td>
			</tr>
			<tr>
				<td>제목 : </td>
				<td><input name="title" type="text"></td>
			</tr>
			<tr>
				<td>내용 : </td>
				<td><input name="contents" type="text"></td>
			</tr>
			<tr><td colspan="2" align="center">
				<input type="submit" value="등록">
			</td></tr>
		</table>
	</form>
</body>
</html>

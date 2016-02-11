<%@ page language="java" contentType="text/html; charset=UTF-8"   %>
         
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<html>
<head>
<title>[qnaEdit.jsp]</title>
  <style type="text/css">
    b,input,td{font-size:16pt;font-family: Comic Sans MS; font-weight:bold;}
		a{text-decoration:none; font-family:Comic Sans MS; color:blue;}
	</style>
</head>
<body>
	<form action="qnaEdit.do" method="get">
		<input name="qna_id" type="hidden" value="${bean.qna_id}">
		<table>
			<tr>
				<td>제목 : </td>
				<td><input name="title" type="text" value="${bean.title}"></td>
			</tr>
			<tr>
				<td>내용 : </td>
				<td><input name="contents" type="text" value="${bean.contents}"></td>
			</tr>
			<tr><td colspan="2" align="center">
				<input type="submit" value="수정">
			</td></tr>
		</table>
	</form>
</body>
</html>

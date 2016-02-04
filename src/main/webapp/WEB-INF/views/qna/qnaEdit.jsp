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
	<!-- 
	<form action="qnaEdit.do" method="get">
		<input type="hidden" name="qna_id" value="${bean.qna_id}">
		<b>사용자 아이디 :</b><input type="text" name="contents">
		<b>제목 :</b><input type="text" name="title" value="${bean.title}">
		<b>내용 :</b><input type="text" name="contents" value="${bean.contents}">
		<input type="submit" value="수정">
	</form>
	 -->
	<input type="button" value="삭제" onclick="loaction.href='qnaDelete.do?qna_id=${bean.qna_id}">
</body>
</html>


<%-- <td><a href="qnaDetail.do?qna_id=${bean.qna_id}">${bean.title}</a></td> --%>
<%-- <input type="button" value="수정" onclick="location.href='qnaPreEdit.do?qna_id=${bean.qna_id}'">
 --%>
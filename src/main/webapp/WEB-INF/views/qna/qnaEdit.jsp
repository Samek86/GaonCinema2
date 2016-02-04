<%@ page language="java" contentType="text/html; charset=UTF-8"   %>
         
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<html>
<head>
<title>[qnaDetail.jsp]</title>
  <style type="text/css">
    b,input,td{font-size:16pt;font-family: Comic Sans MS; font-weight:bold;}
		a{text-decoration:none; font-family:Comic Sans MS; color:blue;}
	</style>
</head>
<body>
	<form action="qnaEdit.do" method="post">
		<b>사용자 아이디 :</b><input type="text" name="contents">
		<b>제목 :</b><textarea name="title" rows="1" cols="20">${bean.qna_id}</textarea>
		<b>내용 :</b><textarea name="contents" rows="1" cols="20">${bean.qna_id}</textarea>
		<input type="submit" value="수정" onclick="location.href='qnaEdit.do?qna_id=${bean.qna_id}'">
		<input type="reset" value="취소">
	</form>
</body>
</html>


<%-- <td><a href="qnaDetail.do?qna_id=${bean.qna_id}">${bean.title}</a></td> --%>
<%-- <input type="button" value="수정" onclick="location.href='qnaPreEdit.do?qna_id=${bean.qna_id}'">
 --%>
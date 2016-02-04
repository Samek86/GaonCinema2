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
	<div align="center">
		<table width=800 border="1" cellspacing="0">
		 	<tr bgcolor=green  height=55>
		 		<td>글번호</td><td>글쓴이</td><td>제목</td><td>내용</td><td>작성일</td><td>조회수</td>
		 	</tr>
			<tr>
		  	<td>${bean.qna_id}</td>
		  	<td>${bean.userid}</td>
		  	<td>${bean.title}</td>
				<td>${bean.contents}</td>
		  	<td>${bean.wdate}</td>
				<td>${bean.count}</td>
			</tr>
			<tr>
				<td colspan="6" align="center">
					<input type="button" value="수정" onclick="location.href='qnaPreEdit.do?qna_id=${bean.qna_id}'">
					<input type="reset" value="취소" >
				</td>
			</tr>
		</table>
	</div>
</body>
</html>




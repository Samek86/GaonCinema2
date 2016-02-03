<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
         
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<html>
<head>
<title>[boardList.jsp]</title>
   <style type="text/css">
     b,input,td{font-size:16pt;font-family: Comic Sans MS; font-weight:bold;}
	 a{text-decoration:none; font-family:Comic Sans MS; color:blue;}
	</style>
</head>
<body>
<h1>[board.jsp]</h1>
	<div align="center">
	 <table width=500 border="1" cellspacing="0">
	 	<tr>
	 		<td colspan=4 align="center">
	 			<c:if test="${empty page}">
	 				<font size=7>쩝</font>
	 			</c:if> 
	 		</td>
	 	</tr>
	 
	   <tr bgcolor=pink  height=66>
	 	<td>쩝</td> <td>쩌접</td> <td>쩌저접</td>  
	   <td></td><td></td><td></td>
	   </tr>

		<c:forEach var="bean" items="${page}">
			<tr>
				<td> ${dto.rn}</td> 
		  		<td> ${bean.board_id} </td>
		  		<td> ${bean.userid} </td>
		  		<td> ${bean.title}</td>
		  		<td> ${bean.contents}</td>
		  		<td> ${bean.wdate}</td>
		  		<td> ${bean.count}</td>
			</tr>	 	
		</c:forEach>
	 </table>
		 
	 <p>
	 <h1>
	 	<a href="index.jsp">[index.jsp]</a>
	 	<a href="write.do">[board.jsp]</a>
	 	<a href="list.do">[boardList.jsp]</a>
	 </h1>
	</div>
</body>
</html> --%>



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>boardList</title>
	<style type="text/css">
	b,input,td{font-size:16pt; font-weight:bold;}
	a{text-decoration:none; font-family:Comic Sans MS;}
	</style>
</head>
<body>

<h1>[boardList.jsp]</h1>
	<div align="center">
		<table width=800 border="1" cellspacing="0">
			<tr>
				<td colspan=4 align="center">
				<td>글번호</td> <td>제목</td> <td>작성자</td> <td>게시날짜</td> <td>조회수</td>
		
				<td>추천수</td>
		
			</tr>
				<c:forEach var="bean" items="${list}">
			<tr>
				<td> ${dto.rn}</td> 
		  		<td> ${bean.board_id} </td>
		  		<td> ${bean.userid} </td>
		  		<td> ${bean.title}</td>
		  		<td> ${bean.contents}</td>
		  		<td> ${bean.wdate}</td>
		  		<td> ${bean.count}</td>
			</tr>	 	
		</c:forEach>
		</table>	
		 <h1>
	 	<a href="index.jsp">[메인가기]</a>
	 	<a href="write.do">[보드 리스트]</a>
	 	<a href="list.do">[게시판 리스트]</a>
	 </h1>
	
	
	</div>


</body>
</html>



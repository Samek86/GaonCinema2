<%@ page language="java" contentType="text/html; charset=UTF-8"   %>
         
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<html>
<head>
<title>[qnaList.jsp]</title>
</head>
<body>
	<div align="center">
	 <table width=800 height = 350 border="1" cellspacing="0">
	 	<tr>
	 		<td colspan=6 align="center">
	 			<c:if test="${empty list}">
	 				<font size=7> 등록된 데이타가 없습니다</font>
	 			</c:if> 
	 		</td>
	 	</tr>
	 	<tr bgcolor=#017467  height=55>
	 		 <td>글번호</td> <td>글쓴이</td> <td>제목</td>   
	  		 <td>작성일</td> <td>조회수</td>
	 	</tr>
	 	
	 	<!-- 데이터 출력 부분 -->
	 	<c:forEach var="bean" items="${list}">
			<tr>
		  		<td> ${bean.rn} </td>
		  		<td> ${bean.userid} </td>
		  		<td><a href="qnaDetail.do?qna_id=${bean.qna_id}">${bean.title}</a></td>
		  		<td> ${bean.wdate} </td>
		  		<td> ${bean.count} </td>
			</tr>	 	
		</c:forEach>
		
		<!-- 페이징 부분 -->
		<tr><td colspan="7" align="center">
				<c:if test="${pagelistnum > 1}">
					<a href="qnaList.do?pagenum=${pagestart - pagelistsize}${returnstring}">[이전]</a>
				</c:if>
				<c:forEach var="i" begin="${pagestart}" end="${pageend}" step="1">
					<c:choose>
						<c:when test="${i == pagenum}">
							<font style="font-family: Comic Sans MS; color: #000;">[${i}]</font>
						</c:when>
						<c:otherwise>
							<a href="qnaList.do?pagenum=${i}${returnstring}">[${i}]</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${pagelistnum < pagelisttotal}">
					<a href="qnaList.do?pagenum=${pageend + 1}${returnstring}">[다음]</a>
				</c:if>
				</td></tr>

		<!-- 검색 부분 -->
		<tr>
			<td colspan="5" align="center">
				<form action="qnaList.do">
					<select name="skey">
						<option value="userid">글쓴이</option>
						<option value="title">제목</option>
					</select>
					<input type="text" name="sval" style="width: 400px;" placeholder="여기에 검색하실 제목을 적어주세요.">
					<input type="submit" value="검색">
				</form>
			</td>
		</tr>
		
		<!-- 게시글 작성 버튼 -->
		<% if(session.getAttribute("NowUser") != null) { %>
		<tr><td colspan="5" align="center">
			<input type="button" value="게시글 작성" onclick="location.href='qnaPreInsert.do'">
		</td></tr>
		<% } %>
	</table>
	<p>
	</div>
</body>
</html>




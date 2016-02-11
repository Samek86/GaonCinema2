<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="adminMovieList">
	<h1>[adminMovieList.jsp]</h1>
	<table border="1" cellspacing="0">
		<tr>
			<th>도시이름</th><th>지역이름</th><th>영화관이름</th><th>영화관종류</th>
			<th>좌석개수</th><th>영화이름</th><th>시작시간</th><th>종료시간</th><th>가격</th>
		</tr>
		<c:forEach var="bean" items="${list}">
			<tr>
				<td>${bean.cname}</td>
				<td>${bean.lname}</td>
				<td>${bean.tname}</td>
				<td>${bean.ttype}</td>
				<td>${bean.seatcount}</td>
				<td>${bean.mname}</td>
				<td>${bean.mstarthour}</td>
				<td>${bean.mendhour}</td>
				<td>${bean.price}</td>
			</tr>
		</c:forEach>
		<tr><td colspan="9" align="center">
			<input type="button" value="영화 추가" onclick="location.href='adminMoviePreInsert.do'">
			<input type="button" value="영화 상영 시간표 추가" onclick="location.href='adminTheaterPreInsert.do'">
		</td></tr>
	</table>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	/*
	$(function() {
		$('.movieList').click(function() {
			alert("test");
			$('.movieList').css({"background-color" : "#017467", "color" : "#fff"});
			$('.theaterList').css({"background-color" : "transparent", "color" : "#017467"});
		});
		
		$('.theaterList').click(function() {
			alert("test");
			$('.movieList').css({"background-color" : "transparent", "color" : "#017467"});
			$('.theaterList').css({"background-color" : "#017467", "color" : "#fff"});
		});
	});
	*/
</script>

<div id="adminMovieTheaterList">
	<h1>[adminMovieTheaterList.jsp]</h1>
	<div>
		<button class="movieList selected" type="button" value="movieList">영화 목록</button>
		<button class="theaterList" type="button" value="theaterList">영화관 목록</button>
	</div>
	<div align="center">
		<!-- 영화 목록 출력 -->
		<table border="1" cellspacing="0">
			<tr>
				<th></th>
			</tr>
			<c:forEach var="movieBean" items="${movieList}">
				<tr>
					<td></td>
				</tr>
			</c:forEach>
		</table>
		<!-- 영화관 목록 출력 -->
		<table border="1" cellspacing="0">
			<tr>
				<th>도시이름</th><th>지역이름</th><th>영화관이름</th><th>영화관종류</th>
				<th>좌석개수</th><th>영화이름</th><th>시작시간</th><th>종료시간</th><th>가격</th>
			</tr>
			<c:forEach var="theaterBean" items="${theaterList}">
				<tr>
					<td>${theaterBean.cname}</td>
					<td>${theaterBean.lname}</td>
					<td>${theaterBean.tname}</td>
					<td>${theaterBean.ttype}</td>
					<td>${theaterBean.seatcount}</td>
					<td>${theaterBean.mname}</td>
					<td>${theaterBean.mstarthour}</td>
					<td>${theaterBean.mendhour}</td>
					<td>${theaterBean.price}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div>
		<input type="button" value="영화 추가" onclick="location.href='adminMoviePreInsert.do'">
		<input type="button" value="영화 상영 시간표 추가" onclick="location.href='adminTheaterPreInsert.do'">
	</div>
</div>
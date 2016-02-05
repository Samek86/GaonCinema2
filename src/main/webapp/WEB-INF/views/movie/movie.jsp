<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="movie">
<div class="movie-wrap">
<div align="center" id="moviesbt">
<button class="nowmovie movieselect" type="button">현재상영작</button>
<button class="nextmovie" type="button">상영예정작</button>
</div>
<ul>
	
	<c:if test="${moviepage=='nowmovie'}">
	<c:forEach  var="bean" items="${nowmovie}">
	<c:forEach var="i" begin="${1}" end="${nowmovie.length}" >
	<li class=item>
		<img class="poster" src="./resources/img/movie/${bean.POSTER }">
		<span class="rank">${i}</span>
		<div class="AVG-wrap"><div class="AVG">평점 ${bean.AVG }</div><div class="star-empty"><span class="star-wrap"><span class="star"></span></span></div></div>
		<div class="title-wrap"><img class="AGE" src="./resources/img/movie/movie${bean.AGE }.png"><div class="title">${bean.NAME_K}</div></div>
	 	<button class="detail">상세정보</button><button class="rev">예매하기</button>
	 </li>
	 </c:forEach>
	 </c:forEach>
	 </c:if>
	 <c:if test="${moviepage=='nextmovie'}">
	<c:forEach  var="bean" items="${nextmovie}">
	<c:forEach var="i" begin="${1}" end="${nextmovie.length}" >
	<li class=item>
		<img class="poster" src="./resources/img/movie/${bean.POSTER }">
		<span class="rank">${i}</span>
		<div class="AVG-wrap"><div class="AVG">평점 ${bean.AVG }</div><div class="star-empty"><span class="star-wrap"><span class="star"></span></span></div></div>
		<div class="title-wrap"><img class="AGE" src="./resources/img/movie/movie${bean.AGE }.png"><div class="title">${bean.NAME_K}</div></div>
	 	<button class="detail">상세정보</button><button class="rev">예매하기</button>
	 </li>
	 </c:forEach>
	 </c:forEach>
	 </c:if>
</ul>
</div>
</div>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="movie">
<div class="movie-wrap">
<div align="center" id="moviesbt">
<button class="nowmovie movieselect" type="button">현재상영작</button>
<button class="nextmovie" type="button">상영예정작</button>
</div>
<ul>
	<c:forEach items="${}" var="">
	<li class=item>
		<img class="poster" src="./resources/img/movie/BG_poster.jpg">
		<span class="rank">1</span>
		<div class="AVG-wrap"><div class="AVG">평점 7.9</div><div class="star-empty"><span class="star-wrap"><span class="star"></span></span></div></div>
		<div class="title-wrap"><img class="AGE" src="./resources/img/movie/movie19.png"><div class="title">번개맨</div></div>
	 	<button class="detail">상세정보</button><button class="rev">예매하기</button>
	 </li>
	 </c:forEach>
</ul>
</div>
</div>


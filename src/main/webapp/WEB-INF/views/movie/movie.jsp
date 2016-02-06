<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script>

$(document).ready(function(){ 
    $('.nowmovie').click(function(){
            $('.nextmoviepage').hide();     
            $('.nowmoviepage').show();
            $('.nowmovie').css({"background-color" : "#017467", "color" : "#fff"});
            $('.nextmovie').css({"background-color" : "transparent", "color" : "#017467"});
    });
    
    $('.nextmovie').click(function(){
            $('.nowmoviepage').hide();     
            $('.nextmoviepage').show();
            $('.nextmovie').css({"background-color" : "#017467", "color" : "#fff"});
            $('.nowmovie').css({"background-color" : "transparent", "color" : "#017467"});
    });
});


</script>


<div id="movie">
<div class="movie-wrap">
<div align="center" id="moviesbt">
	<button class="nowmovie selected" type="button" value="nowmovie">현재상영작</button>
	<button class="nextmovie" type="button" value="nextmovie">상영예정작</button>
</div>
<div class="nowmoviepage">
	<ul>
		<c:forEach  var="bean" items="${nowmovie}">
		<li class=item>
			<img class="poster" src="./resources/img/movie/${bean.POSTER }">
			<c:if test="${bean.rn <= 5}"> <span class="rank">${bean.rn}</span> </c:if>
			<c:if test="${bean.rn > 5}"> <span class="rank_empty"></span> </c:if>
			<div class="AVG-wrap"><div class="AVG">평점 ${bean.AVG }</div><div class="star-empty"><span class="star-wrap"  style="width:${13.1*bean.AVG} ;"><span class="star"></span></span></div></div>
			<div class="title-wrap"><img class="AGE" src="./resources/img/movie/movie${bean.AGE }.png"><div class="title">${bean.NAME_K}</div></div>
		 	<button class="detail">상세정보</button><button class="rev">예매하기</button>
		 </li>
		 </c:forEach>
	</ul>
</div>
<div class="nextmoviepage">
	<ul>
		<c:forEach  var="bean" items="${nextmovie}">
		<li class=item>
			<img class="poster" src="./resources/img/movie/${bean.POSTER }">
			 <span class="rank_empty"></span>
			<div class="AVG-wrap"><div class="AVG"><fmt:formatDate value="${bean.STARTDATE }" pattern="yyyy-MM-dd"/> </div><span class="dday">D-${bean.dday}</span></div>
			<div class="title-wrap"><img class="AGE" src="./resources/img/movie/movie${bean.AGE }.png"><div class="title">${bean.NAME_K}</div></div>
		 	<button class="detail">상세정보</button><button class="rev">예매하기</button>
		 </li>
		 </c:forEach>
	</ul>
</div>
</div>
</div>


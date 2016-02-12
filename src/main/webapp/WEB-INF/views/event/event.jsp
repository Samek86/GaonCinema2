<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div id="movie">
<div class="movie-wrap">
<div align="center" id="moviesbt">
	<button class="nowmovie selected" type="button" value="nowmovie">현재 이벤트</button>
	<button class="nextmovie" type="button" value="nextmovie">지난 이벤트</button>
</div>
<div class="nowmoviepage">
	<ul>
		<c:forEach  var="bean" items="${nowevent}">
			<li class=item>
				<img class="poster" onclick="eventdetail('${bean.event_id}')" src="./resources/img/event/${bean.poster }">
				<div class="title-wrap"><div class="title">${bean.title}</div></div>
			</li>
		</c:forEach>
	</ul>
</div>
<div class="asdasdasd">
	<ul>
		<c:forEach  var="bean" items="${nextevent}">
			<li class=item>
				<img class="poster" onclick="eventdetail(${bean.event_ID})" src="./resources/img/movie/${bean.poster }" >
				<div class="title-wrap"><div class="title">${bean.title}</div></div>
			</li>
		</c:forEach>
	</ul>
</div>
</div>


<div class="eventpopup mfp-hide">         
	<div class="e_hidden">  </div>   	
	<button type='button' class='mfp-close'>×</button>
	
	<div class="e_top">	          
		<div class="e_title"> sadsad </div>  
		<div>					
			<p>
				<span class="event_id"> sadsda </span>  
				<span class="start&end"> sadsad </span> 
			</p>  	
		</div>   
	</div>
	
  <div class="e_middle">						
		<img src="" class="e_img">				
	</div>
</div>



  
<!-- <div class='detailpopup '>
	<div class="d_hidden"></div>
	<button type='button' class='mfp-close'>×</button>
	<div class="d_top">
		<div class="d_POSTER"> <img src="./resources/img/movie/BG_poster.jpg"> </div>
		<div class="d_top_right">
			<div class="d_title">
				<div class="d_NAME_K">번개맨</div>
			</div>
			<ul class="info_wrap">
				<li><strong>개봉일</strong> : 2016.01.28</li>
			</ul>
		</div>
	</div>
	
	<div class="e_middle">							본문
		<img src="" class="e_img">				이미지
	</div>
	</div> -->
	 
	
</div> 


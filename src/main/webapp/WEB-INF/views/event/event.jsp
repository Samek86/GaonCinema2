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
				<img class="poster" onclick="moviedetail('${bean.event_id}')" src="./resources/img/event/${bean.poster }">
				<div class="title-wrap"><div class="title">${bean.title}</div></div>
			</li>
		</c:forEach>
	</ul>
</div>
<div class="nextmoviepage">
	<ul>
		<c:forEach  var="bean" items="${nextevent}">
			<li class=item>
				<img class="poster" onclick="moviedetail(${bean.event_ID}, '${NowUser}', 'next')" src="./resources/img/movie/${bean.poster }" >
				<div class="title-wrap"><div class="title">${bean.title}</div></div>
			</li>
		</c:forEach>
	</ul>
</div>
</div>



<!--  
<div class='detailpopup mfp-hide'>
	<button type='button' class='mfp-close'>×</button>
	<div class="d_top">
		<div class="d_POSTER"> <img src="./resources/img/movie/BG_poster.jpg"> </div>
		<div class="d_top_right">
			<div class="d_title">
				<div class="d_AGE"><img src="./resources/img/movie/movie12.png"></div>
				<div class="d_NAME_K">번개맨</div>
				<div class="d_NAME_E">Bungaeman</div>
			</div>
			<div class="d_rev">
				<div class="star-empty"><span class="star-wrap"  style="width:118;"><span class="star"></span></span></div>
				<div class="d_AVG">7.5</div>
			</div>
			<ul class="info_wrap">
				<li><strong>개봉일</strong> : 2016.01.28</li>
				<li><strong>감독</strong> : 알레산드로 칼로니, 여인영</li>
				<li><strong>출연진</strong> :
					더스틴 호프만<span>(시푸)</span>,&nbsp;데이빗 크로스<span>(크레인)</span>,&nbsp;루시 리우<span>(바이퍼)</span>,&nbsp;성룡<span>(몽키)</span>,&nbsp;세스 로건<span>(맨티스)</span>,&nbsp;안젤리나 졸리<span>(타이그리스)</span>,&nbsp;잭 블랙<span>(포)</span>,&nbsp;J.K. 시몬스<span>(카이)</span>					
				</li>
				<li><strong>장르</strong> : 액션, 애니메이션, 어드벤처 / 95 분</li>
				<li>
					<strong>공식홈페이지</strong> : 
				</li>
			</ul>
			
		</div>
	</div>
</div>
-->
</div>
















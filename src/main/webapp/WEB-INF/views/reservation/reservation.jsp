<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	
	function movieClick() {
		
	}
	
	function theaterCnameClick(cname) {
		selectTheaterLname(cname);
		selectMovieNameAgeByTheaterCname(cname);
	}
	
	function theaterLnameClick() {
		
	}
	
	function dateClick() {
		
	}
	
	/* 영화관 지역이름 가져오기 */
	function selectTheaterLname(cname) {
		$.ajax({
			url: "reservationSelectTheaterLname.do",
			data: "cname=" + cname,
			dataType: "json",
			type: "GET",
			success: function(data) {
				var strHTML = "<ul>";
				for(i = 0; i < data.list.length; i++) {
					strHTML = strHTML + "<li><a href='#'>" + data.list[i].lname + "</a></li>";
				}
				strHTML = strHTML + "</ul>";
				$('.theater_location_list').html(strHTML);
			},
			error: function(data) { alert("error : " + data) }
		});
	}
	
	function selectMovieNameAgeByTheaterCname(cname) {
		$.ajax({
			url: "reservationSelectMovieNameAgeByTheaterCname.do",
			data: "cname=" + cname,
			dataType: "json",
			type: "GET",
			success: function(data) {
				var strHTML = "<ul>";
				for(i = 0; i < data.list.length; i++) {
					strHTML = strHTML + "<li><a href='#'>";
					strHTML = strHTML + "<img width='30' height='30' src='resources/img/movie/movie" + data.list[i].age + ".png'> ";
					strHTML = strHTML + data.list[i].name_k + "</a></li>";
				}
				strHTML = strHTML + "</ul>";
				$('.movie_list').html(strHTML);
			},
			error: function(data) { alert("error : " + data) }
		});
	}
</script>

<div id="reservation">
	<h1>[reservation.jsp]</h1>
	<div class="steps">
		<!-- step1 -->
		<div class="step1">
			<!-- 영화 -->
			<div class="section_movie">
				<div class="head">영화</div>
				<div class="body">
					<div class="movie_wrap">
						<div class="movie_head">
							<ul>
								<li><a href="#">전체</a></li>
								<li><a href="#">특별관</a></li>
							</ul>
						</div>
						<div class="movie_body">
							<div class="movie_list">
								<ul>
									<c:forEach var="movieBean" items="${movieList}">
										<li><a href="#"><img width="30" height="30" src="resources/img/movie/movie${movieBean.age}.png"> ${movieBean.name_k}</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 영화관 -->
			<div class="section_theater">
				<div class="head">영화관</div>
				<div class="body">
					<div class="theater_wrap">
						<div class="theater_head">
							영화관 메뉴
						</div>
						<div class="theater_body">
							<div class="theater_city_list">
								<ul>
									<c:forEach var="theaterCnameBean" items="${theaterCnameList}">
										<li><a href="#" onclick="theaterCnameClick('${theaterCnameBean.cname}')">${theaterCnameBean.cname}</a></li>
									</c:forEach>
								</ul>
							</div>
							<div class="theater_location_list">
								<ul>
									<c:forEach var="theaterLnameBean" items="${theaterLnameList}">
										<li><a href="#">${theaterLnameBean.lname}</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 날짜 -->
			<div class="section_date">
				<div class="head">날짜</div>
				<div class="body">
					<div class="date_wrap">
						<div class="date_body">
							<div class="date_list">
								<span class="year">
									2016
								</span>
								<span class="month">
									2
								</span>
								<span class="day">
									16
								</span>
								<span class="dayweek">
									화
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 시간 -->
			<div class="section_hour">
				<div class="head">시간</div>
				<div class="body">
					<div class="hour_wrap">
						<div class="hour_head">
							시간 메뉴
						</div>
						<div class="hour_body">
							<div class="hour_list">
								<div class="hour">
									<ul>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>	
									</ul>
								</div>
								<div class="hour">
									<ul>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
										<li><a href="#"><span>20:00</span> <span>100석</span></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- step2 -->
		<div class="step2" style="display: none;">
		</div>
	</div>
	<div>
		<h1>
			여기에 예약 버튼 작업 바람
		</h1>
	</div>
</div>

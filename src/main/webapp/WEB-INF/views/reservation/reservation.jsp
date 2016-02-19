<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	/* 전역 변수 선언 */
	var movie_id = 0;
	var name_k = "";
	var age = "";
	var cname = "";
	var lname = "";
	var mstartdate = "";
	var mstarthour = "";
	
	/* 영화 전체 클릭시 */
	function selectMovieNameAgeAll() {
		this.movie_id = 0;
		this.name_k = "";
		this.age = "";
		this.cname = "";
		this.lname = "";
		this.mstartdate = "";
		this.mstarthour = "";
		$.ajax({
			url: "reservationSelectMovieNameAgeAll.do",
			dataType: "json",
			type: "GET",
			success: function(data) {
				var strHTML = "<ul>";
				for(i = 0; i < data.list.length; i++) {
					strHTML = strHTML + "<li><a href='#' onclick=movieClick('" + data.list[i].movie_id + "')>";
					strHTML = strHTML + "<img width='30' height='30' src='resources/img/movie/movie" + data.list[i].age + ".png'> ";
					strHTML = strHTML + data.list[i].name_k + "</a></li>";
				}
				strHTML = strHTML + "</ul>";
				$('.movie_list').html(strHTML);
			},
			error: function(data) { alert("error : " + data) }
		});
	}
	
	/* 영화관 전체 클릭시 */
	function selectTheaterCnameAll() {
		this.movie_id = 0;
		this.name_k = "";
		this.age = "";
		this.cname = "";
		this.lname = "";
		this.mstartdate = "";
		this.mstarthour = "";
		$.ajax({
			url: "reservationSelectTheaterCnameAll.do",
			dataType: "json",
			type: "GET",
			success: function(data) {
				var strHTML = "<ul>";
				for(i = 0; i < data.list.length; i++) {
					strHTML = strHTML + "<li><a href='#' onclick=theaterCnameClick('" + data.list[i].cname + "')>" + data.list[i].cname + "</a></li>";
				}
				strHTML = strHTML + "</ul>";
				$('.theater_city_list').html(strHTML);
				selectTheaterLname(data.list[0].cname);
			},
			error: function(data) { alert("error : " + data) }
		});
	}
	
	/* 날짜 전체 클릭시 */
	function selectDateAll() {
		this.movie_id = 0;
		this.name_k = "";
		this.age = "";
		this.cname = "";
		this.lname = "";
		this.mstartdate = "";
		this.mstarthour = "";
		$.ajax({
			url: "reservationSelectDateAll.do",
			dataType: "json",
			type: "GET",
			success: function(data) {
				var strHTML = "<ul>";
				for(i = 0; i < data.list.length; i++) {
					strHTML = strHTML + "<li><a href='#' onclick=dateClick('" + data.list[i].mstartdate + "')>" + data.list[i].mstartdate + "</a></li>";
				}
				strHTML = strHTML + "</ul>";
				$('.date_list').html(strHTML);
			},
			error: function(data) { alert("error : " + data) }
		});
	}
	
	/* 영화 클릭시 */
	function movieClick(movie_id) {
		this.movie_id = movie_id;
		selectTheaterCname(movie_id);
		selectDate(movie_id, "", "");
	}
	
	/* 도시 클릭시 */
	function theaterCnameClick(cname) {
		this.cname = cname;
		selectTheaterLname(cname);
		selectMovieNameAge(cname, "", "");
		selectDate(0, cname, "");
	}
	
	/* 지역 클릭시 */
	function theaterLnameClick(lname) {
		this.lname = lname;
		selectMovieNameAge("", lname, "");
		selectDate(0, "", lname);
	}
	
	/* 날짜 클릭시 */
	function dateClick(mstartdate) {
		this.mstartdate = mstartdate;
		selectMovieNameAge("", "", mstartdate);
		selectTheaterCname(0, mstartdate);
	}
	
	/* 시간 클릭시 */
	function hourClick(hour) {
		this.hour = hour;
	}
	
	/* 영화 이름, 관람가 가져오기 */
	function selectMovieNameAge(cname, lname, mstartdate) {
		$.ajax({
			url: "reservationSelectMovieNameAge.do",
			data: "cname=" + cname + "&lname=" + lname + "&mstartdate=" + mstartdate,
			dataType: "json",
			type: "GET",
			success: function(data) {
				var strHTML = "<ul>";
				for(i = 0; i < data.list.length; i++) {
					strHTML = strHTML + "<li><a href='#' onclick=movieClick('" + data.list[i].movie_id + "')>";
					strHTML = strHTML + "<img width='30' height='30' src='resources/img/movie/movie" + data.list[i].age + ".png'> ";
					strHTML = strHTML + data.list[i].name_k + "</a></li>";
				}
				strHTML = strHTML + "</ul>";
				$('.movie_list').html(strHTML);
			},
			error: function(data) { alert("error : " + data) }
		});
	}
	
	/* 영화관 도시 이름 가져오기 */
	function selectTheaterCname(movie_id, mstartdate) {
		$.ajax({
			url: "reservationSelectTheaterCname.do",
			data: "movie_id=" + movie_id + "&mstartdate=" + mstartdate,
			dataType: "json",
			type: "GET",
			success: function(data) {
				var strHTML = "<ul>";
				for(i = 0; i < data.list.length; i++) {
					strHTML = strHTML + "<li><a href='#' onclick=theaterCnameClick('" + data.list[i].cname + "')>" + data.list[i].cname + "</a></li>";
				}
				strHTML = strHTML + "</ul>";
				$('.theater_city_list').html(strHTML);
				if(data.list.length == 0) {
					selectTheaterLname("");
				} else {
					selectTheaterLname(data.list[0].cname);
				}
			},
			error: function(data) { alert("error : " + data) }
		});
	}
	
	/* 영화관 지역 이름 가져오기 */
	function selectTheaterLname(cname) {
		$.ajax({
			url: "reservationSelectTheaterLname.do",
			data: "cname=" + cname,
			dataType: "json",
			type: "GET",
			success: function(data) {
				var strHTML = "<ul>";
				for(i = 0; i < data.list.length; i++) {
					strHTML = strHTML + "<li><a href='#' onclick=theaterLnameClick('"+ data.list[i].lname +"')>" + data.list[i].lname + "</a></li>";
				}
				strHTML = strHTML + "</ul>";
				$('.theater_location_list').html(strHTML);
			},
			error: function(data) { alert("error : " + data) }
		});
	}
	
	/* 날짜 가져오기 */
	function selectDate(movie_id, cname, lname) {
		$.ajax({
			url: "reservationSelectDate.do",
			data: "movie_id=" + movie_id + "&cname=" + cname + "&lname=" + lname,
			dataType: "json",
			type: "GET",
			success: function(data) {
				var strHTML = "<ul>";
				for(i = 0; i < data.list.length; i++) {
					strHTML = strHTML + "<li><a href='#' onclick=dateClick('"+ data.list[i].mstartdate +"')>" + data.list[i].mstartdate + "</a></li>";
				}
				strHTML = strHTML + "</ul>";
				$('.date_list').html(strHTML);
			},
			error: function(data) { alert("error : " + data) }
		});
	}
	
	/* 시간 가져오기 */
	function selectHour(movie_id, cname, lname, mstartdate) {
		
	}
	
	/* 날짜 보여주기 */
	function showDate() {
		var date = new Date();
		var strHTML = "";
		strHTML = strHTML + "<div class='date_month_wrap'>";
		strHTML = strHTML + "<span class='year'>" + date.getFullYear() + " </span>";
		strHTML = strHTML + "<span class='month'>" + (date.getMonth() + 1) + "</span>";
		strHTML = strHTML + "</div>";
		for(i = date.getDate(); i < date.getDate + 10; i++) {
			strHTML = strHTML + "<div class='date_date_wrap'>";
			strHTML = strHTML + "<span class='date'>" + i + "</span>";
			strHTML = strHTML + "<span class='day'>" + "화" + "</span>";
			strHTML = strHTML + "</div>";
		}
		$('.date_list').html(strHTML);
	}
	
	function test() {
		var str = "movie_id = " + movie_id + "\nname_k = " + name_k + "\nage = " + age 
						+ "\ncname = " + cname + "\nlname = " + lname + "\ndate = " + mstartdate 
						+ "\nhour = " + mstarthour;
		alert(str);
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
								<li><a href="#" onclick="selectMovieNameAgeAll();">전체</a></li>
							</ul>
						</div>
						<div class="movie_body">
							<div class="movie_list">
								<ul>
									<c:forEach var="movieBean" items="${movieList}">
										<li><a href="#" onclick="movieClick('${movieBean.movie_id}');"><img width="30" height="30" src="resources/img/movie/movie${movieBean.age}.png"> ${movieBean.name_k}</a></li>
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
							<ul>
								<li><a href="#" onclick="selectTheaterCnameAll();">전체</a></li>
							</ul>
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
										<li><a href="#" onclick="theaterLnameClick('${theaterLnameBean.lname}');">${theaterLnameBean.lname}</a></li>
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
						<div class="date_head">
							<ul>
								<li><a href="#" onclick="selectDateAll();">전체</a></li>
							</ul>
						</div>
						<div class="date_body">
							<div class="date_list">
								<div class="date_month_wrap">
									<ul>
										<c:forEach var="dateBean" items="${dateList}">
											<li><a href="#" onclick="dateClick('${dateBean.mstartdate}')">${dateBean.mstartdate}</a></li>
										</c:forEach>
									</ul>
								</div>
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
			<input type="button" onclick="test();" value="테스트">
			여기에 예약 버튼 작업 바람
		</h1>
	</div>
</div>

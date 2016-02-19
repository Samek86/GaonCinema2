<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	$(function() {
		showTheater("전체", null);
	});
	
	function showTheater(cname, lname) {
		if(cname == "전체" && lname == null) { //전체 클릭
			selectIntroAll();
			$('.lname').hide();
		} else if(cname != null && lname == null) { //도시 클릭
			selectLname(cname);
			selectIntroByCname(cname);
			$('.lname').show();
		} else if(cname == null && lname != null) { //지역 클릭
			selectIntroByLname(lname);
		}
	}
	
	/* 지역목록 가져오기 */
	function selectLname(cname) {
		$.ajax({
			url: "theaterSelectLname.do",
			data: "cname=" + cname,
			dataType: "json",
			type: "GET",
			success: function(data) {
				g_alert("success : " + data);
			},
			error: function(data) { g_alert("error : " + data) }
		});
	}
	
	/* 전체 영화관 소개 가져오기 */
	function selectIntroAll() {
		$.ajax({
			url: "theaterSelectIntroAll.do",
			dataType: "json",
			type: "GET",
			success: function(data) {
				g_alert("success : " + data);
			},
			error: function(data) { g_alert("error : " + data) }
		});
	}
	
	/* 도시 영화관 소개 가져오기 */
	function selectIntroByCname(cname) {
		$.ajax({
			url: "theaterSelectIntroByCname.do",
			data: "cname=" + cname,
			dataType: "json",
			type: "GET",
			success: function(data) {
				g_alert("success : " + data);
			},
			error: function(data) { g_alert("error : " + data) }
		});
	}
	
	/* 지역 영화관 소개 가져오기 */
	function selectIntroByLname(lname) {
		$.ajax({
			url: "theaterSelectIntroByLname.do",
			data: "lname=" + lname,
			dataType: "json",
			type: "GET",
			success: function(data) {
				g_alert("success : " + data);
			},
			error: function(data) { g_alert("error : " + data) }
		});
	}
	
	/* AJAX 예시
	$.ajax({
			url: "theaterAjaxSelectLname.do",
			data: "cname=" + cname,
			dataType: "json",
			type: "GET",
			success: function(data) {
				var list = "<ul>";
				for(i = 0; i < data.list.length; i++) {
					lname = data.list[i].lname;
					list = list + "<li><a onclick=showTheater(" + null + ",'" + lname + "'" +")>" + lname + "</a></li>";
				}
				list = list + "</ul>";
				$('.sub_menu').html(list);
			},
			error: function(data) { alert("error : " + data); }
	});
	*/
</script>
<div id="theater">
<img class="bg" src="./resources/img/theaterbg.png">
	<div class="theater_wrap">
		<div class="city_menu">
			<ul>
				<li><a class="all" href="#">전체</a></li>
				<c:forEach var="cnameBean" items="${cnameList}">
					<li><a class="cname" href="#">${cnameBean.cname}</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="location_menu">
			<ul>
				<li><a class="lname" href="#">강남</a></li>
				<li><a class="lname" href="#">동대문</a></li>
				<li><a class="lname" href="#">목동</a></li>
				<li><a class="lname" href="#">상봉</a></li>
				<li><a class="lname" href="#">센트럴</a></li>
				<li><a class="lname" href="#">수유</a></li>
				<li><a class="lname" href="#">신촌</a></li>
				<li><a class="lname" href="#">은평</a></li>
				<li><a class="lname" href="#">이수</a></li>
				<li><a class="lname" href="#">코엑스</a></li>
				<li><a class="lname" href="#">화곡</a></li>
			</ul>
		</div>
		<div class="theater_intro_wrap">
			<div class="head">
				신촌
			</div>
			<div class="body">
				<div class="text" style="position: relative; left: 50px; top: 30px; text-align: left; color: #333333;">
					설명글
				</div>
				<img src="resources/img/theater/theater_sample.jpg" style="width: 100%; height: 100%; opacity: 0.6;">
			</div>
		</div>
	</div>
</div>
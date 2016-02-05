<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	//초기화
	$(function() {
		showTheater('전체', null);
	});
	
	//영화관 목록 보여주기
	function showTheater(cname, lname) {
		if(cname == '전체') {
			$('.sub_menu').hide();
			selectAll();
		} else if(cname != null) {
			selectLname(cname, null);
			selectAllByCname(cname);
		} else if(lname != null) {
			selectAllByLname(lname);
		}
		console.log("cname = " + cname + ", lname = " + lname);
	}
	
	//도시 이름 보여주기
	function selectLname(cname) {
		$('.sub_menu').show();
		$.ajax({
			url: "theaterAjaxSelectLname.do",
			data: "cname=" + cname,
			dataType: "json",
			type: "GET",
			success: function(data) {
				var list = "<ul>";
				for(i = 0; i < data.list.length; i++) {
					lname = data.list[i].lname;
					list = list + "<li><a href='#' onclick=showTheater(" + null + ",'" + lname + "'" +")>" + lname + "</a></li>";
				}
				list = list + "</ul>";
				$('.sub_menu').html(list);
			},
			error: function(data) { alert("error : " + data); }
		});
	}
	
	//영화관 전체 목록 보여주기
	function selectAll() {
		$.ajax({
			url: "theaterAjaxSelectAll.do",
			dataType: "json",
			type: "GET",
			success: function(data) {
				var list = "<div><table style='display: inline-block; font-size: 16pt; color: white;' border='1' cellspacing='0'>";
				list = list + "<tr>";
				list = list + "<th>도시이름</th><th>지역이름</th><th>영화관이름</th><th>영화관종류</th>";
				list = list + "<th>좌석개수</th><th>영화이름</th><th>시작시간</th><th>종료시간</th><th>가격</th>";
				list = list + "</tr>";
				for(i = 0; i < data.list.length; i++) {
					list = list + "<tr>";
					list = list + "<td>" + data.list[i].cname + "</td>";
					list = list + "<td>" + data.list[i].lname + "</td>";
					list = list + "<td>" + data.list[i].tname + "</td>";
					list = list + "<td>" + data.list[i].ttype + "</td>";
					list = list + "<td>" + data.list[i].seatcount + "</td>";
					list = list + "<td>" + data.list[i].mname + "</td>";
					list = list + "<td>" + data.list[i].mstarthour + "</td>";
					list = list + "<td>" + data.list[i].mendhour + "</td>";
					list = list + "<td>" + data.list[i].price + "</td>";
					list = list + "</tr>";
				}
				list = list + "</table></div>";
				$('.list').html(list);
			},
			error: function(data) { alert("error : " + data); }
		});
	}
	
	//도시 영화관 전체 목록 보여주기
	function selectAllByCname(cname) {
		$.ajax({
			url: "theaterAjaxSelectAllByCname.do",
			data: "cname=" + cname,
			dataType: "json",
			type: "GET",
			success: function(data) {
				var list = "<div><table style='display: inline-block; font-size: 16pt; color: white;' border='1' cellspacing='0'>";
				list = list + "<tr>";
				list = list + "<th>도시이름</th><th>지역이름</th><th>영화관이름</th><th>영화관종류</th>";
				list = list + "<th>좌석개수</th><th>영화이름</th><th>시작시간</th><th>종료시간</th><th>가격</th>";
				list = list + "</tr>";
				for(i = 0; i < data.list.length; i++) {
					list = list + "<tr>";
					list = list + "<td>" + data.list[i].cname + "</td>";
					list = list + "<td>" + data.list[i].lname + "</td>";
					list = list + "<td>" + data.list[i].tname + "</td>";
					list = list + "<td>" + data.list[i].ttype + "</td>";
					list = list + "<td>" + data.list[i].seatcount + "</td>";
					list = list + "<td>" + data.list[i].mname + "</td>";
					list = list + "<td>" + data.list[i].mstarthour + "</td>";
					list = list + "<td>" + data.list[i].mendhour + "</td>";
					list = list + "<td>" + data.list[i].price + "</td>";
					list = list + "</tr>";
				}
				list = list + "</table></div>";
				$('.list').html(list);
			},
			error: function(data) { alert("error : " + data); }
		});
	}
	
	//지역 영화관 전체 목록 보여주기
	function selectAllByLname(lname) {
		$.ajax({
			url: "theaterAjaxSelectAllByLname.do",
			data: "lname=" + lname,
			dataType: "json",
			type: "GET",
			success: function(data) {
				var list = "<div><table style='display: inline-block; font-size: 16pt; color: white;' border='1' cellspacing='0'>";
				list = list + "<tr>";
				list = list + "<th>도시이름</th><th>지역이름</th><th>영화관이름</th><th>영화관종류</th>";
				list = list + "<th>좌석개수</th><th>영화이름</th><th>시작시간</th><th>종료시간</th><th>가격</th>";
				list = list + "</tr>";
				for(i = 0; i < data.list.length; i++) {
					list = list + "<tr>";
					list = list + "<td>" + data.list[i].cname + "</td>";
					list = list + "<td>" + data.list[i].lname + "</td>";
					list = list + "<td>" + data.list[i].tname + "</td>";
					list = list + "<td>" + data.list[i].ttype + "</td>";
					list = list + "<td>" + data.list[i].seatcount + "</td>";
					list = list + "<td>" + data.list[i].mname + "</td>";
					list = list + "<td>" + data.list[i].mstarthour + "</td>";
					list = list + "<td>" + data.list[i].mendhour + "</td>";
					list = list + "<td>" + data.list[i].price + "</td>";
					list = list + "</tr>";
				}
				list = list + "</table></div>";
				$('.list').html(list);
			},
			error: function(data) { alert("error : " + data); }
		});
	}
	
</script>

<div id="theater">
	<h1>&nbsp;</h1>
	<h1>&nbsp;</h1>
	
	<div class="main_menu">
		<ul>
			<li><a href="#" onclick="showTheater('전체', null)">전체</a></li>
			<c:forEach var="cname" items="${cnameList}">
				<li><a href="#" onclick="showTheater('${cname}', null)">${cname}</a></li>
			</c:forEach>
		</ul>
	</div>
	<div class="sub_menu"></div>
	<a href="#" onclick=""></a>
	<div class="list">
		
	</div>
</div>
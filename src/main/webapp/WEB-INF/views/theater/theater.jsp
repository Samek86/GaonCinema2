<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>[theater.jsp]</title>
</head>
<script>
	$(function() {
		$("#selectRoomType").change(function() {
			$.ajax({
				url: "theaterAjax.do",
				data: "cname=" + $("#selectRoomType").val(),
				dataType: "json",
				type: "GET",
				success: function(data) {
					alert("success : " + data);
				},
				error: function(data) {
					alert("error : " + data);
				}
			});
		});
	});
	
	function test(cname) {
		$.ajax({
			url: "theaterAjax.do",
			data: "cname=" + cname,
			dataType: "json",
			type: "GET",
			success: function(data) {
				var lnameList = "";
				for(i = 0; i < data.lname.length; i++) {
					lnameList = lnameList + "<li><a href=#>" + data.lname[i].lname + "</a></li>";
				}
				$('#lnameList').html(lnameList);
				alert("success : " + data.lname[0].lname);
			},
			error: function(data) {
				alert("error : " + data);
			}
		});
	}
</script>
<body>
	<h1>[theater.jsp]</h1>
	<ul>
		<c:forEach var="cname" items="${cnameList}">
			<li><a href="#" onclick="test('${cname}')">${cname}</a></li>
			<!-- <li><a href="theater.do?cname=${cname}">${cname}</a></li> -->
		</c:forEach>
	</ul>
	<div>
		<ul id="lnameList">
			<!-- 
			<c:forEach var="lname" items="${lnameList}">
				<li><a href="theaterSchedule.do?lname=${lname}">${lname}</a></li>
			</c:forEach>
			 -->
		</ul>
	</div>
</body>
</html>

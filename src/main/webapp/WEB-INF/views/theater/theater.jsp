<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>[theater.jsp]</title>

</head>
<script>
	$(function() {
		$('#seoul').click(function() {
			$('#test').hide();
		});
	});
</script>
<body>
	<h1>[theater.jsp]</h1>
	<ul>
		<li><a id="seoul" href="#">서울</a></li>
		<li><a href="#">인천/경기</a></li>
		<li><a href="#">대전/충청/세종</a></li>
		<li><a href="#">부산/대구/경상</a></li>
		<li><a href="#">광주/전라</a></li>
		<li><a href="#">강원</a></li>
		<li><a href="#">제주</a></li>
	</ul>
	<div id="test">
		<ul>
			<li>신촌</li>
			<li>강남</li>
			<li>명동</li>
		</ul>
	</div>
</body>
</html>
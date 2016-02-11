<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	$(function(){
		$('.datepicker').datepicker({
			dateFormat: 'yy-mm-dd'
		});
	});
</script>
<div id="adminTheaterInsert">
	<h1>[adminTheaterInsert.jsp]</h1>
	<form action="adminTheaterInsert.do">
		<table>
			<tr><td>도시이름</td><td><input name="cname" type="text" placeholder="도시이름"></td></tr>
			<tr><td>지역이름</td><td><input name="lname" type="text" placeholder="지역이름"></td></tr>
			<tr><td>영화관이름</td><td><input name="tname" type="text" placeholder="영화관이름"></td></tr>
			<tr><td>영화관종류</td><td>
				<select name="ttype">
					<option value="2D">2D</option>
					<option value="3D">3D</option>
				</select>
			</td></tr>
			<tr><td>좌석개수</td><td><input name="seatcount" type="text" placeholder="좌석개수"></td></tr>
			<tr><td>영화이름</td><td><input name="mname" type="text" placeholder="영화이름"></td></tr>
			<tr><td>상영시작시간</td><td><input name="mstarthour" class="datepicker" type="text" placeholder="상영시작시간"></td></tr>
			<tr><td>상영종료시간</td><td><input name="mendhour" class="datepicker" type="text" placeholder="상영종료시간"></td></tr>
			<tr><td>가격</td><td><input name="price" type="text" placeholder="가격"></td></tr>
			<tr><td colspan="2" align="center"><input type="submit" value="등록"></td></tr>
		</table>
	</form>
</div>
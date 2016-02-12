<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	$(function(){
		$('.datepicker').datepicker({
			dateFormat: 'yy-mm-dd'
		});
	});
</script>
<div id="adminMovieInsert">
	<h1>[adminMovieInsert.jsp]</h1>
	<form action="adminMovieInsert.do" method="post" enctype="multipart/form-data">
		<table>
			<tr><td>영화제목(한글)</td><td><input name="NAME_K" type="text" placeholder="영화제목(한글)"></td></tr>
			<tr><td>영화제목(영문)</td><td><input name="NAME_E" type="text" placeholder="영화제목(영문)"></td></tr>
			<tr><td>관람가</td><td>
				<select name="AGEtext">
					<option value="전체 관람가">전체 관람가</option>
					<option value="12세 관람가">12세 관람가</option>
					<option value="15세 관람가">15세 관람가</option>
					<option value="청소년 관람불가">청소년 관람불가</option>
				</select>
			</td></tr>
			<tr><td>개봉일</td><td><input name="D_DAYSTRING" class="datepicker" type="text" placeholder="개봉일"></td></tr>
			<tr><td>감독</td><td><input name="DIRECTOR" type="text" placeholder="감독"></td></tr>
			<tr><td>배우</td><td><input name="ACTOR" type="text" placeholder="배우"></td></tr>
			<tr><td>장르</td><td><input name="GENRE" type="text" placeholder="장르"></td></tr>
			<tr><td>영화소개페이지</td><td><input name="PAGE" type="text" placeholder="영화소개페이지링크"></td></tr>
			<tr><td>평점</td><td><input name="AVG" type="text" placeholder="평점"></td></tr>
			<tr><td>평점만점</td><td><input name="AVG_NUM" type="text" placeholder="평점만점"></td></tr>
			<tr><td>내용</td><td><input name="CONTENT" type="text" placeholder="내용"></td></tr>
			<tr><td>포스터</td><td><input name="POSTERFILE" type="file" placeholder="포스터"></td></tr>
			<tr><td>예고편</td><td><input name="MOVIE" type="text" placeholder="예고편링크"></td></tr>
			<tr><td>스틸컷1</td><td><input name="STEEL1FILE" type="file" placeholder="스틸컷1"></td></tr>
			<tr><td>스틸컷2</td><td><input name="STEEL2FILE" type="file" placeholder="스틸컷2"></td></tr>
			<tr><td>스틸컷3</td><td><input name="STEEL3FILE" type="file" placeholder="스틸컷3"></td></tr>
			<tr><td>스틸컷4</td><td><input name="STEEL4FILE" type="file" placeholder="스틸컷4"></td></tr>
			<tr><td>스틸컷5</td><td><input name="STEEL5FILE" type="file" placeholder="스틸컷5"></td></tr>
			<tr><td>스틸컷6</td><td><input name="STEEL6FILE" type="file" placeholder="스틸컷6"></td></tr>
			<tr><td>스틸컷7</td><td><input name="STEEL7FILE" type="file" placeholder="스틸컷7"></td></tr>
			<tr><td>상영길이</td><td><input name="R_TIME" type="text" placeholder="상영길이"></td></tr>
			<tr><td>상영시작일</td><td><input name="STARTDATESTRING" class="datepicker" type="text" placeholder="상영시작일"></td></tr>
			<tr><td>상영종료일</td><td><input name="ENDDATESTRING" class="datepicker" type="text" placeholder="상영종료일"></td></tr>
			<tr><td colspan="2" align="center"><input type="submit" value="등록"></td></tr>
		</table>
	</form>
</div>
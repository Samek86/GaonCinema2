<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="reservation">
	<h1>[reservation.jsp]</h1>
	<div class="steps">
		<!-- step1 -->
		<div class="step1">
			<div class="section_movie">
				<div class="head">영화</div>
					<ul>
						<c:forEach var="movieBean" items="${movieList}">
							<li style="width: 100px;">
								<a href="#"><img src="/resources/img/movie/movie${movieBean.age}.png">${movieBean.m_name}</a>
							</li>
						</c:forEach>
					</ul>		
				<div class="body">영화내용</div>
			</div>
			<div class="section_theater">
				<div class="head">영화관</div>
				<div class="body">영화관내용</div>
			</div>
			<div class="section_date">
				<div class="head">날짜</div>
				<div class="body">날짜내용</div>
			</div>
			<div class="section_hour">
				<div class="head">시간</div>
				<div class="body">시간내용</div>
			</div>
		</div>
		<!-- step2 -->
	</div>
</div>
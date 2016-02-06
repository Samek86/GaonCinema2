<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%session.getAttribute("NowUser");  %>
<%session.getAttribute("ok");  %>
<script>

$(document).ready(function(){
	$('.fotorama').fotorama({ height: screensize()});
});
$(document).ready(z);$(window).scroll(z);function z(){var q=navigator.userAgent.toLowerCase();if(q.indexOf("chrome")!=-1||q.indexOf("safari")!=-1||q.indexOf("opera")!= -1||q.indexOf("firefox")!= -1){}else{alert("크롬을 사용해서 페이지를 열어주세요");close();} };

window.onresize = function() {
	$('.fotorama').fotorama({ height: screensize()});};

function screensize(){
	var screensize = window.innerHeight
	|| document.documentElement.clientHeight
	|| document.body.clientHeight;
	screensize = screensize-174 +"px";
	return screensize;
}

</script>

<c:if test="${not empty ok }">
	g_alert("${ok}");
	<%
	session.removeAttribute("ok");  
	%>
</c:if>

	<div class="fotorama"
  	 	data-fit = "cover" data-autoplay="6000" data-transition="dissolve"
		data-arrows="true" data-click="true" data-swipe="true" data-trackpad="true" data-loop="true" 
		style="margin: 0;">
	  <div data-img="./resources/img/panda_1600x600.jpg" class="banner-text" ><div>쿵푸팬더3</div><div class="banner-text2">쿵푸 마스터로 나선 '포'! 팬더 인생 최대의 도전이 시작된다!</div></div>
	  <div data-img="./resources/img/kumsa_1600x600.jpg" class="banner-text" ><div>검사외전</div><div class="banner-text2">검사와 사기꾼의 유쾌한 버디플레이!</div></div>
	</div>
	
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1><br>
	<h1>[main.jsp]</h1>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<c:if test="${not empty ok }">
g_alert("${ok}");
<%
session.removeAttribute("ok");  
%>
</c:if>

</script>

	<div class="fotorama"
  	 	data-fit = "cover" data-autoplay="6000" data-transition="dissolve"
		data-arrows="true" data-click="true" data-swipe="true" data-trackpad="true" data-loop="true" 
		style="margin: 0;">
	  <div data-img="./resources/img/panda_1600x600.jpg" class="banner-text" ><div>쿵푸팬더3</div><div class="banner-text2">쿵푸 마스터로 나선 '포'! 팬더 인생 최대의 도전이 시작된다!</div></div>
	  <div data-img="./resources/img/kumsa_1600x600.jpg" class="banner-text" ><div>검사외전</div><div class="banner-text2">검사와 사기꾼의 유쾌한 버디플레이!</div></div>
	</div>
	
	<iframe width="560" height="315" src="https://www.youtube.com/embed/ik6nvXzwDLE" frameborder="0" allowfullscreen></iframe>
	<!-- <video id="my-video" class="video-js" controls preload="auto" width="640" height="264" poster="./resources/img/panda_1600x600.jpg" data-setup="{}">
    <source src="https://www.youtube.com/embed/ik6nvXzwDLE" type='video/mp4'>
    <source src="https://www.youtube.com/embed/ik6nvXzwDLE" type='video/webm'>
    <p class="vjs-no-js">
      To view this video please enable JavaScript, and consider upgrading to a web browser that
      <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
    </p>
  </video> -->
	<div class="container demo-4">
	<div class="gallery">
		<!-- Elastislide Carousel -->
		<ul id="carousel" class="elastislide-list">
			<li data-preview="./resources/img/movie/BG_01.jpg"><a href="#"><img src="./resources/img/movie/BG_01.jpg"/></a></li>
			<li data-preview="./resources/img/movie/BG_02.jpg"><a href="#"><img src="./resources/img/movie/BG_02.jpg"/></a></li>
			<li data-preview="./resources/img/movie/BG_03.jpg"><a href="#"><img src="./resources/img/movie/BG_03.jpg"/></a></li>
			<li data-preview="./resources/img/movie/BG_04.jpg"><a href="#"><img src="./resources/img/movie/BG_04.jpg"/></a></li>
			<li data-preview="./resources/img/movie/BG_05.jpg"><a href="#"><img src="./resources/img/movie/BG_05.jpg"/></a></li>
			<li data-preview="./resources/img/movie/BG_06.jpg"><a href="#"><img src="./resources/img/movie/BG_06.jpg"/></a></li>
			<li data-preview="./resources/img/movie/BG_07.jpg"><a href="#"><img src="./resources/img/movie/BG_07.jpg"/></a></li>
		</ul>
		<!-- End Elastislide Carousel -->

		<div class="image-preview">
			<img id="preview" src="./resources/img/BG_01.jpg" />
		</div>
	</div>
	</div>
	
	<script type="text/javascript">
			
			// example how to integrate with a previewer

			var current = 0,
				$preview = $( '#preview' ),
				$carouselEl = $( '#carousel' ),
				$carouselItems = $carouselEl.children(),
				carousel = $carouselEl.elastislide( {
					current : current,
					minItems : 4,
					onClick : function( el, pos, evt ) {

						changeImage( el, pos );
						evt.preventDefault();

					},
					onReady : function() {

						changeImage( $carouselItems.eq( current ), current );
						
					}
				} );

			function changeImage( el, pos ) {

				$preview.attr( 'src', el.data( 'preview' ) );
				$carouselItems.removeClass( 'current-img' );
				el.addClass( 'current-img' );
				carousel.setCurrent( pos );

			}

		</script>
	
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

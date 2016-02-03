<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>[header.jsp]</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js">
</script>

<script>
var request = null;
$(document).ready(function(){ //DOM이 준비되고
    $('#loginbt').click(function(){ // ID가 loginForm인 요소를 클릭하면
        var state = $('.login').css('display'); // state 변수에 ID가 moreMenu인 요소의 display의 속성을 '대입'
        if(state == 'none'){ // state가 none 상태일경우 
            $('.login').show(); // ID가 testdiv인 요소를 show();
        }else{ // 그 외에는
            $('.login').hide(); // ID가 testdiv인 요소를 hide();         
        }
    });
});

function login() {
	request = new XMLHttpRequest();
	var ID = myform.name.value;
	var PW = myform.secret.value;
	if (ID == "" || PW == "") {
		alert("공백입니다.");
		return;
	} else {
		var url = "login.do?loginID=" + ID + "&loginPW=" + PW;
		request.onreadystatechange = ResultDisp;
		//callback method에서는 ()를 빼야 한다.
		request.open('GET', url, true);
		request.send(null);
	}
}

  function ResultDisp() {
		if (request.readyState == 4 && request.status == 200) {
			
			var data = request.responseXML;
			data.trim();
			var tagA = data.getElementsByTagName("login")[0].childNodes[0].nodeValue;
			alert(tagA);
			if (tagA == 'true') {
				var tagC = location.reload();
			
			} else {
				alert("로그인 실패하였습니다.")
			}
		}// if end	
	} //end 
</script>

<div class="backcolor"></div>
<div class="header-wrap">
	
	
	<span class="logo">
		<a href="main.do"><img src="./resources/img/Gaonlogo.png"></a>
	</span>

	<ul class="nav">
		<li><a href="main.do">메인</a></li>
		<li><a href="movie.do">영화</a></li>
		<li><a href="reservation.do">예매</a></li>
		<li><a href="theater.do">영화관</a></li>
		<li><a href="store.do">스토어</a></li>
		<li><a href="event.do">이벤트</a></li>
		<li><a href="qnaList.do">고객센터</a></li>
		<li><button id="loginbt">로그인</button>
	</ul>
	
	<div class="login">
	 <!-- <img alt="" src=""> 이미지 로고 -->
		<form name="myform" action="login.do">
			<input type="text" name="name" placeholder="아이디"> <br>
			<input type="password" name="secret" placeholder="비밀번호">
			<input type="button" onclick="login()" value="로그인">
		</form>
			<input type="button" name="idpwFind" value="ID/PW찾기">
			<input type="button" name="join" value="회원가입">
	</div>
</div>

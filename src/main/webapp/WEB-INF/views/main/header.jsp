<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head> 
<title>[header.jsp]</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js">
</script>

<script>
var request = null;

$(document).ready(function(){ //DOM이 준비되고
    $('#loginForm').click(function(){ // ID가 loginForm인 요소를 클릭하면
        var state = $('#testdiv').css('display'); // state 변수에 ID가 moreMenu인 요소의 display의 속성을 '대입'
        if(state == 'none'){ // state가 none 상태일경우 
            $('#testdiv').show(); // ID가 testdiv인 요소를 show();
        }else{ // 그 외에는
            $('#testdiv').hide(); // ID가 testdiv인 요소를 hide();         
        }
    });
});

function login() {
	request = new XMLHttpRequest();
	var ID = myform.name.value;
	var PW = myform.secret.value;
	if (ID == "" || PW == "") {
		alert("공백입니다.");
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
			alert(data);
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
</head>
<body>
	<ul>
		<li><a href="main.do">메인</a></li>
		<li><a href="movie.do">영화</a></li>
		<li><a href="reservation.do">예매</a></li>
		<li><a href="theater.do">영화관</a></li>
		<li><a href="store.do">스토어</a></li>
		<li><a href="event.do">이벤트</a></li>
		<li><a href="qna.do">고객센터</a></li>
		<li id="loginForm"> 로그인</li>
	</ul>
	
	<div id="testdiv" style="display: none;">
	 <!-- <img alt="" src=""> 이미지 로고 -->
		<form action="login.do">
			<input type="text" name="name" placeholder="아이디"> <br>
			<input type="password" name="secret" placeholder="아이디">
			<input type="submit" name="login" onClick="login()" value="로그인"> <br>
		</form>
			<input type="button" name="idpwFind" value="ID/PW찾기">
			<input type="button" name="join" value="회원가입">
	</div>
</body>
</html>
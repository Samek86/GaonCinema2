
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
	
	$(window).scroll(menuScroll);
	
	function menuScroll() { 
	/*    var banner = document.getElementsByClassName('banner-top')[0];
	    var screen = document.documentElement.clientWidth;*/
	    
	    var nowscroll = $(window).scrollTop();
	    
	    if(nowscroll<=10){
	    	$('#logoimg').css({'width' : '150px', 'height' : '150px'});
	    	$('#logoimg').attr({'src' : './resources/img/Gaonlogo.png'});
	    }else{
	    	$('#logoimg').css({'width' : '150px', 'height' : '87px'});
	    	$('#logoimg').attr({'src' : './resources/img/Gaonlogo2.png'});
	    }
	}
	
	
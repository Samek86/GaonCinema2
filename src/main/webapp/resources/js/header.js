
var request = null;
$(document).ready(function(){ //DOM이 준비되고
    $('#loginbt').click(function(){ // ID가 loginForm인 요소를 클릭하면
        var state = $('.login').css('display'); // state 변수에 ID가 moreMenu인 요소의 display의 속성을 '대입'
        if(state == 'none'){ // state가 none 상태일경우 
            $('.login').show(); // ID가 testdiv인 요소를 show();
            $('#loginID').focus();
        }else{ // 그 외에는
            $('.login').hide(); // ID가 testdiv인 요소를 hide();         
        }
    });
    $('.close').click(function(){
    	$('.login').hide();
    });
});

$(document).ready(function(){
$("#loginbtn").click(function() {
	if ($("#loginID").val() == "") {
		alert("아이디를 입력해주세요.");
		return;
	} else if($("#loginPW").val() == "") {
		alert("비밀번호를 입력해주세요.");
		return;
	} else{
	$.ajax({
		url: "login.do",
		data: "loginID=" + $("#loginID").val() + "&loginPW=" + $("#loginPW").val(),
		dataType: "json",
		type: "GET",
		success: function(data) {
			if(data.check==2){
				location.href='main.do';
			}else if(data.check==1){
				$("#loginPW").val("");
				alert("비밀번호가 잘못되었습니다");
				$("#loginPW").focus();
			}else{
				$("#loginID").val("");
				$("#loginPW").val("");
				alert("존재하지 않는 아이디입니다");
				$("#loginID").focus();
			}
		},
		error: function(data) {
			console.log(data);
		}
	}); }
});
});

	$(window).scroll(menuScroll);
	
	function menuScroll() { 
	/*    var banner = document.getElementsByClassName('banner-top')[0];
	    var screen = document.documentElement.clientWidth;*/
	    
	    var nowscroll = $(window).scrollTop();
	    
	    if(nowscroll<=1){
	    	$('#logoimg').css({'width' : '150px', 'height' : '150px'});
	    	$('#logoimg').attr({'src' : './resources/img/Gaonlogo.png'});
	    	//$('#header .nav > li > a').css({'padding': '28px 19px'});
	    	//$('#header .backcolor').css({'height': '87px'});
	    	//$('#header .login').css({'top': '69px'});
	    }else {
	    	$('#logoimg').css({'width' : '150px', 'height' : '77px'});
	    	$('#logoimg').attr({'src' : './resources/img/Gaonlogo2.png'});
	    	//$('#header .nav > li > a').css({'padding': '18px 19px'});
	    	//$('#header .backcolor').css({'height': '67px'});
	    	//$('#header .login').css({'top': '59px'});
	    }
	}
	
	
	$('#test-popup').magnificPopup({
		  items: {
		      src: $('<div class="white-popup">Dynamically created popup</div>'),
		      type: 'inline'
		  }
		});
	
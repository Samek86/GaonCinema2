
$(document).ready(function(){ 
    $('#loginbt').click(function(){
        var state = $('.login').css('display');
        if(state == 'none'){
            $('.login').show();
            $('#loginID').focus();
        }else{ 
            $('.login').hide();     
        }
    });
    $('.close').click(function(){
    	$('.login').hide();
    });
});


$(document).ready(function(){ 
	$('#memberbt').click(function(){
		var state = $('.member').css('display');
        if(state == 'none'){
            $('.member').show();
        }else{ 
            $('.member').hide();     
        }
	});
	$('.member .close').click(function(){
    	$('.member').hide();
    });
});


function dialogclose(){
	$.magnificPopup.close();
}

function g_alert(data){
	$.magnificPopup.open({
		  items: {
		      src: '<div id="small-dialog"> ' +
		    	  '<div id="dialogTop"> 알림 </div> <br>'+
		    	  data+'<br>'+
		    	  '<button type="button" class="dialogbtn" onclick="dialogclose()">닫기</button></div>',
		      type: 'inline',
		  }
		});
}

$(document).ready(function(){
$("#loginbtn").click(function() {
	if ($("#loginID").val() == "") {
		g_alert("아이디를 입력해주세요.");
		return;
	} else if($("#loginPW").val() == "") {
		g_alert("비밀번호를 입력해주세요.");
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
				g_alert("비밀번호가 잘못되었습니다.");
				$("#loginPW").focus();
			}else{
				$("#loginID").val("");
				$("#loginPW").val("");
				g_alert("존재하지 않는 아이디입니다.");
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
	
	

	
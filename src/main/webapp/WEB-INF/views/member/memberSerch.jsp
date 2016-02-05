<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head> 
<script>
$(document).ready(function(){ 
    $('#idSearch').click(function(){
        var state = $('.id').css('display');
        if(state == 'none'){
            $('.id').show();
            $('#name').focus();
        }else{ 
            $('.id').hide();     
        }
    });
    $('.close').click(function(){
    	$('.id').hide();
    });
});
$(document).ready(function(){ 
    $('#pwSearch').click(function(){
        var state = $('.pw').css('display');
        if(state == 'none'){
            $('.pw').show();
            $('#name').focus();
        }else{ 
            $('.pw').hide();     
        }
    });
    $('.close').click(function(){
    	$('.pw').hide();
    });
});
$(document).ready(function(){
	$("#serch").click(function() {
		if ($("#name").val() == "") {
			g_alert("이름을 입력해주세요.");
			return;
		} else if($("#email").val() == "") {
			g_alert("이메일 주소를 입력해주세요.");
			return;
		} else{
		$.ajax({
			url: "memberidSerch.do",
			data: "searchName=" + $("#name").val() + "&searchEmail=" + $("#email").val(),
			dataType: "json",
			type: "GET",
			success: function(data) {
				if(data.check==1){
					g_alert("잃어버리신 아이디입니다. <br>"+data.id);
				}else{
					$("#name").val("");
					$("#email").val("");
					g_alert("이름과 이메일을 확인해 주세요.");
					$("#name").focus();
				}
			},
			error: function(data) {
				alert("error = " + data);
			}
		}); }
	});
	});
</script>
</head>
<ul class="nav">
	<li><button id="idSearch">아이디 찾기</button></li>
<div class="id" style="display: none;">
		<button type="button" class="close">&times;</button>
		<input type="text" id="name" placeholder="이름"> <br>
		<input type="text" id="email" placeholder="이메일 주소"> <br>
		<input type="button" id="serch" value="확인"> <br>
</div>
	<li><button id="pwSearch">비밀번호 찾기</button></li>
		<div class="pw" style="display: none;">
		<form action="memberpwSerch.do">
			<button type="button" class="close">&times;</button>
			<input type="text" name="id" placeholder="아이디"> <br>
			<input type="text" name="name" placeholder="이름"> <br>
			<input type="text" name="email" placeholder="이메일 주소"> <br>
			<input type="submit" name="serch" value="확인"> <br>
		</form>
		</div>
</ul>
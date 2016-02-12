
$(document).ready(function(){
	$(".userName1").blur(function(){
		var a = $(".userName1").val();
		var namePattern = /^[가-힣]{2,8}|[a-zA-Z]{2,20}\s[a-zA-Z]{2,20}$/;
		if (!namePattern.test(a)){
			alert("한/영 2~10자에 맞게 입력하세요");
			$(".userName1").val("");
			$(".userName1").focus();
			return;
		}
		else{
			return;
		}
	});
	$(".userName2").blur(function(){
		var a = $(".userName2").val();
		var namePattern = /^[가-힣]{2,8}|[a-zA-Z]{2,20}\s[a-zA-Z]{2,20}$/;
		if (!namePattern.test(a)){
			alert("한/영 2~10자에 맞게 입력하세요");
			$(".userName2").val("");
			$(".userName2").focus();
			return;
		}
		else{
			return;
		}
	});
	$(".userName3").blur(function(){
		var a = $(".userName3").val();
		var namePattern = /^[가-힣]{2,8}|[a-zA-Z]{2,20}\s[a-zA-Z]{2,20}$/;
		if (!namePattern.test(a)){
			alert("한/영 2~10자에 맞게 입력하세요");
			$(".userName3").val("");
			$(".userName3").focus();
			return;
		}
		else{
			return;
		}
	});
	$(".userName4").blur(function(){
		var a = $(".userName4").val();
		var namePattern = /^[가-힣]{2,8}|[a-zA-Z]{2,20}\s[a-zA-Z]{2,20}$/;
		if (!namePattern.test(a)){
			alert("한/영 2~10자에 맞게 입력하세요");
			$(".userName4").val("");
			$(".userName4").focus();
			return;
		}
		else{
			return;
		}
	});
	$(".userName5").blur(function(){
		var a = $(".userName5").val();
		var namePattern = /^[가-힣]{2,8}|[a-zA-Z]{2,20}\s[a-zA-Z]{2,20}$/;
		if (!namePattern.test(a)){
			alert("한/영 2~10자에 맞게 입력하세요");
			$(".userName5").val("");
			$(".userName5").focus();
			return;
		}
		else{
			return;
		}
	});
});
$(document).ready(function(){
	$("#buycancle").click(function(){
		$("#total").html($("#price_sale").text());
	});
});

$(document).ready(function(){
	$(".userEmail1").blur(function(){
		var a = $(".userEmail1").val();
		var emailPattern = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
		if (!emailPattern.test(a)){
			alert("올바른 이메일 주소를 입력해주세요");
			$(".userEmail1").val("");
			$(".userEmail1").focus();
			return;
		}
		else{
			return;
		}
	});
});


$(document).ready(function (){
	var a=0
	var b=0
	var c=0
	var d=0
	var e=0;
	$("#buycount1").change(function(){
		alert("1번째버튼");
		var count = $("#buycount1 option:selected").val();
		var sum = $("#price_sale").text();
		if($(".userName1").val()=="" || $(".userName1").val()==null || $(".userEmail1").val()=="" || $(".userEmail1").val()==null){
			alert("이름과 이메일주소를 모두 입력후 이용하세요");
			$('#buycount1').find('option:first').attr('selected', 'selected');  
			return;
		}else{
			a = count * sum;
			alert("a:"+a);
			$("#total").html(a+b+c+d+e);
			alert(count);
		}
	});
	$("#buycount2").change(function(){
		alert("2번째버튼");
		var count = $("#buycount2 option:selected").val();
		var sum = $("#price_sale").text();
		alert("sum = "+sum);
		if($(".userName2").val()=="" || $(".userName2").val()==null || $(".userEmail2").val()=="" || $(".userEmail2").val()==null){
			alert("이름과 이메일주소를 입력후 이용하세요");
			$('#buycount2').find('option:first').attr('selected', 'selected');  
			return;
		}else{
			alert("sum = "+sum);
			b = count * sum;
			$("#total").html(a+b+c+d+e);
			alert(count);
		}
	});
	$("#buycount3").change(function(){
		alert("3번째버튼");
		var count = $("#buycount3 option:selected").val();
		var sum = $("#price_sale").text();
		alert("sum = "+sum);
		if($(".userName3").val()=="" || $(".userName3").val()==null || $(".userEmail3").val()=="" || $(".userEmail3").val()==null){
			alert("이름과 이메일주소를 입력후 이용하세요");
			$('#buycount3').find('option:first').attr('selected', 'selected');  
			return;
		}else{
			alert("sum = "+sum);
			c = count * sum;
			$("#total").html(a+b+c+d+e);
			alert(count);
		}
	});
	$("#buycount4").change(function(){
		alert("4번째버튼");
		var count = $("#buycount4 option:selected").val();
		var sum = $("#price_sale").text();
		alert("sum = "+sum);
		if($(".userName4").val()=="" || $(".userName4").val()==null || $(".userEmail4").val()=="" || $(".userEmail4").val()==null){
			alert("이름과 이메일주소를 입력후 이용하세요");
			$('#buycount4').find('option:first').attr('selected', 'selected');  
			return;
		}else{
			alert("sum = "+sum);
			d = count * sum;
			$("#total").html(a+b+c+d+e);
			alert(count);
		}
	});
	$("#buycount5").change(function(){
		alert("4번째버튼");
		var count = $("#buycount5 option:selected").val();
		var sum = $("#price_sale").text();
		alert("sum = "+sum);
		if($(".userName5").val()=="" || $(".userName5").val()==null || $(".userEmail5").val()=="" || $(".userEmail5").val()==null){
			alert("이름과 이메일주소를 입력후 이용하세요");
			$('#buycount5').find('option:first').attr('selected', 'selected');  
			return;
		}else{
			alert("sum = "+sum);
			e = count * sum;
			$("#total").html(a+b+c+d+e);
			alert(count);
		}
	});
});
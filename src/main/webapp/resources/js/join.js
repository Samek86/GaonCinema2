function yearcheck(){
		var birth=document.getElementById("year");
		var num_check=/^[0-9]*$/;
		if(num_check.test(birth.value)){
			if( birth.value.length !=4){
			alert("4자리로 입력해주세요 예)1990");
			birth.value="";
			birth.focus();
			return false;
			}
		}
		else{
		alert ( "숫자만 입력할 수 있습니다." );
		birth.value="";
		birth.focus();
		return false;
		}
	}//end
	
	function monthcheck(){
		var month=document.getElementById("month");
		var num_check=/^[0-9]*$/;
		if(num_check.test(month.value)){
			if( month.value > 12 || month.value < 1){
			alert("1~12사이의 숫자를 입력해주세요");
			month.value="";
			month.focus();
			return false;
			}
		}
		else{
		alert ( "숫자만 입력할 수 있습니다." );
		month.value="";
		month.focus();
		return false;
		}
	}//end
	
	function daycheck(){
		var day=document.getElementById("day");
		var num_check=/^[0-9]*$/;
		if(num_check.test(day.value)){
			if( day.value > 31 || day.value < 1){
			alert("1~31사이의 숫자를 입력해주세요");
			day.value="";
			day.focus();
			return false;
			}
		}
		else{
		alert ( "숫자만 입력할 수 있습니다." );
		day.value="";
		day.focus();
		return false;
		}
	}//end


	function check(){
		var length = document.forms[0].length-1; 
		for(var i = 0; i < length; i++){      
		    if(document.forms[0][i].value == null || document.forms[0][i].value == ""){	
		    		//html 내에 기술된 첫번째 form에서 i+1번째 요소 
		        alert(document.forms[0][i].placeholder + "을/를 입력하세요."); 	 
		        document.forms[0][i].focus();           
		        return false;		 
		    }//if end		
		}//for end
	}//end
	
	function telcheck(){
		var tel=insert.telnum.value;
		var num_check=/^[0-9]*$/;
		if(num_check.test(tel)){ //num_check가 tel에 부합할때 
			if( insert.telnum.value.length < 9 || insert.telnum.value.length > 11 ){
				document.getElementById("telnum").innerHTML="다시 입력하세요 예)01012345678";
				insert.telnum.value="";
				insert.telnum.focus();
				return false;
			}
		}else{
			document.getElementById("telnum").innerHTML="다시 입력하세요 예)01012345678";
			insert.telnum.value="";
			insert.telnum.focus();
			return false;
		}
	}//end
	
	function birthcheck(){
		var birth=insert.birth;
		var num_check=/^[0-9]*$/;
		if(num_check.test(birth.value)){
			if( birth.value.length !=6){
			document.getElementById("birth").innerHTML="다시 입력해주세요 예)930412";
			birth.value="";
			birth.focus();
			return false;
			}
		}
		else{
		document.getElementById("birth").innerHTML="다시 입력해주세요 예)930412";
		birth.value="";
		birth.focus();
		return false;
		}
	}//end
	
	$(document).ready(function(){
		$(".joinIdcheckBtn").click(function() {
			if ($("#checkId").val() == "") {
				g_alert("아이디를 입력해주세요.");
				return;
			} else{
			$.ajax({
				url: "search.do",
				data: "loginID=" + $("#checkId").val(),
				dataType: "json",
				type: "GET",
				success: function(data) {
					if(data.check==1){
						g_alert("아이디가 중복됩니다.");
						$("#checkId").val("");
						$("#checkId").focus();
					}else{
						g_alert("사용 가능한 아이디입니다.");
					}
				},
				error: function(data) {
					console.log(data);
				}
			}); }
		});
		});
	
	function pass(){
		//비밀번호 길이 체크(4~8자 까지 허용)
		if (insert.userpw.value.length<4 || insert.userpw.value.length>8){
			 document.getElementById("ch_pw1").innerHTML = "4~8자리를 입력해주세요.";
			 insert.userpw.value="";
			 insert.userpw.focus();
		}
		else{
			document.getElementById("ch_pw1").innerHTML = "";
		}
	}//end
	
	function pass1(){
		if(insert.userpw.value!=insert.userpw2.value) {
		  document.getElementById("ch_pw2").innerHTML = "비밀번호가 일치하지 않습니다";
      insert.userpw2.value="";
     	insert.userpw2.focus();
    }else if (insert.userpw.value==insert.userpw2.value) {
    	document.getElementById("ch_pw2").innerHTML = "일치 합니다";
    }
	}//end
	
	
	function emailcheck(){
		var email = insert.email.value;  
		var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;   		  
		if(regex.test(email) === false) {  
			document.getElementById("email").innerHTML = "다시 입력해주세요";
		    insert.email.value="";
		    insert.email.focus();
		    return false;
		}//if end	
	}//end
	
	function execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            var fullAddr = '';
	            var extraAddr = '';
	            
	            if (data.userSelectedType === 'R') fullAddr = data.roadAddress;
	    
	            else fullAddr = data.jibunAddress;

	            if(data.userSelectedType === 'R') {
	                if(data.bname !== '') extraAddr += data.bname;
	                if(data.buildingName !== '') extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                
	                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
	            }

	            document.getElementById("postcode").value = data.postcode;
	            document.getElementById("address").value = fullAddr;
	            document.getElementById("address2").focus();
	        }
	    }).open();
	}
	

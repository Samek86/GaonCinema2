<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">

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
	
	function checkid(){
		var a=insert.userid.value;
		location.href = "search.do?userid="+a;
	}//end
	
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
	
</script> 

<div>
	<form name="insert" method="post" onsubmit="return check()" action="join.do">
		<table id="jointable">
			<tr>
				<td>
					<input  type="text" name="userid" placeholder="아이디">
					<input  type=button value="ID중복확인" onClick="checkid()">
					<span ></span>
				</td>
			</tr>
			<tr>
				<td>
					<input type=password name=userpw placeholder=비밀번호 onblur="pass()">
					<span  id="ch_pw1"></span>
				</td>
			</tr>
			<tr>
				<td>
					<input type=password name=userpw2 placeholder="비밀번호 재확인" onblur="pass1()">
					<span id="ch_pw2"></span>
				</td>
			</tr>
			<tr>
				<td>
					<input type=text name=name placeholder="이름">
				</td>
			</tr>
			
			<tr>
				<td>
						<script type="text/javascript"> 
						var today = new Date(); 
						var toyear = parseInt(today.getYear()); 
						var start = (toyear+1900);
						var end = (toyear+1900) - 100; 
							
						document.write("<font size=2><select name=year>"); 
						document.write("<option value='' placeholder=생년 selected>"); 
						for (i=start; i>=end;i--) document.write("<option>"+i); 
						document.write("</select>년  "); 
									
						document.write("<select name=month>"); 
						document.write("<option value='' placeholder=월 selected>"); 
						for (i=1; i<=12;i++) document.write("<option>"+i); 
						document.write("</select>월  "); 
									
						document.write("<select name=day>"); 
						document.write("<option value='' placeholder=일 selected>"); 
						for (i=1; i<=31;i++) document.write("<option>"+i); 
						document.write("</select>일  </font>"); 
					</script>
				<span id=birth></span>
				</td>
			</tr>
			<tr>
			  <td>
					<input type="text" id="postcode" name="zipcode" placeholder="우편번호">
					<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><p>
					<input type="text" id="address" name="address1" placeholder="주소"><p>
					<input type="text" id="address2" name="address2" placeholder="상세주소">
				</td>
	 		</tr>
			<tr>
				<td>
					<input type=text name=email placeholder="이메일" onblur="emailcheck()" value="asdka@naver.com">
					<span id="email"></span>
				</td>
			</tr>
			<tr>
				<td>
					<input type=text name=telnum placeholder="연락처" onblur="telcheck()" value="213121151">
					<span id=telnum></span>
				</td>
			</tr>
			<tr>
				<td>
					<input type=submit value="가입하기">
					<a href="main.do"><input type=reset value="취소"></a>		
				</td>
			</tr>
		</table>
	</form>
	
</div>

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="./resources/js/join.js"></script>
<div>
	<form name="insert" method="post" enctype="multipart/form-data" onsubmit="return check()" action="join.do">
		<table id="jointable">
			<tr>
				<td>
					<input  type="text" name="userid" id=checkId placeholder="아이디">
					<input  type=button value="ID중복확인" class="joinIdcheckBtn">
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
				<td><input type=radio id=man name=gender value=male>남자 
			  <input type=radio id=woman name=gender value=female>여자 </td>
			</tr>
			<tr>
				<td>
					<input  type="text" id="year" name="year" placeholder="년도" onblur="yearcheck()">
					<input  type="text" id="month" name="month" placeholder="월" onblur="monthcheck()">
					<input  type="text" id="day" name="day" placeholder="일" onblur="daycheck()">
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
					<input type=text name=email placeholder="이메일" onblur="emailcheck()" >
					<span id="email"></span>
				</td>
			</tr>
			<tr>
				<td>
					<input type=text name=telnum placeholder="연락처" onblur="telcheck()" >
					<span id=telnum></span>
				</td>
			</tr>
			<tr>
				<td>프로필 사진<input type=file  name=upload value=img></td>
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

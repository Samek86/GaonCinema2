<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="./resources/js/join.js"></script>

<script type="text/javascript">

	
</script>
<div>
	<form name="insert" method="post" enctype="multipart/form-data" onsubmit="return check()" action="memberEdit.do">
		<table id="jointable">
			<tr>
				<td>아이디
					<input  type="text" name="userid" id=checkId value="${member.userid}" readonly>
					<span ></span>
				</td>
			</tr>
			<tr>
				<td>비밀번호
					<input type=password name=userpw onblur="pass()" >
					<span  id="ch_pw1"></span>
				</td>
			</tr>
			<tr>
				<td>비밀번호 확인
					<input type=password name=userpw2 placeholder="비밀번호 재확인" onblur="pass1()">
					<span id="ch_pw2"></span>
				</td>
			</tr>
			<tr>
				<td>이름
					<input type=text name=name placeholder="이름" value="${member.name}">
				</td>
			</tr>
			<tr>
				<td>성별
				
				
				
				
				<input type=radio id=man name=gender value=male>남자 
			  <input type=radio id=woman name=gender value=female>여자 </td>
			</tr>
			<tr>
				<td>생년월일
					<input type="text" id="year" name="year" value="${year}" onblur="yearcheck()">
					<input type="text" id="month" name="month" value="${month}" onblur="monthcheck()">
					<input type="text" id="day" name="day" value="${day}" onblur="daycheck()">
				</td>
			</tr>
			<tr>
			  <td>주소
					<input type="text" id="postcode" name="zipcode" value="${member.zipcode}">
					<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><p>
					<input type="text" id="address" name="address1" value="${member.address1}"><p>
					<input type="text" id="address2" name="address2" value="${member.address2}">
				</td>
	 		</tr>
			<tr>
				<td>이메일
					<input type=text name=email value="${member.email}" onblur="emailcheck()" >
					<span id="email"></span>
				</td>
			</tr>
			<tr>
				<td>전화번호
					<input type=text name=telnum value="${member.telnum}" onblur="telcheck()" >
					<span id=telnum></span>
				</td>
			</tr>
			<tr>
				<td>프로필 사진<input type=file  name=upload value="${member.img_file}"></td>
			</tr>
			<tr>
				<td>
					<input type=submit value="수정">
					<a href="main.do"><input type=reset value="취소"></a>		
				</td>
			</tr>
		</table>
	</form>
	
</div>

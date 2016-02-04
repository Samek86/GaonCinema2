<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head> 
<title>[member.jsp]</title>

</head>
<body>
		<table>
				<tr>
					<td>
						아이디:
						<input type="text" name="id" readonly="readonly" value="${member.userid}">
						<span ></span>
					</td>
				</tr>
				<tr>
					<td>
						이름:
						<input type="text" name="name" readonly="readonly" value="${member.name}">
					</td>
				</tr>
				<tr>
					<td>
						성별:
						<input type="text" name="gender" readonly="readonly" value="${member.gender}">
					</td>
				</tr>
				<tr>
					<td>
						생일:
						<input type="text" id="birth" name="birth" readonly="readonly" value="${year}/${month}/${day}">
					</td>
				</tr>
				<tr>
			    <td>
			    	주소:
						<input type="text" id="postcode" name="postcode" readonly="readonly" value="${member.zipcode}">
						<input type="text" id="address" name="address" readonly="readonly" value="${member.address1}"><p>
						<input type="text" id="address2" name="address2" readonly="readonly" value="${member.address2}">
					</td>
		 		</tr>
				<tr>
					<td>
						이메일:
						<input type="text" name="email" class="ta" readonly="readonly" value="${member.email}">
					</td>
				</tr>
				<tr>
					<td>
						전화번호:
						<input type="text" name="tel" class="ta" readonly="readonly" value="${member.telnum}">
					</td>
				</tr>
				<tr>
					<td>
						포인트:
						<input type="text" name="point" class="ta" readonly="readonly" value="${member.point}">
					</td>
				</tr>
			</table>
				<tr>
					<td style="text-align: center">
						<div >
							<input type="button" value="수정하기" onclick="location.href='memberPreEdit.do'">
							<input type="button" value="회원탈퇴" onclick="memberDelete()">
						</div>
					</td>
				</tr>
</body>
</html>
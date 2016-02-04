<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head> 
<title>[Editmember.jsp]</title>

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
						<input type="text" name="name"  value="${member.name}">
					</td>
				</tr>
				<tr>
					<td>
						성별:
						<input type="text" name="gender"  value="${member.gender}">
					</td>
				</tr>
				<tr>
					<td>
						생일:
						<input type="text" id="birth" name="birth"  value="${year}/${month}/${day}">
					</td>
				</tr>
				<tr>
			    <td>
			    	주소:
						<input type="text" id="postcode" name="postcode"  value="${member.zipcode}">
						<input type="text" id="address" name="address"  value="${member.address1}"><p>
						<input type="text" id="address2" name="address2"  value="${member.address2}">
					</td>
		 		</tr>
				<tr>
					<td>
						이메일:
						<input type="text" name="email" class="ta"  value="${member.email}">
					</td>
				</tr>
				<tr>
					<td>
						전화번호:
						<input type="text" name="tel" class="ta"  value="${member.telnum}">
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
							<a href="preedit.do">
								<input type="button" value="수정하기" onclick="location.href='memberPreEdit.do'">
							</a>
							<input type="button" value="회원탈퇴" onclick="memberDelete()">
						</div>
					</td>
				</tr>
</body>
</html>
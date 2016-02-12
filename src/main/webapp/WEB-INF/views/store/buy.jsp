<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<h2>주문 정보 입력</h2>
	<div>
			<img src="./resources/img/store/${detail.img_file }" id="ctl00_bodyPlaceHolder_imgProductImg" alt="상품명" width="153" height="161"> 
			<dl>
				<dt class="blind_txt">상품</dt>
				<dd class="item_name">${detail.title }${detail.subtitle }</dd>
				<dt class="blind_txt">정상가</dt>
				<dd id="price_sale">${detail.price }</dd>
			</dl>		
		</div>
<div>
01 이메일을 입력해 주세요
</div>
<div class="sender">
	<dl>
			<dt>구매 하시는분</dt>
				<dd>
					이름
					<label>${member.NAME }</label>	
					이메일 주소	
					<input type="text" value="${member.EMAIL }" placeholder="이메일 입력해주세요">
					* 이메일주소 변경시에도 회원정보에 반영되지 않습니다.	
				</dd>
			</dl>
</div>
				<hr>
<div class="receiver">
<form action="">
	<dl>
			<dt>1	 사용 하시는분</dt>
				<dd>
					이름
					<input type="text" class="userName1" value="${member.NAME }" placeholder="이름을 입력해 주세요">
					이메일 주소	
					<input type="text" class="userEmail1" value="${member.EMAIL }" placeholder="이메일 입력해주세요">	
					수량
					<select id="buycount1">
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
					</select>
				</dd>
			</dl>
			<hr>
	<dl>
			<dt>2	 사용 하시는분</dt>
				<dd>
					이름
					<input type="text" class="userName2" value="" placeholder="이름을 입력해 주세요">
					이메일 주소	
					<input type="text" class="userEmail2" value="" placeholder="이메일 입력해주세요">	
					수량
					<select id="buycount2">
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
					</select>
				</dd>
			</dl>
			<hr>
	<dl>
			<dt>3	 사용 하시는분</dt>
				<dd>
					이름
					<input type="text" class="userName3"  value="" placeholder="이름을 입력해 주세요">
					이메일 주소	
					<input type="text"  class="userEmail3" value="" placeholder="이메일 입력해주세요">	
					수량
					<select id="buycount3">
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
					</select>
				</dd>
			</dl>
			<hr>
	<dl>
			<dt>4	 사용 하시는분</dt>
				<dd>
					이름
					<input type="text" class="userName4"  value="" placeholder="이름을 입력해 주세요">
					이메일 주소	
					<input type="text" class="userEmail4"  value="" placeholder="이메일 입력해주세요">	
					수량
					<select id="buycount4">
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
					</select>
				</dd>
			</dl>
			<hr>
	<dl>
			<dt>5	 사용 하시는분</dt>
				<dd>
					이름
					<input type="text" class="userName5"  value="" placeholder="이름을 입력해 주세요">
					이메일 주소	
					<input type="text" class="userEmail5"  value="" placeholder="이메일 입력해주세요">	
					수량
					<select id="buycount5">
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
					</select>
				</dd>
			</dl>
			<hr>
					<input type="reset" id="buycancle" value="초기화">
			<dl>
				<dt>현재 보유중인 포인트  <b>${member.point }p</b></dt>
				<dt>사용할 포인트 입력 <input type="text" placeholder="0" style="width: 45px"><b>point</b></dt> 
			<dt>
				상품 총 금액 <b id="total">${detail.price }</b> - 할인금액 <b id="point">4546</b> = 최종결제금액 <b id="buymoney">56464</b><b>원</b>
				<input type="submit" value="구매하기">
			</dt>
			</dl>
			<div>
				<b>이용안내</b>
				<ul>
					<li>최대 5명에게 발송할 수 있습니다.</li> 
					<li>기프트콘 상품은 모든 극장에서 사용가능합니다.
					결제 확인 및 취소는 이메일에서 확인 가능합니다.
					</li>
					<li>기프트콘은 부분 환불이 불가합니다.
					(예: 3개의 쿠폰을 한 번에 구매하신 경우, 3개 모두 취소만 가능하며, 그 중 사용하신 쿠폰이 있는 경우 미사용 쿠폰의 환불이 불가합니다.)
					</li>
				</ul>
			</div>
</form>
</div>
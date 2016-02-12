<%@page import="org.springframework.context.annotation.Bean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"   %>
         
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<script>
	function checkReplyContents() {
		if($('#replyContents').val() == '') {
			alert("댓글을 입력하세요.");
			return false;
		}
		return true;
	}
	
	function editQnaReply(qna_reply_id, contents) {
		if($('#editButton' + qna_reply_id).val() == "수정") {
			$('#editButton' + qna_reply_id).val("수정취소");
			$('#editContents' + qna_reply_id).val(contents);
			$('#editQnaReplyForm' + qna_reply_id).show();
			$('#qnaReplyContents' + qna_reply_id).hide();
		} else if($('#editButton' + qna_reply_id).val() == "수정취소") {
			$('#editButton' + qna_reply_id).val("수정");
			$('#editQnaReplyForm' + qna_reply_id).hide();
			$('#qnaReplyContents' + qna_reply_id).show();
		}
	}
</script>
<div align="center">
	<table width=800 border="1" cellspacing="0">
	 	<tr bgcolor=green  height=55>
	 		<td>글번호</td><td>글쓴이</td><td>제목</td><td>내용</td><td>작성일</td><td>조회수</td>
	 	</tr>
		<tr>
	  	<td>${bean.qna_id}</td>
	  	<td>${bean.userid}</td>
	  	<td>${bean.title}</td>
			<td>${bean.contents}</td>
	  	<td>${bean.wdate}</td>
			<td>${bean.count}</td>
		</tr>
		<tr><td colspan="6">
			<table border="1" cellspacing="0" style="width: 100%;">
				<tr align="center">
					<td style="width: 20%;">작성자</td>
					<td style="width: 60%;">내용</td>
					<td style="width: 20%;">작성일</td>
				</tr>
				<c:forEach var="bean" items="${replyList}">
					<tr>
						<td>${bean.userid}</td>
						<td id="editQnaReplyForm${bean.qna_reply_id}" style="display: none;">
							<form action="EditQnaReply.do">
								<input name="qna_reply_id" type="hidden" value="${bean.qna_reply_id}">
								<input name="qna_id" type="hidden" value="${bean.qna_id}">
								<input name="contents" id="editContents${bean.qna_reply_id}" type="text">
								<input type="submit" value="댓글수정">
							</form>
						</td>
						<td id="qnaReplyContents${bean.qna_reply_id}">${bean.contents}</td>
						<td>${bean.wdate}</td>
						<c:if test="${sessionScope.NowUser == bean.userid}">
							<td><input id="editButton${bean.qna_reply_id}" type="button" onclick="editQnaReply(${bean.qna_reply_id}, '${bean.contents}')" value="수정"></td>
							<td><input type="button" onclick="location.href='DeleteQnaReply.do?qna_id=${bean.qna_id}&qna_reply_id=${bean.qna_reply_id}'" value="삭제"></td>
						</c:if>
					</tr>
				</c:forEach>
			</table>
		</td></tr>
		<!-- 사용자가 로그인을 했을 경우 -->
		<c:if test="${sessionScope.NowUser != null}">
			<!-- 게시판 작성자가 로그인한 사용자와 일치 할 경우 -->
			<c:if test="${sessionScope.NowUser == bean.userid}">
				<tr>
					<td colspan="6" align="center">
						<input type="button" value="수정" onclick="location.href='qnaPreEdit.do?qna_id=${bean.qna_id}'">
						<input type="button" value="삭제" onclick="location.href='qnaDelete.do?qna_id=${bean.qna_id}'">  
					</td>
				</tr>
			</c:if>
			<tr>
				<td colspan="6" align="center">
					<form action="qnaReplyInsert.do" onsubmit="return checkReplyContents()">
						<input name="qna_id" type="hidden" value="${bean.qna_id}">
						<input name="userid" type="hidden" value="<%= session.getAttribute("NowUser") %>">
						<input name="contents" id="replyContents" type="text" placeholder="댓글을 입력해주세요.">
						<input type="submit" value="댓글 등록">
					</form>
				</td>
			</tr>
		</c:if>
	</table>
</div>

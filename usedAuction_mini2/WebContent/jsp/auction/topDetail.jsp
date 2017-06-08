<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/jsp/common/header.jsp" />
<c:import url="/jsp/common/nav.jsp" />

<div class="row">
	<div class="col-md-10">

		<!-- Trigger the modal with a button -->

		
		<table>
			<tr>
				<th colspan="3" align="center">경매 상세 보기</th>
			</tr>
			<tr>
			<td colspan="3" align="right">
					<button type="button" class="btn btn-info btn-lg"
						data-toggle="modal" data-target="#bidListModal">경매기록</button>
				
			</td>
			</tr>
			<tr>
				<td>상품명</td>
				<td><input type="text" readonly value="${auction.acNm }" /></td>
				<td rowspan="2"><img src="${myContextPath}/upload${auction.files[1].acFilePath}${auction.files[1].acFileNm}"
					width="150" height="180" />
				<td>
			</tr>
			<tr>
				<td>상품설명</td>
				<td><textarea rows="8" cols="50" readonly><c:out value="${auction.acContent }"/></textarea></td>

			</tr>
			
			<tr>
				<td>현재가격</td>
				<td><input type="text" readonly value="${auction.currentPrice }" />원</td>
				<td rowspan="3"><img src="${myContextPath}/upload${auction.files[0].acFilePath}${auction.files[0].acFileNm}"
					width="150" height="180" />
				<td>
			</tr>
			<tr>
				<td>입찰일</td>
				<td><fmt:formatDate value='${auction.acStartDate }' pattern='yyyy/MM/dd HH:mm'/>일</td>
			</tr>
			<tr>
				<td>낙찰일</td>
				<td><fmt:formatDate value='${auction.acEndDate }' pattern='yyyy/MM/dd HH:mm'/>일</td>
			</tr>
			<tr>
				<td>등록자</td>
				<td colspan="2"><input type="text" readonly value="${auction.mbId }" /></td>
			</tr>
			
			<tr>
				<td>댓글달기</td>
				<form name="commentForm" action="insertComment.do" method="post">
				<input type="hidden" name="acNo" value="${auction.acNo }"/>
				
				<!-- 세션에 mbNo가 있어야 한다 -->
				<c:set var="mbNo" value="${user.mbNo }"/>
				<input type="hidden" name="page" value="top"/>
				<input type="hidden" name="mbNo" value="${mbNo }"/>
				<td><input type="text" id="content" size="70" name="content"/></td>
				<td><input type="button" onclick="insertComment();" value="댓글등록" /></td>
				</form>
			</tr>
			
			<c:forEach var="comment" items="${comments }">
			<tr>
				<td><c:out value="${comment.mbId }"/></td>
				<td><c:out value="${comment.commentsContent }"/></td>
				<td><fmt:formatDate value="${comment.commentMkDate }" pattern="yyyy/MM/dd HH:mm"/></td>
			</tr>
			</c:forEach>
			

		</table>


	</div>
</div>

<!-- Modal -->
<div id="bidListModal" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">경매기록</h4>
			</div>
			<div class="modal-body">
				<!-- modal table -->
					<h2>경매기록</h2>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>입찰자</th>
								<th>입찰일자</th>
								<th>입찰가격</th>
								<th>입찰결과</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="bid" items="${bids }">
							<tr>
								<td><c:out value="${bid.mbId }"/></td>
								<td><fmt:formatDate value="${bid.bidDate }" pattern="yyyy/MM/dd HH:mm"/></td>
								<td><c:out value="${bid.bidPrice }"/></td>
								<td><c:out value="${bid.sbidResult }"/></td>
							</tr>
							</c:forEach>
							<c:if test="${empty bids }">
							<tr>
								<td colspan="4"><c:out value="입찰 내역이 없습니다."/></td>
							</tr>
							</c:if>
						</tbody>
					</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
			</div>
		</div>

	</div>
</div>
<script>
	
	function insertComment() {
		var frm = document.commentForm;
		var content = document.querySelector("#content");
		var user = "${user}";
		if(!content.value) {
			swal('댓글오류','댓글 내용을 입력해 주세요.','error');
			return;
		}
		if(!user) {
			swal('댓글오류','로그인 하셔야 댓글을 달 수 있습니다.','error');
			return;
		}else{
			frm.submit();
		}
	}
</script>
<c:import url="/jsp/common/footer.jsp" />
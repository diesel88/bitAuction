<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/jsp/common/header.jsp" />
<c:import url="/jsp/common/nav.jsp" />

<div class="row">
	<div class="col-md-10">
	
	
	<h3>나의 경매 정보</h3>
	<div>
	<label>입찰정보</label>
	<table>
		<tr>
			<th>물품명</th>
			<th>입찰가</th>
			<th>현재가</th>
			<th>종료일자</th>
			<th>판매상태</th>
			<th>수량</th>
		</tr>
		<c:forEach var="bid" items="${bidList}">
		<tr>
			<td><c:out value="${bid.acNm}"/></td>
			<td><c:out value="${bid.bidPrice}"/></td>
			<td><c:out value="${bid.currentPrice}"/></td>
			<td><fmt:formatDate value="${bid.acEndDate }" pattern="yyyy/MM/dd HH:mm"/></td>
			<td><div><c:out value="${bid.sbidResult}"/></div></td>
			<td><c:out value="${bid.bidCnt}"/></td>
		</tr>
		</c:forEach>
		<c:if test="${empty bidList}">
			<tr><td colspan="6">입찰 내역이 없습니다.</td></tr>
		</c:if>
	</table>
	</div>
	<div>
	<label>판매정보</label>
	<table>
		<tr>
			<th>물품명</th>
			<th>시작가</th>
			<th>현재가</th>
			<th>입찰자</th>
			<th>입찰수량</th>
			<th>판매상태</th>
			<th>종료일</th>
		</tr>
		<c:forEach var="auction" items="${auctionList }">
		<tr>
			<td><c:out value="${auction.acNm }"/></td>
			<td><c:out value="${auction.acStartPrice }"/></td>
			<td><c:out value="${auction.currentPrice }"/></td>
			<td><c:out value="${auction.mbId }"/></td>
			<td><c:out value="${auction.bidCnt }"/></td>
			<td><div><c:out value="${auction.sbidResult }"/></div>
				<div>
					<c:if test="${auction.acResult=='1403' }">
					<a href="cancelAuction.do?acNo=${auction.acNo}" onclick='doCancelAuction(${auction.acNo});'>판매취소</a>
					 <a href="updateAuctionForm.do?acNo=${auction.acNo }">물품수정</a>
					</c:if>
				</div>
			</td>
			<td><fmt:formatDate value="${auction.acEndDate }" pattern="yyyy/MM/dd HH:mm"/></td>
		</tr>
		</c:forEach>
		<c:if test="${empty auctionList}">
			<tr><td colspan="7">판매 내역이 없습니다.</td></tr>
		</c:if>
	</table>
	
</div>
<script>
	function doCancelAuction(acNo) {
		var result = confirm("정말로 취소하시겠습니까?");
		if (result) {
			location.href='cancelAuction.do?acNo='+acNo;
		}
	}
</script>
<c:import url="/jsp/common/footer.jsp" />
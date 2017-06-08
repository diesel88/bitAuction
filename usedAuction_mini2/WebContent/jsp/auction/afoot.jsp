<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/jsp/common/header.jsp" />
<c:import url="/jsp/common/nav.jsp" />
<c:forEach begin="0" end="${auctionsLength }" var="i" step="4">
<div class="row">
	<div class="col-md-10">
		<div class="col-md-3">
			<div class="thumbnail">
				<img src="${myContextPath}/upload${auctions[i].files[1].acFilePath}${auctions[i].files[1].acFileNm}" alt="">
				<div class="caption">
					<h3><a href="afootDetail.do?acNo=${auctions[i].acNo }">
							<c:out value="${auctions[i].acNm }"/>
					</h3></a>
					
					<p>시작가 : <c:out value="${auctions[i].acStartPrice }"/></p>
					<p>
						<a href="#" class="btn btn-primary" role="button">Button</a> <a
							href="#" class="btn btn-default" role="button">Button</a>
					</p>
				</div>
			</div>
		</div>
		<c:if test="${not empty auctions[i+1] }">
		<div class="col-md-3">
			<div class="thumbnail">
				<img src="${myContextPath}/upload${auctions[i+1].files[1].acFilePath}${auctions[i+1].files[1].acFileNm}" alt="">
				<div class="caption">
					<h3><a href="afootDetail.do?acNo=${auctions[i+1].acNo }">
							<c:out value="${auctions[i+1].acNm }"/>
					</h3></a>
					<p>시작가 : <c:out value="${auctions[i+1].acStartPrice }"/></p>
					<p>
						<a href="#" class="btn btn-primary" role="button">Button</a> <a
							href="#" class="btn btn-default" role="button">Button</a>
					</p>
				</div>
			</div>
		</div>
		</c:if>
		<c:if test="${not empty auctions[i+2] }">
		<div class="col-md-3">
			<div class="thumbnail">
				<img src="${myContextPath}/upload${auctions[i+2].files[1].acFilePath}${auctions[i+2].files[1].acFileNm}" alt="">
				<div class="caption">
					<h3><a href="afootDetail.do?acNo=${auctions[i+2].acNo }">
							<c:out value="${auctions[i+2].acNm }"/>
					</h3></a>
					<p>시작가 : <c:out value="${auctions[i+2].acStartPrice }"/></p>
					<p>
						<a href="#" class="btn btn-primary" role="button">Button</a> <a
							href="#" class="btn btn-default" role="button">Button</a>
					</p>
				</div>
			</div>
		</div>
		</c:if>
		<c:if test='${not empty auctions[i+3] }'>
		<div class="col-md-3">
			<div class="thumbnail">
				<img src="${myContextPath}/upload${auctions[i+3].files[1].acFilePath}${auctions[i+3].files[1].acFileNm}" alt="">
				<div class="caption">
					<h3><a href="afootDetail.do?acNo=${auctions[i+3].acNo }">
							<c:out value="${auctions[i+3].acNm }"/>
					</h3></a>
					<p>시작가 : <c:out value="${auctions[i+3].acStartPrice }"/></p>
					<p>
						<a href="#" class="btn btn-primary" role="button">Button</a> <a
							href="#" class="btn btn-default" role="button">Button</a>
					</p>
				</div>
			</div>
		</div>
		</c:if>
	</div>
</div>
</c:forEach>


<c:import url="/jsp/common/footer.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<div class="row">
	<div class="col-md-10">
		<div class="container-fluid">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" onclick="location.href='${myContextPath}/jsp/index.jsp';" class="btn btn-default btn-lg">
							<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
							BIT HOME
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">진행중인 경매 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<c:forEach var="menu1" items="${product}">
									<li><a href="${myContextPath}/auction/afoot.do?pdtTypeNo=${menu1.pdtTypeNo }"><c:out value="${menu1.pdtTypeNm}"/></a></li>
									</c:forEach>
									
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">이달의 최고 경매<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<c:forEach var="menu1" items="${product}">
									<li><a href="${myContextPath}/auction/top.do?pdtTypeNo=${menu1.pdtTypeNo }"><c:out value="${menu1.pdtTypeNm}"/></a></li>
									</c:forEach>
									
								</ul>
							</li>
							<c:if test="${not empty user}">
							<li>
							<a href="<c:url value='/auction/productRegisterForm.do'/>">경매등록</a>
							</li>
							<li>
							<a href="<c:url value='/auction/myAuction.do'/>">MyAuction</a>
							</li>
							</c:if>
						</ul>
						<ul class="nav navbar-nav navbar-right">
						<c:choose>
						<c:when test="${empty user }">
						
							<li><a href="<c:url value='/member/joinform.do'/>">회원가입</a></li>
							<li><a href="<c:url value='/member/login.do'/>">로그인</a></li>
							
						</c:when>
						<c:otherwise>
							<li><a href="<c:url value='/member/detailform.do'/>">회원정보</a></li>
							<li><a href="<c:url value='/member/logout.do'/>">로그아웃</a></li>
						</c:otherwise>
						</c:choose>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">고객센터 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">FAQ</a></li>
									<li><a href="${myContextPath}/board/list.do">QNA</a></li>
									<li role="separator" class="divider"></li>
									<li><a href="#">사용밥법</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>
</div>
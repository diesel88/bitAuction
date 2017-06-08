<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/jsp/common/header.jsp" />
<c:import url="/jsp/common/nav.jsp" />
<div class="row">
	<div class="col-md-1"></div>
	<div class="col-md-8">
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	  <!-- Indicators -->
	  <ol class="carousel-indicators">
	    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	  </ol>
	
	  <!-- Wrapper for slides -->
	  <div class="carousel-inner" role="listbox">
	  	<c:forEach var="i" begin="0" end="2" step="1">
	  	<c:choose>
	  	<c:when test="${i ==0 }">
	    <div class="item active">
	  	</c:when>
	  	<c:otherwise>
	    <div class="item">
	  	</c:otherwise>
	  	</c:choose>
	      <a href="../auction/topDetail.do?acNo=${top3[i].acNo }">
	      <img src="${myContextPath}/upload${top3[i].files[1].acFilePath}${top3[i].files[1].acFileNm}" width="800" height="600" alt="...">
	      </a>
	      <div class="carousel-caption">
	        	<c:out value="${top3[0].acNm}"/>
	      </div>
	    </div>
	  	</c:forEach>
	   
		
	  <!-- Controls -->
	  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>
	</div>
	<div class="col-md-1"></div>
</div>
<c:forEach var="i" begin="0" end="3" step="1">
<div class="row">
	<div class="col-md-10">
		<center><h3><c:out value="${categorys[i] }"/></h3></center>
		<c:forEach var="j" begin="0" end="3" step="1">
		<div class="col-md-3">
			<div class="thumbnail">
				<img src="${myContextPath}/upload${auctions[i][j].files[1].acFilePath}${auctions[i][j].files[1].acFileNm}" alt="">
				<div class="caption">
					<h3><c:out value="${auctions[i][j].acNm }"/></h3>
					<p>...</p>
					<p>
						<a href="#" class="btn btn-primary" role="button">Button</a> <a
							href="#" class="btn btn-default" role="button">Button</a>
					</p>
				</div>
			</div>
		</div>
		</c:forEach>
		
		
	</div>
</div>
</c:forEach>



<c:import url="/jsp/common/footer.jsp" />
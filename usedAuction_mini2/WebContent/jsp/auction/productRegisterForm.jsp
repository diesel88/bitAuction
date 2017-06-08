<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:import url="/jsp/common/header.jsp" />
<c:import url="/jsp/common/nav.jsp" />

<div class="row">
	<div class="col-md-1"></div>
	<div class="col-md-8">
		<form class="form-horizontal" action="productRegister.do" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label><div>경매 물품 등록</div></label>
			</div>
			
			<div class="form-group">
			  <label for="sel1" class="col-sm-2 control-label">상품유형1</label>
			  <div class="col-sm-4">
			  <select class="form-control" id="sel1" onchange="showSub(this.selectedIndex)">
			  	<c:forEach var="menu1" items="${product}" varStatus="loop">
			    <option value="<c:out value="${menu1.pdtTypeNo}"/>"><c:out value="${menu1.pdtTypeNm}"/></option>
			  	
			  	</c:forEach>
			    
			  </select>
			  </div>
			  
			  <label for="sel1" class="col-sm-2 control-label">상품유형2</label>
			  <div class="col-sm-4">
			  
			  <select class="form-control" id="sel2" name="pdtTypeNo">
			    
			  </select>
			  
			  </div>
			</div>
			
			<div class="form-group">
				<label for="acNm" class="col-sm-2 control-label">상품명</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="acNm" name="acNm"
						placeholder="상품명">
				</div>
			<div id="idMsg" style="display: block;"></div>	
			</div>

			
			<div class="form-group">
				<label for="acContent" class="col-sm-2 control-label">상품설명</label>
				<div class="col-sm-10">
					<textarea class="form-control" id="acContent" name="acContent" 
						rows="10"
						placeholder="상품설명"></textarea>
				</div>
			</div>
			
			<div class="form-group">
				<label for="file1" class="col-sm-2 control-label">메인이미지</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" id="file1" name="file1" >
				</div>
			</div>
			<div class="form-group">
				<label for="file2" class="col-sm-2 control-label">작은이미지</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" id="file2" name="file2" >
				</div>
			</div>
			
			<div class="form-group">
				<label for="acStartPrice" class="col-sm-2 control-label">시작가격</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="acStartPrice" name="acStartPrice"
						placeholder="시작가격">
				</div>
			</div>
			<div class="form-group">
				<label for="acCnt" class="col-sm-2 control-label">수량</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="acCnt" name="acCnt"
						placeholder="시작가격">
				</div>
			</div>
			
			
			
			<div class="form-group">
				<label class="col-sm-2  control-label">시작일</label>
				<div class="col-sm-8">
					<input type="text" style='width=10px;display:inline' id="startYear" name="startYear">
					<span >년월일</span>
					<input type="text" style='width=5px;display:inline' id="startHour" name="startHour">
					<label >시분</label>
				</div>
			</div>

			<div class="form-group">
				<label for="zip" class="col-sm-2 control-label">종료일</label>
				<div class="col-sm-8">
					<input type="text" style='width=10px;display:inline' id="endYear" name="endYear">
					<span >년월일</span>
					<input type="text" style='width=5px;display:inline' id="endHour" name="endHour">
					<label >시분</label>
				</div>
			</div>
			
			
			
			
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">등록</button>
					<button type="reset" class="btn btn-default">취소</button>
				</div>
			</div>
			
		</form>
	</div>
	<div class="col-md-2"></div>
</div>

<script>


	var data = [];
	<c:forEach var="menu1" items="${product}">
		var menu1 = {};
		menu1["pdtTypeNo"] = "${menu1.pdtTypeNo}";
		menu1["pdtTypeNm"] = "${menu1.pdtTypeNm}";
		menu1["products"] = [];
		console.log(menu1);
		<c:forEach var="menu2" items="${menu1.products}">
			var menu2 = {};
			menu2["pdtTypeNo"] = "${menu2.pdtTypeNo}";
			menu2["pdtTypeNm"] = "${menu2.pdtTypeNm}";
			menu1.products.push(menu2);
		</c:forEach>
		data.push(menu1);
	</c:forEach>
	showSub(0);
	function showSub(idx) {
		var sel = document.querySelector("#sel2");
		var result;
		
			for(var j=0; j < data[idx].products.length; j++) {
				result += "<option value='"+data[idx].products[j].pdtTypeNo+"'>"+data[idx].products[j].pdtTypeNm+"</option>";
			}
		
		sel.innerHTML = result;
		console.log(result);
	}
	
</script>

<c:import url="/jsp/common/footer.jsp" />
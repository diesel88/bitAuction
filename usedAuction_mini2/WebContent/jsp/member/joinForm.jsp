<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/jsp/common/header.jsp" />
<c:import url="/jsp/common/nav.jsp" />

<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-6">
		<form name="joinForm" action="${myContextPath}/member/join.do" method="post"
			class="form-horizontal" name="MemberInfo">
			<div class="form-group">
				<label for="mbType" class="col-sm-2 control-label">Member Type</label>
				<div class="col-sm-10">
					<label><input type="radio" id="mbType" name="mbType" 
						id="blankRadio1" value="1" aria-label="기업" onchange="changeUser(1);" checked>기업
					</label> 
					<label><input type="radio" id="mbType" name="mbType"
						id="blankRadio1" value="2" aria-label="개인" onchange="changeUser(2);">개인
					</label>
				</div>
			</div>
			
			<div></div>
			
			<div class="form-group">
				<label for="mbId" class="col-sm-2 control-label">아이디</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="mbId" name="mbId"
						placeholder="아이디">
				</div>
			<div id="idMsg" style="display: block;"></div>	
			</div>

			
			<div class="form-group">
				<label for="mbPw" class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="mbPw" name="mbPw" 
						maxlength="16"
						placeholder="Password">
				</div>
			</div>
			
			<div class="form-group">
				<label for="mbNm" class="col-sm-2 control-label">이름</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="mbNm" name="mbNm"
						placeholder="이름">
				</div>
			</div>
			
			<div class="form-group">
				<label for="mbEmail" class="col-sm-2 control-label">이메일</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="mbEmail" name="mbEmail"
						placeholder="이메일">
				</div>
			</div>
			
			<div class="form-group">
				<label for="mbSex" class="col-sm-2 control-label">성별</label>
				<div class="col-sm-10">
					<label><input type="radio" id="mbSex" name="mbSex" 
						id="blankRadio1" value="1" aria-label="남자">남자
					</label> 
					<label> <input type="radio" name="mbSex"
						id="blankRadio1" value="2" aria-label="여자">여자
					</label>
				</div>
			</div>
			
			<div class="form-group">
				<label for="zip" class="col-sm-2 control-label">우편번호</label>
				<div class="col-sm-10">
					<input type="" class="form-control" id="zip" name="zip">
				</div>
			</div>
			
			<div class="form-group">
				<label for="addr" class="col-sm-2 control-label">주소</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="addr" name="addr"
						placeholder="주소">
				</div>
			</div>
			
			<div class="form-group">
				<label for="dtlAddr" class="col-sm-2 control-label">상세주소</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="dtlAddr" name="dtlAddr"
						placeholder="상세주소">
				</div>
			</div>


<!-- ----------------------------------------개인회원 추가 등록 사항--------------------------------------------------- -->
		<div id="Prv" style="display:none;">
			<div class="form-group">
				<label for="SocialRegNo" class="col-sm-2 control-label">주민등록번호</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="SocialRegNo" name="SocialRegNo"
						placeholder="xxxxxx-xxxxxxx">
				</div>
			</div>
			<div class="form-group">
				<label for="FileNm" class="col-sm-2 control-label">이미지 파일</label>
				<div class="col-sm-10">
					<input type="button" value="이미지 등록"/>
				</div>
			</div>
		</div>
<!-- ----------------------------------------기업회원 추가 등록 사항--------------------------------------------------- -->
		<div id="Corp" style="display:block;">
			<div class="form-group">
				<label for="CoprRegNo" class="col-sm-2 control-label">사업자 등록번호</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="CoprRegNo" name="CoprRegNo"
						placeholder="사업자 등록번호">
				</div>
			</div>
			<div class="form-group">
				<label for="CoprNm" class="col-sm-2 control-label">기업 이름</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="CoprNm" name="CoprNm"
						placeholder="기업 이름">
				</div>
			</div>
			<div class="form-group">
				<label for="CoprBossNm" class="col-sm-2 control-label">기업 대표 이름</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="CoprBossNm" name="CoprBossNm"
						placeholder="기업 이름">
				</div>
			</div>
		</div>
<!-- ---------------------------------------------------------------------------------------------------------- -->

			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="button" class="btn btn-default" onclick="join();">확인</button>
					<button type="reset" class="btn btn-default">취소</button>
				</div>
			</div>
			
		</form>
	</div>
	<div class="col-md-2"></div>
</div>

<script>
	function join() {
		var frm = document.joinForm;
		// form validation
		var mbIdval = document.querySelector('#mbId')
		if(mbIdval.value == '') {
			swal('회원가입오류','회원가입시 필수 사항인 ID를 입력해주세요','error');
			return ;
		}
		frm.submit();
	}
	
	function changeUser(index) {
		if(index == '1') { 
			document.querySelector("#Corp").style = 'display:block';
			document.querySelector("#Prv").style = 'display:none';
		} else {
			document.querySelector("#Prv").style = 'display:block';
			document.querySelector("#Corp").style = 'display:none';
		}
		
	}
</script>

<c:import url="/jsp/common/footer.jsp" />
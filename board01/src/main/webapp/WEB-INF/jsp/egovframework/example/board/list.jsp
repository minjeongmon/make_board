<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value='/css/bootstrap/css/bootstrap.min.css'/>"/>
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/css/bootstrap/js/bootstrap.min.js'/>"></script>
<script type="text/javaScript">

	$( document ).ready(function() {
	  // Handler for .ready() called.
	});

	function add() {
		location.href = "<c:url value='/mgmt.do'/>";
	}
	
	function view() {
		location.href = "<c:url value='/view.do'/>";
	}
	
	function setPwd(user_id) {
		
		if (user_id == "admin") {
			$('#password').val('admin');
		} else if (user_id == "guest") {
			$('#password').val('1215');
		} else if (user_id == "guest2") {
			$('#password').val('0705');
		}
		
	}
	
	function check() {
		/* alert('check'); */
		
		if ($('#user_id').val() == '') {
			alert("아이디를 입력해주시요");
			return false;
		}
		
		if ($('#password').val() == '') {
			alert("비밀번호를 입력해주시요");
			return false;
		}
		
		return true;
	}

</script>    
</head>

<body>

	<div class="container">
		<h2>메인화면</h2>
		<div class="panel-group">
			<div class="panel panel-warning">
				<div class="panel-heading">
					<form class="form-inline" method="post" action="<c:url value='/login.do'/>">
						<div class="form-group">
							<label for="user_id"> I D : </label> 
							<!-- <input type="text" class="form-control" id="id"> -->
							<!-- 로그인 기능 구현 쉽게 하려고 셀렉트 상자 사용 -->
								<select class="form-control" id="user_id" name="user_id" onchange="setPwd(this.value);">
								  <option value="">선택해주세용</option>
								  <option value="admin">관리자</option>
								  <option value="guest">유령회원</option>
								  <option value="guest2">귀신회원</option>
								</select>
						</div>
						<div class="form-group">
							<label for="password">Password : </label> 
							<input type="password" class="form-control" id="password" name="password">
						</div>
						<button type="submit" class="btn btn-default" onclick="return check();">로그인</button>
					</form>
				</div>
				<div class="panel-body">
				<form class="form-inline" action="/list.do">
						<div class="form-group">
							<label for="searchName"> 제목 또는 내용 : </label> 
							<input type="text" class="form-control" id="searchName">
						</div>
							<button type="submit" class="btn btn-default">검색</button>
					</form>
					<div class="table-responsive">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>게시물번호</th>
									<th>제목</th>
									<th>조회수</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><a href="javascript:view();">1</a></td>
									<td><a href="javascript:view();">제목이뭐가중요해</a></td>
									<td>1215</td>
									<td>민정이</td>
									<td>2022-12-15</td>
								</tr>
							</tbody>
						</table>
					</div>


				</div>
				<div class="panel-footer">
				<button type="button" class="btn btn-default" onclick="add();">등록</button>
				</div>
			</div>
		</div>
	</div>

</body>

</html>

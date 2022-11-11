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

	function list() {
		location.href = "<c:url value='/list.do'/>";
	}

</script>
</head>

<body>

	<div class="container">
		<h2>상세화면</h2>
		<div class="panel-group">
			<div class="panel panel-warning">
				<div class="panel-heading">
					<label for=""> 나중에 코딩 해야지 </label> 
				</div>
				
				<div class="panel-body">

						<div class="form-group">
							<label class="control-label col-sm-2" for="idx">게시물 아이디:</label>
							<div class="col-sm-10 control-label" style="text-align:left;">
								게시물아이디
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="title">제목 :</label>
							<div class="col-sm-10 control-label" style="text-align:left;">
								제목
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="title">등록자/등록일 :</label>
							<div class="col-sm-10 control-label" style="text-align:left;">
								등록자/등록일
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="title">내용 :</label>
							<div class="col-sm-10 control-label" style="text-align:left;">
								내용
							</div>
						</div>
				</div>
				
				<div class="panel-footer">
					<button type="button" class="btn btn-default">수정</button>
					<button type="button" class="btn btn-default">삭제</button>
					<button type="button" class="btn btn-default" onclick="list();">목록</button>
				</div>
			</div>
			
			<div class="well">작성자/작성일 <br/> 내용 </div>
			<div class="well well-lg">
				<form class="form-horizontal" method = "post" action="reply.do">
					<div class="form-group">
						<label class="control-label col-sm-2" for="title">작성자 / 작성일 :</label>
						<div class="col-sm-10 control-label" style="text-align:left;">
							<input type="text" class="form-control" id="writer" name="writer" placeholder="Enter the writer" maxlength="15" 
								style="float:left; width:25%">
							<input type="text" class="form-control" id="indate" name="indate" placeholder="Enter the date" maxlength="10"
							style="float:left; width:25%;">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="reply">댓글 :</label>
						<div class="col-sm-10">
							<textarea class="form-control" rows="3" id="reply" name="reply" maxlength="300"></textarea>
						</div>
					</div>
					<button type="submit" class="btn btn-default">등록</button>
				</form>
			</div>
			
		</div>
</body>

</html>

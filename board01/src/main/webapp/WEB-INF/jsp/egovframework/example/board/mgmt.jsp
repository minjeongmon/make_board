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

	function cancel() {
		location.href = "<c:url value='/list.do'/>";
	}
	
</script>   
</head>

<body>

	<div class="container">
		<h2>등록 / 수정</h2>
		<div class="panel-group">
			<div class="panel panel-warning">
				<div class="panel-heading">
					<label for=""> 나중에 코딩 해야지 </label> 
				</div>
				
				<div class="panel-body">
					<form class="form-horizontal" method = "post" action="">
						<div class="form-group">
							<label class="control-label col-sm-2" for="idx">게시물 아이디:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="idx" name="idx" placeholder="자동으로 가져올것">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="title">제목 :</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="title" name="title" placeholder="Enter the title" maxlength="100">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="writer">등록자/등록일 :</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="writer" name="writer" placeholder="Enter the writer" maxlength="15" 
								style="float:left; width:25%">
								<input type="text" class="form-control" id="indate" name="indate" placeholder="Enter the date" maxlength="10"
								style="float:left; width:25%;">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="contents">내용 :</label>
							<div class="col-sm-10">
								<textarea class="form-control" rows="5" id="contents" name="contents" maxlength="1000"></textarea>
							</div>
						</div>
					</form>
				</div>
				
				<div class="panel-footer">
					<button type="button" class="btn btn-default">등록</button>
					<button type="button" class="btn btn-default">수정</button>
					<button type="button" class="btn btn-default" onclick="cancel();">취소</button>
				</div>
			</div>
		</div>
	</div>

</body>

</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/custom2.css" rel="stylesheet">
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<%@ include file="../include/header.jsp" %>

<div class="owl-carousel-wrapper">

      

      <div class="box-92819 shadow-lg">
        

          <div>
            <h2 class=" mb-3 text-black">About The share house</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus quam, ratione earum.</p>
          </div>
        
      </div>

        <div class="ftco-cover-1" style="background-image: url('images/hero_1.jpg')"></div>
    </div>
<div class="row">
			<div class="col-md-10">
				<h1>글 수정 폼</h1>
				<hr>

				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">글 수정 폼</h3>
					</div>
					<form action="update.do" method="post" enctype="multipart/form-data">
					<input type="hidden" name="bno" value="${board.bno }" />
					<input type="hidden" name="pageNum" value="${param.pageNum}">
					<div class="panel-body">

						<fieldset>
							<legend>기본정보 </legend>
							<div class="form-group">
								<label class="col-xs-2 col-lg-2 control-label">글제목</label>
								<div class="col-xs-10 col-lg-10">
									<input type=text id="title" name="title" class="form-control" value="${board.title }">
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-2 col-lg-2 control-label">글내용</label>
								<div class="col-xs-10 col-lg-10">
									<textarea rows="5" id="content" name="content" class="form-control" >${board.content }</textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="col-xs-2 col-lg-2 control-label">작성자</label>
								<div class="col-xs-10 col-lg-10">
									<input type=text id="writer" name="writer" class="form-control" value="${session_id }" readonly>
								</div>
							</div>
						</fieldset>

					</div>
					<div class="panel-footer">
						<button type="submit" id="btnWrite" class="btn btn-warning">글수정</button>
						<button type="reset" class="btn btn-danger">취소</button>
						<button type="button" id="btnList" class="btn btn-info">목록보기</button>
					</div>
					</form>
				</div>
				<!-- /글내용 panel -->

			</div>
		</div>

<script type="text/javascript">
$("btnUpdate").on('click',function(){
	var title=$("#title").val();
	if(title=""){
		alert("title을 입력하세요");
		$("#title").focus();
		return false;
	}
	return true;
});
$("btnList").on('click',function(){
	location.href="about.do";
});
</script>

<%@ include file="../include/footer.jsp" %>
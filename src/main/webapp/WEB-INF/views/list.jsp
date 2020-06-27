<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="/webjars/bootstrap/4.4.1/dist/css/bootstrap.min.css">
<title>방명록 목록</title>
</head>
<body>

	<h1>방명록</h1>
	<br> 방명록 전체 수 : ${count }
	<br>
	<br>

	<c:forEach items="${list}" var="guestbook">

${guestbook.id }<br>
${guestbook.name }<br>
${guestbook.content }<br>
${guestbook.regdate }<br>

	</c:forEach>
	<br>
<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
	<c:forEach items="${pageStartList}" var="pageIndex" varStatus="status">
		<a href="list?start=${pageIndex}">${status.index +1 }</a>&nbsp; &nbsp;
	</c:forEach>
	<br>
	<!-- <form method="post" action="write">
		name : <input type="text" name="name"><br>
		<textarea name="content" cols="60" rows="6"></textarea>
		<br> <input type="submit" value="등록">
	</form> -->
	
	<!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" id="modal_show">
        JQUERY를 이용한 모달 열기
    </button>
 
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                    <button type="button" class="btn btn-primary" id="close_modal">다른 방식으로 모달 닫기</button>
                </div>
            </div>
        </div>
    </div>
 
	<!--js, jquery -->
    <script src="/webjars/jquery/3.4.1/dist/jquery.min.js" type="text/javascript"></script>
    <script src="/webjars/bootstrap/4.4.1/dist/js/bootstrap.min.js" type="text/javascript"></script>

    <!--custom js -->
    <script type="text/javascript">
	    $(function () {
	      console.log("jQuery ready");
	    });
 	</script>
	<script>
        $(document).ready(function() {
            $("#modal_show").click(function() {
                $("#exampleModal").modal("show");
            });
 
            $("#close_modal").click(function() {
                $("#exampleModal").modal("hide");
            });
        });
    </script>
</body>
</html>
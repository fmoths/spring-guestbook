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
	
	<!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" id="modal_show">
        방명록 글남기기
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
                <!-- ajax로 바꿈?  -->
                    <form method="post" action="write" id="writeForm">
                    	<label name="name">name: </label>
						<input type="text" name="name"><br>
						<textarea name="content" cols="60" rows="6"></textarea>
					</form>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" form="writeForm">저장</button>
                    <button type="button" class="btn btn-primary" id="close_modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
 
	<!--js, jquery -->
    <script src="/webjars/jquery/3.4.1/dist/jquery.min.js" type="text/javascript"></script>
    <script src="/webjars/bootstrap/4.4.1/dist/js/bootstrap.min.js" type="text/javascript"></script>

    <!--custom js -->
	<script src="/js/app/list.js" type="text/javascript"></script>
</body>
</html>
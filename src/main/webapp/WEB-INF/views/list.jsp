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

<div class="container">
	<h1>방명록</h1>
		<br> 방명록 전체 수 : ${count }
		<br>
		<br>
	<table class="table table-horizontal table-bordered">
            <thead class="thead-strong">
                <tr>
                    <th>게시글번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>최종수정일</th>
                </tr>
            </thead>
            <tbody id="tbody">
            <c:forEach items="${list}" var="guestbook">
                <tr>
                    <td>${guestbook.id }</td>
                    <td>${guestbook.name }</td>
                    <td>${guestbook.content }</td>
                    <td>${guestbook.regdate }</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    
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
	                    <h5 class="modal-title" id="exampleModalLabel">방명록 작성하기</h5>
	                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                        <span aria-hidden="true">&times;</span>
	                    </button>
	                </div>
	                <div class="modal-body">
	                <!-- ajax로 바꿈?  -->
	                    <form method="post" action="write" id="write_form">
	                    	<div class="form-group row">
							  <label for="name-input" class="col-2 col-form-label" name="name">이름</label>
							  <div class="col-10">
							    <input class="form-control" type="text" value="Name" id="name-input" name="name">
							  </div>
							</div>
							<div class="form-group">
							    <label for="content">내용</label>
							    <textarea class="form-control" name="content" id="content" cols="60" rows="6"></textarea>
							  </div>
							
						</form>
	                </div>
	                <div class="modal-footer">
	                    <button type="submit" class="btn btn-primary" form="write_form">저장</button>
	                    <button type="button" class="btn btn-primary" id="close_modal">닫기</button>
	                </div>
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
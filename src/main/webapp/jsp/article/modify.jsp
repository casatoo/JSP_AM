<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Map<String, Object> articleRow = (Map<String, Object>) request.getAttribute("articleRow");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글 수정 페이지</title>
</head>
<body>
<h1> <%=(int)articleRow.get("id") %>번 게시물 수정</h1>

	<form action="doModify" method="post">
		<input type="hidden">
	
		<div>번호 : <%=(int)articleRow.get("id") %></div>
		<div>날짜 : <%=(LocalDateTime)articleRow.get("regDate") %></div>
		<div>
			제목 : <input autocomplete="off" name="title" type="text"  value="<%=(String)articleRow.get("title") %>"/>
		</div>
		<div>
			내용 :
			<textarea autocomplete="off" name="body" type="text" rows="4" cols="50"/><%=(String)articleRow.get("body") %></textarea>
		</div>

		<button type="submit">글수정</button>
	</form>

	<div>
		<a href="list">리스트로 돌아가기</a>
	</div>
	
</body>
</html>
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
<meta charset="UTF-8">
<style type="text/css">
@import
	url('https://fonts.googleapis.com/earlyaccess/notosanskr.css?family=Noto+Sans+KR&display=swap')
	;

body, ul, li {
	list-style: none;
	padding: 0;
	margin: 0;
}

a {
	text-decoration: none;
	color: inherit;
}

body {
	font-family: 'Noto Sans KR', sans-serif;
}

.articleView {
	background-color: black;
	color: white;
	display: inline-block;
}

.top-bar {
	background-color: black;
	color: white;
	display: flex;
	height: 100px;
	width: 100%;
	justify-content: space-around;
	align-items: center;
	position: relative;
}

.top-bar>div {
	position: absolute;
	left: 30%;
}

.top-bar>ul {
	display: flex;
	height: 100px;
}

.top-bar>ul>li {
	display: flex;
	align-items: center;
}

.top-bar>ul>li>a {
	height: 100%;
	display: flex;
	align-items: center;
	font-weight: bold;
	padding: 0 30px;
}

.top-bar>ul>li:hover>a {
	background-color: white;
	color: black;
}
table{
display:flex;
display: -webkit-box;
display: -ms-flexbox;
overflow-x: auto;
overflow-y: hidden;
}

tbody
{display:flex}

th,td{
display:block;
height: 50px;
}
td{
width: 500px;
}
</style>
<title>게시물 상세보기</title>
</head>
<body>
	<%@ include file="../part/topBar.jspf"%>
		<h1>
			<%=(int) articleRow.get("id")%>번 게시물
		</h1>
	<div class="articleView">
		<table border="2" bordercolor="white">
			<tr>
				<th>번호</th>
				<th>날짜</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성자</th>
			</tr>
			<tr>
				<td><%=(int) articleRow.get("id")%></td>
				<td><%=(LocalDateTime) articleRow.get("regDate")%></td>
				<td><%=(String) articleRow.get("title")%></td>
				<td><%=(String) articleRow.get("body")%></td>
				<td><%=(String) articleRow.get("writer")%></td>
			</tr>
		</table>
	<div>
		<a href="list">리스트로 돌아가기</a>
		<%
		if (loginedMemberId == (int) articleRow.get("memberId")) {
		%>
		<a href="modify?id=${param.id }">수정</a> <a
			href="doDelete?id=${param.id }">삭제</a>
		<%
		}
		%>
	</div>
	</div>

</body>
</html>
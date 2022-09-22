<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<Map<String, Object>> articleRows = (List<Map<String, Object>>) request.getAttribute("articleRows");
int cPage = (int)request.getAttribute("page");
int totalPage = (int) request.getAttribute("totalPage");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
@import url('https://fonts.googleapis.com/earlyaccess/notosanskr.css?family=Noto+Sans+KR&display=swap');

body , ul , li{
    list-style: none;
    padding: 0;
    margin: 0;
}
a{
    text-decoration: none;
    color:inherit;
}
body {
    font-family: 'Noto Sans KR', sans-serif;
 }
.top-bar{
    background-color: black;
    color:white;
    display: flex;
    height:100px;
    width: 100%;
    justify-content: space-around;
    align-items: center;
    position: relative;
}
.top-bar>div{
    position: absolute;
    left: 30%;
}
.top-bar>ul{
    display: flex;
    height: 100px;
}
.top-bar>ul>li{
    display: flex;
    align-items: center;
}
.top-bar>ul>li>a{
    height: 100%;
    display: flex;
    align-items: center;
    font-weight: bold;
    padding: 0 30px;
}
.top-bar>ul>li:hover>a{
    background-color: white;
    color: black;
}
</style>
<title>게시물 리스트</title>
</head>
<body>
	<%@ include file="../part/topBar.jspf"%>
	<table border="2" bordercolor="black">
		<colgroup>
			<col width="50"/>
			<col width="200"/>
		</colgroup>
		<tr>
			<th>번호</th>
			<th>날짜</th>
			<th>제목</th>
			<th>작성자</th>
			<th>삭제</th>
			<th>수정</th>
		</tr>
	
		<%
			for(Map<String, Object> articleRow : articleRows ){
		%>
		<tr>
			<td><%=articleRow.get("id") %></td>
			<td><%=articleRow.get("regDate") %></td>
			<td><a href="detail?id=<%=articleRow.get("id")%>"><%=articleRow.get("title") %></a></td>
			<td><%=articleRow.get("writer") %></td>
			<%
			if(loginedMemberId == (int)articleRow.get("memberId")){
			%>
			<td><a href="doDelete?id=<%=articleRow.get("id")%>">삭제</a></td>		
			<td><a href="modify?id=<%=articleRow.get("id")%>">수정</a></td>
			<% 
			}
			else{
			%>
			<td><a href="#"></a></td>		
			<td><a href="#"></a></td>
			<% 
			}
			%>
		</tr>
		<%
		}
		%>
	</table>
	<style type="text/css">
	.page>a.white{
	color:white;
	}	
	</style>
	<div class="articlePage">
	<div class="page">
		<%
		if (cPage > 1) {
		%>
		<a href="list?page=1">◀◀</a>
		<%
		}
		%>
		<%
		int pageSize = 5;
		int from = cPage - pageSize;
		if (from < 1) {
			from = 1;
		}
		int end = cPage + pageSize;
		if (end > totalPage) {
			end = totalPage;
		}
		for (int i = from; i <= end; i++) {
		%>
		<a class="<%=cPage == i ? "red" : ""%>" href="list?page=<%=i%>"><%=i%></a>
		<%
		}
		%>
		<%
		if (cPage < totalPage) {
		%>
		<a href="list?page=<%=totalPage%>">▶▶</a>
		<%
		}
		%>
	<div>
		<a href="write" class="articleWrite">글쓰기</a>
	</div>
		</div>
		
	
</body>
</html>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
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
    height: 100vh;
    background: url("https://images.pexels.com/photos/911738/pexels-photo-911738.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1") no-repeat center;
    background-size: cover;
 }
 body::before {
    content: "";
    position: absolute;
    z-index: 1;
    top: 0;
    right: 0;
    left: 0;
    bottom: 0;
    background-color: rgba(0, 0, 0, .7);
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
    z-index:1;
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

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>

	<%@ include file="../part/topBar.jspf"%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 페이지</title>
</head>
<body>
	<h1>로그인</h1>
		<form action="doJoin" method="post">
		<div>
			아이디 : <input autocomplete="off" placeholder="아이디를 입력해주세요" name="loginId"
				type="text" />
		</div>
		<div>
			비밀번호 : <input autocomplete="off" placeholder="비밀번호를 입력해주세요" name="loginPw"
				type="password" />
		</div>
		<div>
			비밀번호 확인 : <input autocomplete="off" placeholder="비밀번호를 입력해주세요" name="loginConfirm"
				type="password" />
		</div>
		<div>
			이름 : <input autocomplete="off" placeholder="이름을 입력하세요" name="name"
				type="text" />
		</div>

		<button type="submit">회원가입</button>
	</form>

	<div>
		<a href="/JSP_AM/home/main">메인페이지로 이동하기</a>
	</div>
	
</body>
</html>
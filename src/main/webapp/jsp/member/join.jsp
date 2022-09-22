<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">	
@import url('https://fonts.googleapis.com/earlyaccess/notosanskr.css?family=Noto+Sans+KR&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Noto Sans KR', sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: url("https://images.pexels.com/photos/3183132/pexels-photo-3183132.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1") no-repeat center;
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

.login-form {
    position: relative;
    z-index: 2;
}

.login-form h1 {
    font-size: 32px;
    color: #fff;
    text-align: center;
    margin-bottom: 60px;
}

.int-area {
    width: 400px;
    position: relative;
    margin-top: 20px;
}

.int-area:first-child {
    margin-top: 0;
}

.int-area input {
    width: 100%;
    padding: 20px 10px 10px;
    background-color: transparent;
    border: none;
    border-bottom: 1px solid #999;
    font-size: 18px;
    color: #fff;
    outline: none;
}

.int-area label {
    position: absolute;
    left: 10px;
    top: 15px;
    font-size: 18px;
    color: #999;
    transition: all .5s ease;
}

.warning {
    color: red !important;
    animation: warning .3s ease;
    animation-iteration-count: 3;
}

@keyframes warning {
    0% {
        transform: translateX(-8px);
    }

    25% {
        transform: translateX(8px);
    }

    50% {
        transform: translateX(-8px);
    }

    75% {
        transform: translateX(8px);
    }
}

.int-area input:focus+label,
.int-area input:valid+label {
    top: -2px;
    font-size: 13px;
    color: #166cea;
}

.btn-area {
    margin-top: 30px;

}

.btn-area button {
    width: 100%;
    height: 50px;
    background: #166cea;
    color: #fff;
    font-size: 20px;
    border: none;
    border-radius: 25px;
    cursor: pointer;
}

.caption {
    margin-top: 20px;
    text-align: center;
}

.caption a {
    font-size: 15px;
    color: #999;
    text-decoration: none;
}
</style>
<title>회원가입</title>
</head>
<body>
	
	<script>
		var JoinForm__submitDone = false;
		function JoinForm__submit(form) {
			if (JoinForm__submitDone){
				alert('처리중 입니다');
				return;
			}
			
			form.loginId.value = form.loginId.value.trim();
			if (form.loginId.value.length == 0) {
				alert('아이디를 입력해주세요');
				form.loginId.focus();
				return;
			}
			form.loginPw.value = form.loginPw.value.trim();
			if (form.loginPw.value.length == 0) {
				alert('비밀번호를 입력해주세요');
				form.loginPw.focus();
				return;
			}
			form.loginPwConfirm.value = form.loginPwConfirm.value.trim();
			if (form.loginPwConfirm.value.length == 0) {
				alert('비밀번호 확인을 입력해주세요');
				form.loginPwConfirm.focus();
				return;
			}
			if (form.loginPw.value != form.loginPwConfirm.value) {
				alert('비밀번호가 일치하지 않습니다');
				form.loginPw.focus();
				return;
			}
			form.name.value = form.name.value.trim();
			if (form.name.value.length == 0) {
				alert('이름을 입력해주세요');
				form.name.focus();
				return;
			}
			form.submit();
			JoinForm__submitDone = true;
		}
	</script>
	
	<section class="login-form">
        <h1>회원가입</h1>
        <form action="doJoin" method="post"
        	onsubmit="JoinForm__submit(this); return false;">
            <div class="int-area">
                <input type="text" name="loginId" id="id" autocomplete="off" required>
                <label for="id">USER ID</label>
            </div>
            <div class="int-area">
                <input type="password" name="loginPw" id="pw" autocomplete="off" required>
                <label for="id">PASSWORD</label>
            </div>
            <div class="int-area">
                <input type="password" name="loginPwConfirm" id="pw" autocomplete="off" required>
                <label for="id">PASSWORD CHECK</label>
            </div>
            <div class="int-area">
                <input type="text" name="name" id="id" autocomplete="off" required>
                <label for="id">NAME</label>
            </div>
            <div class="btn-area">
                <button type="submit">가입</button>
            </div>
        </form>
        <div class="caption">
            <a href="../home/main">취소</a>
        </div>
    </section>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/bootstrap/bootstrap.min.js"></script>

<link rel="icon" href="image/icon/favicon.ico">
<title>登录</title>

<script type="text/javascript">
	$(document).ready(function() {
		$('#loginFrom').submit(function() {
			$.ajax({
				url : "login.do",
				type : "POST",
				data : {
					'username' : $('#inputUserName').val(),
					'password' : $('#inputPassword').val()
				},
				dataType : "json",
				success : function(data) {
					if (data.result == 1) {
						location.href = "index.do";
					} else {
						$(".error-login").text(data.message);
						$(".error-login").show();
					}
				}
			});
			return false;
		});

		$('.btn').click(function() {
			$('#loginFrom').submit();
		});

		//回车直接登录
		/* $('input').bind("keydown", function(e) {
            if (e.keyCode == 13 && (!this.form.onsubmit || this.form.onsubmit())) {
                $('#loginForm').submit();
            } else {
                return true;
            }
        }); */

	});
</script>

</head>
<body>
	<div style="position:absolute; width:100%; height:100%; z-index:-1">
		<img src="image/login/pattern.png" height="100%" width="100%" />
	</div>
	<div class="container">
		<form class="form-signin" id="loginFrom" >
			<h1 class="form-signin-heading">
				<b>信息管理平台</b>
			</h1>
			<label for="inputEmail" class="sr-only">username</label> 
			<input type="text" id="inputUserName" class="form-control" placeholder="用户名" required autofocus>
		    <label for="inputPassword" class="sr-only">Password</label> 
		    <input type="password" id="inputPassword" class="form-control" placeholder="密码" required>
		    <span class="error-login" style="display:none;color:red"></span>
			<div class="checkbox">
				<label> 
					<input type="checkbox" value="remember-me">记住密码
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit" >登  录</button>
		</form>
	</div>
</body>
</html>

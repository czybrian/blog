<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form class="form-signin" action="./login" method="post">
  		<h2 class="form-signin-heading">用户登录</h2>
  		<input type="text" name="email" class="form-control" placeholder="电子邮件或用户名" required autofocus>
  		<input type="password" name="password" class="form-control" placeholder="密码" required>
  		<div class="checkbox">
    		<label>
      			<input type="checkbox" name="remember-me" value="on"> 记住我
    		</label>
  		</div>
  		<button class="btn btn-primary btn-block" type="submit">确定</button>
	</form>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>博客首页</title>
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<link rel="stylesheet" href="./static/css/homepage.css">
	<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>	
	<nav class="navbar navbar-inverse navbar-fixed-top hidden-xs">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapse" data-toggle="collapse" data-target="#navbar">
					<span class="sr-only">Toggle Navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="./list.html">Brian的博客</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="#">最近</a></li>
					<li><a href="#">归档</a></li>
					<li><a href="#">关于</a></li>
					<li class="dropdown">
  						<a href="#" class="dropdown-toggle" data-toggle="dropdown">账号管理
    						<span class="caret"></span></a>
  						<ul class="dropdown-menu">
    						<li class="dropdown-header">管理</li>
    						<li><a href="#">博客信息</a></li>
    						<li><a href="#">创建博文</a></li>
    						<li><a href="#">博客管理</a></li>
    						<li class="divider"></li>
    						<% if(2>1) { %>
    						<li class="dropdown-header">账号</li>
    						<li><a href="#">更改密码</a></li>
    						<li><a href="#">退出登录</a></li>
    						<% } %>
  						</ul>
					</li>
				</ul>
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="搜索...">
				</form>
			</div>
		</div>
	</nav>

	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="5000">
	  <ol class="carousel-indicators">
	    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	    <li data-target="#myCarousel" data-slide-to="1"></li>
	  </ol>
	  <div class="carousel-inner">
	    <div class="item active">
	      <img class="first-slide" src="./static/img/toronto.jpg" alt="First slide">
	      <div class="container">
	      	<div class="carousel-caption">
	      		<h2>Ultimate Experience</h2>
	      		<p>优雅简洁的外观设计，细心的交互方式，帮助您更快捷地创建博客，更方便地浏览您的博客内容。</p>
	      		<p><a class="btn btn-primary" href="#">立即加入</a></p>
	      	</div>
	      </div>
	    </div>
	    <div class="item">
	      <img class="second-slide" src="./static/img/vancouver.jpg" alt="Second slide">
	      <div class="container">
	      	<div class="carousel-caption">
	      		<h2>Ultimate Experience 2</h2>
	      		<p>优雅简洁的外观设计，细心的交互方式，帮助您更快捷地创建博客，更方便地浏览您的博客内容。</p>
	      		<p><a class="btn btn-primary" href="#">立即加入</a></p>
	      	</div>
	      </div>
	    </div>
	    <!-- Controls -->
	    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#myCarousel" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right"></span>
	      <span class="sr-only">Next</span>
	    </a>
	  </div>
	</div>

	<div class="container">
		<div class="row project-list">
			<div class="col-sm-8 col-md-4 project">
	      		<img class="img-circle" src="<%=project.getLogo() %>" width="140" height="140">
	      		<h2><%=project.getName() %></h2>
	      		<p><%=project.getDescription() %></p>
	      		<p><a class="btn btn-default" href="<%=project.getUrl() %>">访问 &raquo;</a></p>
	  		</div>
	  		<div class="col-sm-4 project">
	      		<img class="img-circle" src="./static/img/catty.jpg" width="140" height="140">
	      		<h2>purus molestie 2</h2>
	      		<p>Turpis inceptos, neque vel dolor. Mauris laoreet. Purus et, orci in sollicitudin, acm quam, iaculis lacus.</p>
	      		<p><a class="btn btn-default" href="#">访问 &raquo;</a></p>
	  		</div>
		</div>
	</div>
</body>
</html>
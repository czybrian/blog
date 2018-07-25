<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>博客首页</title>
	
	<link rel="stylesheet" href="./static/css/homepage.css">
	
	<%@include file="common/head.jsp" %>
</head>
<body>	
	<jsp:include page="common/nav.jsp">
		<jsp:param name="user" value="${sessionScope.currentUser.usename }"/>
	</jsp:include>

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
	      		<img class="img-circle" src="./static/img/catty.jpg" width="140" height="140">
	      		<h2>purus molestie</h2>
	      		<p>Turpis inceptos, neque vel dolor. Mauris laoreet. Purus et, orci in sollicitudin, acm quam, iaculis lacus.</p>
	      		<p><a class="btn btn-default" href="#">访问 &raquo;</a></p>
	  		</div>
	  		<div class="col-sm-4 project">
	      		<img class="img-circle" src="./static/img/catty.jpg" width="140" height="140">
	      		<h2>purus molestie 2</h2>
	      		<p>Turpis inceptos, neque vel dolor. Mauris laoreet. Purus et, orci in sollicitudin, acm quam, iaculis lacus.</p>
	      		<p><a class="btn btn-default" href="#">访问 &raquo;</a></p>
	  		</div>
		</div>
	</div>
	
	<%@include file="common/footer.jsp" %>
</body>
</html>
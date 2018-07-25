<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="UTF-8">
  	<title>文章详情</title>
  	
  	<link rel="stylesheet" href="./static/css/blog.css">
  	<link rel="stylesheet" href="./static/css/sidebar.css">
  	<link rel="stylesheet" href="./static/css/footer.css">
  	<%@include file="common/head.jsp" %>
</head>
<body>
	<jsp:include page="common/nav.jsp">
		<jsp:param name="user" value="${sessionScope.currentUser.username}"/>
	</jsp:include>
	
	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<div class="page-header">
					<h2>My First Blog</h2>
					<p class="blog-poster-meta">2018年7月22日 分组：<a href="#">Web开发</a></p>
				</div>
				<p>This is the blog body.</p>
				<hr>
				<nav>
					<ul class="pager">
						<li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> 上一页</a></li>
						<li class="next"><a href="#">下一页 <span aria-hidden="true">&rarr;</span></a></li>
					</ul>
				</nav>
			</div>
			<div class="col-sm-3 col-sm-offset-1">
				<div class="sidebar-module sidebar-module-inset">
  					<div class="avatar">
    					<img class="img-circle img-rounded img-thumbnail avatar" src="./static/img/catty.jpg">
    					<div>
      						<h4>Brian</h4>
      						<a type="email">brian@example.com</a>
    					</div>
  					</div>
  					<p>Ornare sapien rhoncus, nec mi hendrerit. Ante aliquam dui arcu, diam sodales erat felis dolor sed in, nec placerat non.</p>
				</div>
				<div class="sidebar-module">
  					<h4>归档</h4>
  					<ol class="list-unstyled">
   						<li><a href="#">2015年03月</a></li>
    					<li><a href="#">2015年02月</a></li>
  					</ol>
				</div>
			</div>		
		</div>
	</div>
	
	<%@include file="common/footer.jsp" %>
</body>
</html>
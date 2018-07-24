<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="UTF-8">
  	<title>文章列表</title>
  	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">
  	<link rel="stylesheet" href="./static/css/blog.css">
  	<link rel="stylesheet" href="./static/css/sidebar.css">
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
				</ul>
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="搜索...">
				</form>
			</div>
		</div>
	</nav>
	<div class="container">
  		<div class="page-header">
    		<h1>Brian 的博客
      			<small>Mi nunc congue nunc, ante felis vestibulum bibendum.</small>
    		</h1>
  		</div>
  		<div class="row">
    		<div class="col-sm-8">
    			<% for(Blog blog : (List<Blog>)request.getAttribute("blogs")) { %>
    			<div class="blog-post">
  					<h3 class="blog-post-title"><a href="./item.html"><%=blog.getTitle() %></a></h3>
  					<p class="blog-post-meta">2015年2月3日 分组：<a href="#">Web开发</a></p>
  					<p class="blog-post-content"><%=blog.getContent() %></p>
				</div>
				<hr/>
				<% } %>
				
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
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="UTF-8">
  	<title>创建文章</title>
  	
  	<link rel="stylesheet" href="./static/css/blog.css">
  	<link rel="stylesheet" href="./static/css/sidebar.css">
  	<%@include file="common/head.jsp" %>
</head>
<body>
	<jsp:include page="common/nav.jsp">
		<jsp:param name="user" value="${sessionScope.currentUser.username }"/>
	</jsp:include>
	
	<div class="container">
  		<div class="page-header">
    		<h2>新建博客
      			<small>在这里新建一篇博客</small>
    		</h2>
  		</div>
  		<div class="row">
    		<div class="col-sm-8">
    			<form>
    				<div class="form-group">
    					<label for="title">标题</label>
    					<input type="text" class="form-control" id="title" placeholder="文章的标题" autofocus="">
  					</div>
  					<div class="form-group">
    					<label for="content">内容</label>
    					<textarea class="form-control" id="content" placeholder="文章的内容" rows="18"></textarea>
  					</div>
  					<button type="submit" class="btn pull-right btn-primary">保存</button>
    			</form>
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
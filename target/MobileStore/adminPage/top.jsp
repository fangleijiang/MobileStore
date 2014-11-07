<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>后台管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://code.jquery.com/jquery.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/top.css" />
</head>

<body>
	<!--顶部导航栏 -->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="adminPage/admin_index.jsp">后台管理中心</a>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li class=""><a href="Mobile_ListProductsToindex.action">首页</a></li>
						<li class="" style="margin-left: 500px;">
               <s:if test="null==#session.username">
               <a href="./login.jsp">登录</a> 
               </s:if>
               <s:else>
               <a href=""><%=session.getAttribute("username") %></a>
               </s:else>
              
             
              
              </li>
						<li class=""><a href="./register.jsp">注册</a></li>
						<li class="">
               <s:if test="null!=#session.username">
               <a href="User_logOut.action">注销</a>
                </s:if>
              </li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- 图片轮换 -->
	<div class="top_pic"></div>

	<!-- 定义第二个导航栏-->
	<div class="nav2">
		<nav class="navbar navbar-inverse">
			<div class="navbar-inner">

				<ul class="nav nav-tabs">
						<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="adminPage/addMobile.jsp">产品管理 <b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
							<li class=""><a href="adminPage/addMobile.jsp">产品添加</a></li>
							<li class=""><a href="Mobileadmin_listProducttoBackSuccssoBack.action">查看产品</a></li>
							</ul>
							
							<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="Orderadmin_ListOrdertoBackground.action">订单管理 <b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
							<li class=""><a href="Orderadmin_ListOrdertoBackground.action">查看订单</a></li>
							</ul>
							<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="Useradmin_listUsertoBackground.action">用户管理 <b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
							<li class=""><a href="Useradmin_listUsertoBackground.action">查看用户</a></li>
							<li class=""><a href="./register.jsp">添加用户</a></li>
							</ul>
							
							
				</li>
				<li class=""><a href="./adminPage/admin_index.jsp">管理员首页</a></li>
				</ul>
		</div>

		</nav>
	</div>
</body>
</html>

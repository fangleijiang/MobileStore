<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>注册</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="images/icon1.png">
<link rel="stylesheet" type="text/css" href="css/register.css">
<script type="text/javascript">
	function checkregister() {
		var xmlHttp;
		var name = document.getElementById("email").value;
		if (window.XMLHttpRequest) {
			xmlHttp = new XMLHttpRequest();
		} else {
			xmlHttp = new ActiveXObject("MicroSoft.XMLHTTP");//老版本的ie
		}
		xmlHttp.onreadystatechange = function() {
			if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
				//var ss = xmlHttp.responseText;
				var dataObj = eval("(" + xmlHttp.responseText + ")");
				if (dataObj.exist == "false") {
					document.getElementById("tip").innerHTML = "<img src='images/ok.png'/><font color='green'>可以注册</font>";
				} else {
					document.getElementById("tip").innerHTML = "<img src='images/no.png'/><font color='red'>已被注册</font>";
				}
			}
		};
		xmlHttp.open("post", "Json_checkRegister.action?checkname=" + name,
				true);
		xmlHttp.send();
	}


</script>

</head>

<body>
<body>
	<div class="wrapper">
		<form action="User_Register.action" method="get">
			<div class="loginBox">
				<div class="logo">
					<img alt="" src="images/icon1.png"><font size="4px">手机一号店
						注册</font>
				</div>
				<div class="loginBoxCenter">
					<p>
						<label for="username">用户名：</label>
					</p>
					<p>
						<input type="email" id="email" name="user.username"
							onblur="checkregister();" class="loginInput"
							autofocus="autofocus" required="required" autocomplete="off"
							placeholder="请输入真实邮箱" value="" /><font id="tip"></font>
					</p>
					<p>
						<label for="password">密码：</label><a class="forgetLink" href="#">忘记密码?</a>
					</p>
					<p>
						<input type="password" id="password" name="user.password"
							class="loginInput" required="required" placeholder="请输入密码"
							value="" />6至16位字符串
					</p>
					<p>
						<label for="password">地址：</label>
					<p>
						<input type="text" id="address" name="user.address"
							class="loginInput" required="required" placeholder="请输入省市县地址"
							value="" />
					</p>
					<p>
						<label for="sex">性别：</label> <select name="user.sex">
							<option value="mal">男</option>
							<option value="femal">女</option>
						</select> &nbsp;&nbsp; <label for="age">生日：</label> <input type="date"
							name="user.age" />
				</div>
				<div class="loginBoxButtons">
				注册成功后请到邮箱激活哦！
					<input class="loginBtn" type="submit" value="注册"></input>
				</div>
			</div>
		</form>
	</div>
</body>
</html>


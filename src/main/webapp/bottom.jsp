<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bottom.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">



  </head>
  
  <body>
    <div class="navbar navbar-fixed-bottom">
  <div class="navbar-inner">
       
            <ul class="nav">
              <li class="" style="margin-left: 450px;">
                <a href="http://www.dreamstation.cn" target="_blank">联系我们</a>
              </li>
              <li class="">
                <a href="Mobile_ListProductsToindex.action"> Copyright2014©梦之站 -方雷江| 长沙理工大学</a>
              </li>
              <li class="">
                <a href="Mobile_ListProductsToindex.action"> 电话：15243676422</a>
              </li>
           
            </ul>
          </div>
        
</div>
 
  </body>
</html>

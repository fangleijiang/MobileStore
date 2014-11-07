<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>下单成功</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<script src="js/jquery.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/roller.js"></script>
<link rel="stylesheet" type="text/css" href="css/layout.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/left_nav.css" />
<link rel="stylesheet" type="text/css" href="css/web_index.css" />
<script type="text/javascript" src="js/mootools.svn.js"></script>
<script type="text/javascript" src="js/lofslidernews.mt11.js"></script>
<link rel="shortcut icon" href="images/icon1.png">
<link rel="stylesheet" type="text/css" href="css/mobile_detail.css" />

  </head>
  
  <body>
  <jsp:include page="web_top.jsp"></jsp:include>
<!-- 定义中间部分-->
<div class="center_body">
    <div class="span_left">
   <div class="panel-heading">
        新产品
   </div>
  
     <s:iterator value="listNewMobile" var="mobile">
                       
                       <div class="new_mobile" >
                       <a target="_blank" href="Mobile_findMobileById.action?mobile.id=<s:property value="#mobile.id"/>"><img src="<s:property value="#mobile.pictrue" />" style="width:150px; height:150px"></a>
                              <br>
                              <s:property value="#mobile.brand"/> （<s:property value="#mobile.model"/>）<p>（<s:property value="#mobile.color"/>）
                              <br>
                                                                                          ￥<s:property value="#mobile.price"/>
                              <br>
                              <s:property value="#mobile.screen_size"/>英寸  
                       </div>                  
 	 </s:iterator>

 
</div>
 <div class="span_right">
   
     <div class="span_content">
       <div class="top">
     	 个人中心所有订单：
       </div>
       <div style="margin-top: 20px">
        <font color="red" size="10px" face="微软雅黑">下单成功，请点击右上角个人中心查看！</font>
       </div>
      
      </div>
    	</div>
    	</div>
  <jsp:include page="bottom.jsp"></jsp:include>
  </body>
</html>

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

<title>购物车</title>

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

<script type="text/javascript">
function check(){

var recipient_address = document.getElementById("recipient_address").value;
var phonenumber = document.getElementById("phonenumber").value;
var recipient_name = document.getElementById("recipient_name").value;
if((recipient_address.length)==0){
confirm("请填写收货地址！");
return false;
}
if((phonenumber.length)<11){
confirm("手机号码格式不正确！");
return false;
}
if((recipient_name.length)==0){
confirm("请填写收件人姓名！");
return false;
}
return true;
}
</script>


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
     	  手机详细：
       </div>
       <div class="phone_image">
        <img alt="" src=" <s:property value="%{mobile.pictrue}"/>" style=" width:250px; height:180px">
       </div>
       <div class="phone_parameter"><font color="red" face="微软雅黑" size="4px"> <s:property value="%{mobile.brand}"/>（<s:property value="%{mobile.model}"/>）</font>
       <p>
      商品编号：<s:property value="%{mobile.id}"/><p>
 <s:property value="%{mobile.network_format}"/>，超速上网！,
     <s:property value="%{mobile.screen_size}"/>英寸,  
 <s:property value="%{mobile.color}"/>,
   
      上市时间： <s:property value="%{mobile.time_to_market}"/>,
         cpu：  <s:property value="%{mobile.cpu}"/>,
           相机：<s:property value="%{mobile.camera}"/>,
        内存：   <s:property value="%{mobile.ram}"/>,
        存储大小：<s:property value="%{mobile.rom}"/><p>
            单价： <font color="red" face="微软雅黑">￥<s:property value="%{mobile.price}"/>.00</font><p>
        购买数量：<font color="red" face="微软雅黑" ><s:property value="%{orders.product_quantity}"/></font><p>
   总价格：<font color="red" face="微软雅黑">￥<%=session.getAttribute("totalprice") %>.00</font><p>
  订单编号：<s:property value="%{orders.order_number}"/> <p>    
  <form action="Order_addOrder.action" method="post" class="form-horizontal">
  <input type="hidden" name="mobile.id" value="<s:property value="%{mobile.id}"/>">
  <input type="hidden" name="user.username" value="<s:property value="#session.username"/>">
 &nbsp;&nbsp;收货地址：<textarea name="orders.recipient_address" cols="5" rows="3" id="recipient_address"></textarea><p><p>
 
&nbsp;&nbsp;手机号码：<input name="orders.phonenumber" type="text" id="phonenumber"><p>
 
  收件人姓名：<input name="orders.recipient_name" type="text" id="recipient_name"><p>
  <input class="btn btn-danger" type="submit" value="下订单" onclick="return check();">
  
 
  </form>
       </div>
 	  </div>
    </div>  
   
    </div>
  <jsp:include page="bottom.jsp"></jsp:include>
	
</body>
</html>

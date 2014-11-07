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

<title>手机详细</title>

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

var product_quantity = document.getElementById("product_quantity").value;

if((product_quantity.length)==0){
confirm("请选择购买数量！");

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
       <div class="phone_parameter"><font color="red" face="微软雅黑" size="4px"> <s:property value="%{mobile.brand}"/>（<s:property value="%{mobile.model}"/>）手机，你值得拥有！！</font>
       <p>
      商品编号：<s:property value="%{mobile.id}"/><p>
       手机品牌：<s:property value="%{mobile.brand}"/><p>
        型号：<s:property value="%{mobile.model}"/><p>
       网络格式： <s:property value="%{mobile.network_format}"/>，超速上网！<p>
        屏幕尺寸：  <s:property value="%{mobile.screen_size}"/>英寸<p>   
         颜色： <s:property value="%{mobile.color}"/><p>
         价格： <font color="red" face="微软雅黑">￥<s:property value="%{mobile.price}"/>.00</font><p>
      上市时间： <s:property value="%{mobile.time_to_market}"/><p>
         cpu：  <s:property value="%{mobile.cpu}"/><p>
           相机：<s:property value="%{mobile.camera}"/><p>
        内存：   <s:property value="%{mobile.ram}"/><p>
        存储大小：<s:property value="%{mobile.rom}"/><p>
      
         <form action="Order_addtoCart.action" method="post">
     	<input type="hidden" name="mobile.id" value="<s:property value="%{mobile.id}"/>">
       购买数量：<input type="number" name="orders.product_quantity" id="product_quantity" min="1" max="5" >最多允许购买5件<p>
    
     <input class="btn btn-danger" type="submit" value="加入购物车" onclick="return check();">&nbsp;<button class="btn" type="button">+加关注</button><p> 
     </form>
         详细描述：    <s:property value="%{mobile.discription}" escape="false"/>
       
       </div>
    
 	  </div>
    </div>  
   
    </div>
  <jsp:include page="bottom.jsp"></jsp:include>
	
</body>
</html>


<a href="../cart/addProducttoCart" class="addProducttoCart"><button type="button" class="btn btn-warning">加入购物车</button></a>
                                    <a href="../order/writeOrderInfo" class="writeOrderInfo"><button type="button" class="btn btn-danger">立即购买</button></a>
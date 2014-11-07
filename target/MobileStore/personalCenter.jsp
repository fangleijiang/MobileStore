<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>个人中心</title>

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
<link rel="stylesheet" type="text/css" href="css/personalCenter.css" />

</head>

<body>
<jsp:include page="web_top.jsp"></jsp:include>
<!-- 定义中间部分-->
<div class="center_body">
     
 <div class="span_right">
   
     <div class="span_content">
       <div class="top">
     	 个人中心所有订单：
       </div>
       <table class="table table-striped">
       <tr>
       <td><font color="red" face="微软雅黑">订单号</font></td>
       <td><font color="red" face="微软雅黑">发货号</font></td>
       <td><font color="red" face="微软雅黑">商品</font></td>
       <td><font color="red" face="微软雅黑">商品数量</font></td>
       <td><font color="red" face="微软雅黑">付款金额</font></td>
       <td><font color="red" face="微软雅黑">付款日期</font></td>
        <td><font color="red" face="微软雅黑">发货地址</font></td>
          <td><font color="red" face="微软雅黑">发货状态</font></td>
           <td><font color="red" face="微软雅黑">付款方式</font></td>
         <td><font color="red" face="微软雅黑">修改订单</font></td>
          <td><font color="red" face="微软雅黑">删除订单</font></td>
       </tr>
      
        <s:iterator value="list_orders" var="orders">
        
         <tr>
      	 <td>
          <s:property value="#orders.order_number"/> 
           </td>
            <td>
          <s:property value="#orders.invoice_number"/> 
           </td>
            <td>
           <font color="red" face="微软雅黑"><s:property value="#orders.mobile.brand"/></font>手机
          </td>
            <td>
          <font color="red" face="微软雅黑"><s:property value="#orders.product_quantity"/></font> 个
           </td>
           <td>
           <s:property value="#orders.money"/>元
          </td>
          <td>
           <s:property value="#orders.payment_time"/>
          </td>
          <td>
          <s:property value="#orders.recipient_address"/>
   </td>
 
    <td>
    <s:if test="#orders.invoice_Status==0">
    		<font color="red">未发货</font>
    </s:if>
    <s:else>
           <font color="red"> 已发货</font>
    </s:else>
          
   </td>
   
     <td>
          <s:property value="#orders.paymentMode"/>
   </td>
     <td>
     <s:if test="#orders.invoice_Status==0">
         <input type="button" value="修改">
         </s:if>
         <s:else>
         <input type="button" value="修改" disabled="disabled">
         </s:else>
   </td>
     <td>
      <s:if test="#orders.invoice_Status==0">
          <input type="button" value="删除">
           </s:if>
         <s:else>
          <input type="button" value="删除" disabled="disabled">
         </s:else>
   </td>
 
    </tr>
  
     </s:iterator>
   

	  
       </table>
      
     
                       
                      
    </div>  
   
    </div>
    	</div>
  <jsp:include page="bottom.jsp"></jsp:include>

</body>
</html>

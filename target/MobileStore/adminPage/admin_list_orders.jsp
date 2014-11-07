<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>所有订单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="images/icon1.png">
	<link rel="stylesheet" href="css/admin_list_orders.css">
  </head>
  
  <body>
    <jsp:include page="top.jsp"></jsp:include>
    <div class="center">

	 <table class="table table-striped">
       <tr>
       <td><font color="red" face="微软雅黑">订单号</font></td>
       <td><font color="red" face="微软雅黑">发货号</font></td>
       <td><font color="red" face="微软雅黑">商品</font></td>
       <td><font color="red" face="微软雅黑">商品数量</font></td>
       <td><font color="red" face="微软雅黑">付款金额</font></td>
       <td><font color="red" face="微软雅黑">付款日期</font></td>
       <td><font color="red" face="微软雅黑">用户</font></td>
        <td><font color="red" face="微软雅黑">收货地址</font></td>
         <td><font color="red" face="微软雅黑">收件人</font></td>
                  <td><font color="red" face="微软雅黑">手机号码</font></td>
                  <td><font color="red" face="微软雅黑">付款方式</font></td>
                  <td><font color="red" face="微软雅黑">审核订单</font></td>
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
           <s:property value="#orders.user.username"/>
          </td>
          <td>
          <s:property value="#orders.recipient_address"/>
   </td>
   <td>
          <s:property value="#orders.recipient_name"/>
   </td>
          <td>
          <s:property value="#orders.phonenumber"/>
   </td>
    <td>
          <s:property value="#orders.paymentMode"/>
   </td>
    <td>
    <s:if test="#orders.invoice_Status==0">
         <a href="Order_CheckOrders.action?orders.id= <s:property value="#orders.id"/>"><input type="button" value="审核订单" class="btn btn-success"></a>
         </s:if>
         <s:else>
         <input type="button" value="审核通过" disabled="disabled" class="btn btn-danger">
         </s:else>
   </td>
     <td>
          <input type="button" value="删除" class="btn btn-success">
   </td>
    </tr>
     </s:iterator>
	</table>
	 <table>
        <s:iterator value="pageBean">         
                        <tr>
                       
                        <td  colspan="5" >
                       &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        	<a href="Orderadmin_ListOrdertoBackground.action?page=1"><FONT color="black"><input type="button" value="第一页"></FONT></a>               
                        	<s:if test="%{currentPage == 1}">
                        	<input type="button" value="上一页" disabled="disabled">
                        	</s:if>
                        <s:else> 
                        	
                         <a href="Orderadmin_ListOrdertoBackground.action?page=<s:property value="%{currentPage-1}"/>"><input type="button" value="上一页"></a>
                        </s:else>  
                        共<FONT color="red"><s:property value="allRow"/></FONT>条记录&nbsp;|&nbsp;
                        	当前第<FONT color="red"><s:property value="currentPage"/></FONT>页&nbsp;共<FONT color="black"><s:property value="totalPage"/>页</FONT>
                                           
                        <s:if test="%{currentPage != totalPage}">
                         <a href="Orderadmin_ListOrdertoBackground.action?page=<s:property value="%{currentPage+1}"/>"><FONT color="black"><input type="button" value="下一页"></FONT></a>               
           				</s:if>
           				<s:else>
           				<input type="button" value="下一页" disabled="disabled">
           				</s:else> 
           				 <a href="Orderadmin_ListOrdertoBackground.action?page=<s:property value="%{totalPage}"/>"><FONT color="black"><input type="button" value="最后一页"></FONT></a>                  
                        </td>
                                              </tr>
                        
                        </s:iterator>
       </table>
	
   </div>
   <jsp:include page="../bottom.jsp"></jsp:include>
  </body>
</html>

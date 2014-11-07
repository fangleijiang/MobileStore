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
    
    <title>查看所有商品</title>
    
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
       <td><font color="red" face="微软雅黑">编号</font></td>
       <td><font color="red" face="微软雅黑">品牌</font></td>
       <td><font color="red" face="微软雅黑">型号</font></td>
       <td><font color="red" face="微软雅黑">颜色</font></td>
       <td><font color="red" face="微软雅黑">相机</font></td>
       <td><font color="red" face="微软雅黑">cpu</font></td>
        <td><font color="red" face="微软雅黑">ram</font></td>
        <td><font color="red" face="微软雅黑">rom</font></td>
        <td><font color="red" face="微软雅黑">上市时间</font></td>
         <td><font color="red" face="微软雅黑">修改</font></td>
          <td><font color="red" face="微软雅黑">删除</font></td>
       </tr>
      
        <s:iterator value="listMobile" var="mobile">
        
         <tr>
      	 <td>
          <s:property value="#mobile.id"/> 
           </td>
            <td>
          <s:property value="#mobile.brand"/> 
           </td>
           <td>
          <s:property value="#mobile.model"/> 
           </td>
             <td>
          <s:property value="#mobile.color"/> 
           </td>
             <td>
          <s:property value="#mobile.camera"/> 
           </td>
             <td>
          <s:property value="#mobile.cpu"/> 
           </td>
             <td>
          <s:property value="#mobile.ram"/> 
           </td>
            <td>
          <s:property value="#mobile.rom"/> 
           </td>
          
            <td>
          <s:property value="#mobile.time_to_market"/> 
           </td>
            <td>
           <input type="button" value="修改" class="btn btn-success">
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
                        	<a href="Order_ListOrdertoBackground.action?page=1"><FONT color="black"><input type="button" value="第一页"></FONT></a>               
                        	<s:if test="%{currentPage == 1}">
                        	<input type="button" value="上一页" disabled="disabled">
                        	</s:if>
                        <s:else> 
                        	
                         <a href="Mobile_listProducttoBackSuccssoBack.action?page=<s:property value="%{currentPage-1}"/>"><input type="button" value="上一页"></a>
                        </s:else>  
                        共<FONT color="red"><s:property value="allRow"/></FONT>条记录&nbsp;|&nbsp;
                        	当前第<FONT color="red"><s:property value="currentPage"/></FONT>页&nbsp;共<FONT color="black"><s:property value="totalPage"/>页</FONT>
                                           
                        <s:if test="%{currentPage != totalPage}">
                         <a href="Mobile_listProducttoBackSuccssoBack.action?page=<s:property value="%{currentPage+1}"/>"><FONT color="black"><input type="button" value="下一页"></FONT></a>               
           				</s:if>
           				<s:else>
           				<input type="button" value="下一页" disabled="disabled">
           				</s:else> 
           				 <a href="Mobile_listProducttoBackSuccssoBack.action?page=<s:property value="%{totalPage}"/>"><FONT color="black"><input type="button" value="最后一页"></FONT></a>                  
                        </td>
                                              </tr>
                        
                        </s:iterator>
       </table>
	
   </div>
   <jsp:include page="../bottom.jsp"></jsp:include>
  </body>
</html>

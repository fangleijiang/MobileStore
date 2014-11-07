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
    
    <title>所有用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="images/icon1.png">
	<link rel="stylesheet" href="css/admin_list_user.css">
  </head>
  
  <body>
    <jsp:include page="top.jsp"></jsp:include>
      <div class="center">

	 <table class="table table-striped">
       <tr>
       <td><font color="red" face="微软雅黑">编号</font></td>
       <td><font color="red" face="微软雅黑">用户名</font></td>
       <td><font color="red" face="微软雅黑">地址</font></td>
       <td><font color="red" face="微软雅黑">出生日期</font></td>
       <td><font color="red" face="微软雅黑">密码</font></td>
       <td><font color="red" face="微软雅黑">身份</font></td>
       </tr>
      
        <s:iterator value="list_user" var="user">
        
         <tr>
      	 <td>
          <s:property value="#user.id"/> 
           </td>
           <td>
          <s:property value="#user.username"/> 
           </td>
           
          <td>
          <s:property value="#user.address"/> 
           </td>
           <td>
          <s:property value="#user.age"/> 
           </td>
          <td>
          <s:property value="#user.password"/> 
           </td>
            <td>
          <s:property value="#user.identitys"/> 
           </td>
    </tr>
     </s:iterator>
	</table>
	 <table>
        <s:iterator value="pageBean">         
                        <tr>
                       
                        <td  colspan="5" >
                       &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        	<a href="User_listUsertoBackground.action?page=1"><FONT color="black"><input type="button" value="第一页"></FONT></a>               
                        	<s:if test="%{currentPage == 1}">
                        	<input type="button" value="上一页" disabled="disabled">
                        	</s:if>
                        <s:else> 
                        	
                         <a href="User_listUsertoBackground.action?page=<s:property value="%{currentPage-1}"/>"><input type="button" value="上一页"></a>
                        </s:else>  
                        共<FONT color="red"><s:property value="allRow"/></FONT>条记录&nbsp;|&nbsp;
                        	当前第<FONT color="red"><s:property value="currentPage"/></FONT>页&nbsp;共<FONT color="black"><s:property value="totalPage"/>页</FONT>
                                           
                        <s:if test="%{currentPage != totalPage}">
                         <a href="User_listUsertoBackground.action?page=<s:property value="%{currentPage+1}"/>"><FONT color="black"><input type="button" value="下一页"></FONT></a>               
           				</s:if>
           				<s:else>
           				<input type="button" value="下一页" disabled="disabled">
           				</s:else> 
           				 <a href="User_listUsertoBackground.action?page=<s:property value="%{totalPage}"/>"><FONT color="black"><input type="button" value="最后一页"></FONT></a>                  
                        </td>
                                              </tr>
                        
                        </s:iterator>
       </table>
	
   </div>
   <jsp:include page="../bottom.jsp"></jsp:include>
  </body>
</html>

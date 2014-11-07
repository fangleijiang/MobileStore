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

<title>产品中心</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://code.jquery.com/jquery.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" >
<script src="bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="js/roller.js" ></script>
<link rel="stylesheet" type="text/css" href="css/layout.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/left_nav.css" />
<link rel="stylesheet" type="text/css" href="css/new_product.css" />
<script type="text/javascript" src="js/mootools.svn.js"></script>
<script  type="text/javascript" src="js/lofslidernews.mt11.js"></script>
 <link rel="shortcut icon" href="images/icon1.png">
<style type="text/css">

</style>
</head>

<body>
 <jsp:include page="web_top.jsp"></jsp:include>

<!-- 定义中间部分-->
<div class="center_body">
 <div class="span_right">
    <div class=top>
    <table class="table table-hover">
     <tr>
    <td>手机-商品筛选</td>
  </tr>
   <tr>
    <td>品牌：
    <input name="brand" type="radio" value="HTC"/><img src="phone_image/htc.png" width="90px;" height="100px;">
    <input name="brand" type="radio" value="APPLE"/><img src="phone_image/apple.png" width="90px;" height="100px;">
    <input name="brand" type="radio" value="COOLPAD"/><img src="phone_image/coolpad.png" width="90px;" height="100px;">
    <input name="brand" type="radio" value="LNENOVO"/><img src="phone_image/lenovo.png" width="90px;" height="100px;">
    <input name="brand" type="radio" value="MEIZU"/><img src="phone_image/meizu.png" width="90px;" height="100px;">
    <input name="brand" type="radio" value="NOKIA"/><img src="phone_image/nokia.png" width="90px;" height="100px;">
    <input name="brand" type="radio" value="SAMSUNG"/><img src="phone_image/samsung.png" width="90px;" height="100px;">
    <input name="brand" type="radio" value="SONY"/><img src="phone_image/sony.png" width="90px;" height="100px;">
    <input name="brand" type="radio" value="ZTE"/><img src="phone_image/ZTE.png" width="90px;" height="100px;">
    </td>
  </tr>
  <tr>
   <td>网络：
   <input name="network_format" type="radio" value="移动4G"/>移动4G（TD-LTE ）
   <input name="network_format" type="radio" value="联通4G"/>联通4G（TD-LTE）
   <input name="network_format" type="radio" value="联通3G"/>联通3G（WCDMA）
   <input name="network_format" type="radio" value="移动3G"/>移动3G（TD-SCDMA）
   <input name="network_format" type="radio" value="电信3G"/>电信3G（CDMA2000）
   
   </td>
  </tr>
  <tr>
    <td>价格：
    <input name="price" type="radio" value="电信3G"/>1-499&nbsp;
    <input name="price" type="radio" value="电信3G"/>500-999&nbsp;
    <input name="price" type="radio" value="电信3G"/>1000-1499&nbsp;
    <input name="price" type="radio" value="电信3G"/>1500-1999&nbsp;
    <input name="price" type="radio" value="电信3G"/>2000-2499&nbsp;
    <input name="price" type="radio" value="电信3G"/>2500-2999&nbsp;
    <input name="price" type="radio" value="电信3G"/>3000-4000&nbsp;
    <input name="price" type="radio" value="电信3G"/>4000以上&nbsp;
  
    </td>
  </tr>
	</table>
    </div>
     <div class="span_content">
       <div class="top">
       <table>
        <s:iterator value="pageBean">
                        
                        <tr>
                        <td>&nbsp;&nbsp;排序：&nbsp;<input type="button" value="销量"> &nbsp;<input type="button" value="价格">&nbsp;&nbsp;<input type="button" value="上架时间"></td>
                        <td  colspan="5" >
                      
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  产品中心&nbsp;&nbsp;
                        	共<FONT color="red"><s:property value="allRow"/></FONT>个商品&nbsp;|&nbsp;
                        	<FONT color="red"><s:property value="currentPage"/></FONT>/<FONT color="black"><s:property value="totalPage"/></FONT>
                      
                        	<s:if test="%{currentPage == 1}">
                        	<input type="button" value="上一页" disabled="disabled">
                        	</s:if>
                        <s:else>
                       
                        
                         <a href="Mobile_ListProductsToindex.action?page=<s:property value="%{currentPage-1}"/>"><input type="button" value="上一页"></a>
                        </s:else>
                        
                        <s:if test="%{currentPage != totalPage}">
                         <a href="Mobile_ListProductsToindex.action?page=<s:property value="%{currentPage+1}"/>"><FONT color="black"><input type="button" value="下一页"></FONT></a>

                        
           				</s:if>
           				<s:else>
           				<input type="button" value="下一页" disabled="disabled">
           				</s:else>
                        
                        </td>
                        
                        
                        </tr>
                        
                        </s:iterator>
       </table>
       </div>
       
        <table style=" text-align: center;">
 	 <s:iterator value="listMobile" var="mobile">
                       
                       <div class="one_mobile" >
                       <a target="_blank" href="Mobile_findMobileById.action?mobile.id=<s:property value="#mobile.id"/>"><img src="<s:property value="#mobile.pictrue" />" style="width:150px; height:150px"></a>
                              <br>
                              <s:property value="#mobile.brand"/> （<s:property value="#mobile.model"/>）<p>（<s:property value="#mobile.color"/>）
                              <br>
                                                                                          ￥<s:property value="#mobile.price"/>
                              <br>
                              <s:property value="#mobile.screen_size"/>英寸  
                       </div>                  
 	 </s:iterator>
</table>
         <br style="clear:both;" />
   </div>
 
    </div>   
 
 
  </div>
 <jsp:include page="bottom.jsp"></jsp:include>

</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加产品</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="css/addMobile.css">

<!-- 配置文件 -->
<!-- 配置文件 -->
<script type="text/javascript" src="./ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="./ueditor/ueditor.all.js"></script>
<!-- 语言包文件(建议手动加载语言包，避免在ie下，因为加载语言失败导致编辑器加载失败) -->
<script type="text/javascript" src="./ueditor/lang/zh-cn/zh-cn.js"></script>
<link rel="shortcut icon" href="images/icon1.png">
  </head>
  
  <body>
 <jsp:include page="top.jsp"></jsp:include>
 <div class="add_mobile">
 <form action="Mobile_upload.action" method="post" enctype="multipart/form-data" >  
   图　片：<input type="file" id="fileName" name="upload" placeholder="file">
     <input type="submit" value="上传" > 
 </form>
 <form action="Mobile_addMobile.action" method="post" >  
    品　　牌：<input type="text" id="mobile.brand" name="mobile.brand" placeholder=品牌>&nbsp;&nbsp;&nbsp;&nbsp;
    价　　格 ：<input   type="text" id="mobile.price" name="mobile.price" placeholder="价格"><p>
 网　　络：<input type="text" id="mobile.network_format" name="mobile.network_format" placeholder="网络">&nbsp;&nbsp;&nbsp;&nbsp;
 屏幕尺寸：<input type="text" id="mobile.screen_size" name="mobile.screen_size" placeholder="屏幕尺寸"><P>
 型　　号：<input type="text" id="mobile.model" name="mobile.model" placeholder="型号">&nbsp;&nbsp;&nbsp;&nbsp;
颜　　色：<input type="text" id="mobile.color" name="mobile.color" placeholder="颜色"><p>
上市时间：<input type="text" id="mobile.time_to_market" name="mobile.time_to_market" placeholder="上市时间">&nbsp;&nbsp;&nbsp;&nbsp;
 C　P　U：<input type="text" id="mobile.cpu" name="mobile.cpu" placeholder="CPU"><p>
相　　机：<input type="text" id="mobile.camera" name="mobile.camera" placeholder="相机">&nbsp;&nbsp;&nbsp;&nbsp;
R　A　M：<input type="text" id="mobile.ram" name="mobile.ram" placeholder="RAM"><p>
ROM：<input type="text" id="mobile.rom" name="mobile.rom" placeholder="ROM">&nbsp;&nbsp;&nbsp;&nbsp;

<center>
  <textarea rows="" cols="" id="container" name="mobile.discription"></textarea>
</center>
<script type="text/javascript">
    var editor = UE.getEditor('container');
</script>

   <input class="btn btn-primary" type="submit" value="提交"> <input class="btn btn-primary" type="reset" value="重置">
</form>
</div>
<jsp:include page="../bottom.jsp"></jsp:include>
  </body>
</html>

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
    
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/web_top.css" />
  </head>
  
  <body>
   <!--顶部导航栏 -->
	<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="brand" href="Mobile_ListProductsToindex.action">手机1号店</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="">
                <a href="Mobile_ListProductsToindex.action">首页</a>
              </li>
            <li class="">
                <a href="Mobile_Product_center.action">产品中心</a>
              </li>
             
             <li class="" style="margin-left: 310px;">
               <s:if test="null!=#session.username&&#session.identitys=='管理员'">
               <a href="./adminPage/admin_index.jsp">后台管理</a> 
               </s:if>
                <s:else>
               <a href=""></a>
               </s:else>
              </li>
               <li class="">
               <s:if test="null==#session.username||#session.username.isEmpty()">
               <a href="./login.jsp">登录</a> 
               </s:if>
               <s:else>
               <a href=""><%=session.getAttribute("username")%></a>
               </s:else>
              </li>
               <li class="">
                <a href="./register.jsp">注册</a> 
              </li>
               <li class="">
               <s:if test="null!=#session.username">
               <a href="User_logOut.action">注销</a>
                </s:if>
              </li>
              <li class="">
               <s:if test="null!=#session.username">
                <a href="User_personalCenter.action?user.id=<s:property value="#session.uid"/>">个人中心</a>
               </s:if></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
<!-- 图片轮换 -->
<div class="container-fluid">
  <div class="row-fluid">
 <div class="span2">
   <div id="nav_container">
		<ul>
				<li style="margin-top: 1.5px">				
					<a href="http://www.duice.net/html/list_622.html">网站首页</a>
				</li>
				<li style="margin-top: 1.5px">				
					<a href="http://www.duice.net/html/list_622.html">公司文化</a>
				</li>
				<li style="margin-top: 1.5px">				
					<a href="http://www.duice.net/html/list_622.html">产品展示</a>
				</li >
				<li style="margin-top: 1.5px">				
					<a href="http://www.duice.net/html/list_622.html">联系我们</a>
				</li>
				
				<li style="margin-top: 1.5px">				
					<a href="http://www.duice.net/html/list_622.html">产品展示</a>
				</li>
				<li style="margin-top: 1.5px">				
					<a href="http://www.duice.net/html/list_622.html">联系我们</a>
				</li>
				<li style="margin-top: 1.5px">				
					<a href="http://www.duice.net/html/list_622.html">产品展示</a>
				</li>
				<li style="margin-top: 2px">				
					<a href="http://www.duice.net/html/list_622.html">联系我们</a>
				</li>
			
	  </ul>
	</div>
	
	<script type="text/javascript">
	
	roller.init('nav_container','h',-200,0,100,20);
	roller.init('nav_container2','v',0,-45,100,20);
	roller.init('nav_container3','h',-200,-24,100,20);
	roller.init('nav_container4','v',-66,0,250,20);
	roller.init('nav_container5','v',0,-45,80,15);
	</script>
    </div>
    <div class="span10">
<div id="lofslidecontent45" class="lof-slidecontent">
<div class="preload"><div></div></div>

  <div class="lof-main-wapper">
  		<div class="lof-main-item">
        		<img src="images/791902news3.jpg" title="Newsflash 2" height="400px" width="900">           
                 <div class="lof-main-item-desc">
                <h3><a target="_parent" title="Newsflash 2" href="#">NewsProduct 1</a></h3>

                <p>The one thing about a Web site, it always changes! Joomla! makes it easy to add Articles, content,...</p>
             </div>
        </div> 
       <div class="lof-main-item">
        	<img src="images/435576news10.jpg" title="Newsflash 1" height="400px" width="900">            <div class="lof-main-item-desc">
                <h3><a target="_parent" title="Newsflash 1" href="#">NewsProduct 2</a></h3>
                <p>Joomla! makes it easy to launch a Web site of any kind. Whether you want a brochure site or you are...</p>

             </div>
        </div> 
       <div class="lof-main-item">
        	<img src="images/641906img1.jpg" title="Newsflash 3" height="400px" width="900">            <div class="lof-main-item-desc">
                <h3><a target="_parent" title="Newsflash 3" href="#">NewsProduct 3</a></h3>
                <p>With a library of thousands of free Extensions, you can add what you need as your site grows. Don't...</p>
             </div>
        </div> 
        <div class="lof-main-item">

        	<img src="images/416719news7.jpg" title="Newsflash 5" height="400px" width="900">            <div class="lof-main-item-desc">
                <h3><a target="_parent" title="Newsflash 5" href="#">NewsProduct 4</a></h3>
                <p>Joomla! 1.5 - 'Experience the Freedom'!. It has never been easier to create your own dynamic Web...</p>
             </div>
        </div> 
        
        <div class="lof-main-item">

        	<img src="images/416719news7.jpg" title="Newsflash 5" height="400px" width="900">            <div class="lof-main-item-desc">
                <h3><a target="_parent" title="Newsflash 5" href="#">NewsProduct 5</a></h3>
                <p>Joomla! 1.5 - 'Experience the Freedom'!. It has never been easier to create your own dynamic Web...</p>
             </div>
        </div> 
        <div class="lof-main-item">

        	<img src="images/416719news7.jpg" title="Newsflash 5" height="400px" width="900">            <div class="lof-main-item-desc">
                <h3><a target="_parent" title="Newsflash 5" href="#">NewsProduct 6</a></h3>
                <p>Joomla! 1.5 - 'Experience the Freedom'!. It has never been easier to create your own dynamic Web...</p>
             </div>
        </div> 
        	
  </div>
  <!-- END MAIN CONTENT --> 
    <!-- NAVIGATOR -->

  <div class="lof-navigator-outer">
  		<ul class="lof-navigator">
            <li>
            	<div>
                	<img src="images/lofthumbs/791902news3.jpg" height="50px" />
                	<h3> NewsProduct 1 </h3>
                  	<span>20.01.2010</span> - In id, mauris viverra asperiores, bibendum in id. Eu molestie. Ac sit eu...
                </div>    
            </li>
             <li>
             	<div>
                	<img src="images/lofthumbs/435576news10.jpg" height="50px" />
                 	<h3> NewsProduct 2 </h3>
                  	<span>20.01.2010</span> -In id, mauris viverra asperiores, bibendum in id. Eu molestie. Ac sit eu. ..
                </div>    
            </li>

            <li>
            	<div>
                    <img src="images/lofthumbs/641906img1.jpg" height="50px"/>
                    <h3> NewsProduct 3 </h3>
                	<span>20.01.2010</span> - In id, mauris viverra asperiores, bibendum in id. Eu molestie. Ac sit eu. ..
                </div>     
            </li>
            
           <li>
           		<div>
                    <img src="images/lofthumbs/416719news7.jpg" height="50px"/>
                    <h3> NewsProduct 4</h3>
                    <span>20.01.2010</span> - In id, mauris viverra asperiores, bibendum in id. Eu molestie. Ac sit eu. ..
                </div>
            </li>    
            <li>
           		 <div>
                 	<img src="images/lofthumbs/641906img1.jpg" height="50px"/>
                 	<h3> NewsProduct 5</h3>
                 	<span>20.01.2010</span> -In id, mauris viverra asperiores, bibendum in id. Eu molestie. Ac sit eu. ..
                 </div>   
            </li>
           <li>
           		<div>
                    <img src="images/lofthumbs/416719news7.jpg" height="50px"/>
                    <h3> NewsProduct 6</h3>
               		<span>20.01.2010</span> - In id, mauris viverra asperiores, bibendum in id. Eu molestie. Ac sit eu. ..
                </div>
            </li>     		
        </ul>
  </div>
 </div> 

    </div>
  </div>
</div>
 <script type="text/javascript">
	var _lofmain =  $('lofslidecontent45');
	var _lofscmain = _lofmain.getElement('.lof-main-wapper');
	var _lofnavigator = _lofmain.getElement('.lof-navigator-outer .lof-navigator');
	var object = new LofFlashContent( _lofscmain, 
									  _lofnavigator,
									  _lofmain.getElement('.lof-navigator-outer'),
									  { fxObject:{ transition:Fx.Transitions.Quad.easeInOut,  duration:800},
									 	 interval:3000,
							 			 direction:'opacity' } );
	object.start( true, _lofmain.getElement('.preload') );
</script>















<!-- 定义第二个导航栏-->
<div class="nav2">
<nav class="navbar navbar-inverse">
 <div class="navbar-inner">
       
            <ul class="nav">
              <li class="">
                <a href="Mobile_ListProductsToindex.action">首页</a>
              </li>
              <li class="">
                <a href="Mobile_Product_center.action">产品中心</a>
              </li>
              <li class="">
                <a href="Mobile_listNewProduct.action">新品上市</a>
              </li>
           
            </ul>
          </div>
        
</nav>
</div>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>大学生交友网</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
  body{
      margin: 0px;padding: 0px;
    }
    #top{
        margin: 5px auto;
        width:950px; 
        height:560px; 
        background:white;
        border: 1px solid #ccc;
      }
      
#top table tr td a{
   text-decoration: none;;
   color: white;
   font-weight: bold;
   text-shadow: white;
   padding: 12;
}
#top table tr td a:hover{
  background-image: url("images/bg_register_menu.png");
  
}
 #side{background-color:#FFFFFF;  height: 330px; width: 650px; float: left; }
 #side_right{ background:#F0EDEB; height: 330px; width: 87%; margin-left: 120px; }
#main_side{ background-color:#FFFFFF; height: 400px; width: 640px; float: left; }
#main_side_right{   height: 400px; width: 87.5%; margin-left: 120px;  }
#banner {position:relative; width:650px; height:325px; border-right:1px solid #ccc;overflow:hidden;padding:2;}
#banner_list img {position:absolute;border:0px;height:326px;width: 650px;}
#banner ul {position:absolute;list-style-type:none;filter: Alpha(Opacity=80);opacity:0.8; border:1px solid #fff;z-index:1002;
			margin:0; padding:0; bottom:3px; right:5px;}
#banner ul li { padding:0px 8px;float:left;display:block;color:#FFF;border:#e5eaff 1px solid;background:#6f4f67;cursor:pointer}
#banner ul li.on { background:#FF00FF}
#main{
        margin: 5px auto;
        width:950px; 
        height:400px; 
        background:white;
        border: 1px solid #ccc;
      }
* {list-style-type:none; font-size:15px; text-decoration:none; margin:0; padding:0;}
.woaicss {width:650px; height:450px; overflow:hidden; margin:0px auto;}
.woaicss_title {width:640px; height:50px; background-color:#F0EDEB ; overflow:hidden;border: 1px solid #ccc;}
.woaicss_title li {display:block; float:left; margin:0 2px 0 0; display:inline; text-align:center;}
.woaicss_title li a {display:block; width:90px; heigth:54px; line-height:54px; color:#FF6EC7;}
.woaicss_title li a:hover {background-image:url("images/bg_register_menu.png"); text-decoration:none; color: white;}
.woaicss_con {display:block; width:640px; height:345px;  overflow:hidden;border: 1px solid #ccc;}
#bottom{
margin: 5px auto;
        width:950px; 
        height:350px; 
        background:white;
        border: 1px solid #ccc;
}
#con{ width:948px; height:300px;  position:relative; border:1px #666 solid; background-color:#FFFFFF; 
overflow:hidden;}
#con img{border:0px;width: 50px;height: 50px;}
#con ul{ position:absolute; margin:10px; top:0; left:0; padding:0;}
#con ul li{ width:100%;  border-bottom:1px #333333 dotted; padding:20px 0; overflow: }
#con ul li a{ float:left;  border:1px #333333 solid; padding:2px;}
#con ul li p{ margin-left:68px;line-height:1.5;  padding:10px;}
#footer{
margin: 5px auto;
        width:950px; 
        height:200px; 
        background:white;
   border: 1px solid #ccc;
}
#main_bottom{
margin: 5px auto;
        width:950px; 
        height:200px; 
        background:white;
   border: 1px solid #ccc;

}
#friendship_link ul{
list-style: none;
}
#friendship_link ul li{
  float: left;
  padding:15;
}
#friendship_link ul li a{
  color: #FF6EC7 ;
}
#layout { width:600px;  padding-bottom:20px; overflow:auto; zoom:1;}
#layout ul li { width:160px; float:left; margin:20px 0 0px 20px; display:inline; text-align:center;}
#layout ul li a { display:block;}
#layout ul li a img { padding:1px; border:1px solid #e1e1e1; margin-bottom:3px; display:block;}
#layout ul li a:hover img { padding:0px; border:2px solid #f98510;}
</style>
 <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">

//图片轮播
 var t;
    var i=0;
    function showAuto(){
     if(i>2){
         i=0
     } else{
         ++i;
     }
   $("#banner_list img").filter(":visible").hide();
   $("#banner_list img").eq(i).fadeIn(1000);   
   $("#banner li").removeClass();
   $("#banner li").eq(i).addClass("on");
    }
    $(function(){
    $("#banner_list img:not(:first-child)").hide();
  $("#banner li").click(function(){
  i=$(this).text()-1;
   $("#banner_list img").filter(":visible").fadeOut(1000);
   $("#banner_list img").eq(i).fadeIn(1000);
   $("#banner li").removeClass();
   $("#banner li").eq(i).addClass("on");   
  })
  t=setInterval("showAuto()",2000);
  $("#banner").hover(function(){clearInterval(t)},function(){
      t=setInterval("showAuto()",2000);
  });
  //微博墙
  var scrtime;
 	$("#con").hover(function(){
		clearInterval(scrtime);
	
	},function(){
	
	scrtime = setInterval(function(){
		var $ul = $("#con ul");
		var liHeight = $ul.find("li:last").height();
		$ul.animate({marginTop : liHeight+40 +"px"},1000,function(){
		
		$ul.find("li:last").prependTo($ul)
		$ul.find("li:first").hide();
		$ul.css({marginTop:0});
		$ul.find("li:first").fadeIn(1000);
		});	
	},3000);
	
	}).trigger("mouseleave");
    });
    //会员
    function woaicssq(num){
	for(var id = 1;id<=4;id++)
	{
	var MrJin="woaicss_con"+id;
	if(id==num)
	document.getElementById(MrJin).style.display="block";
	else
	document.getElementById(MrJin).style.display="none";
	}
	if(num==1) 
	document.getElementById("woaicsstitle").className="woaicss_title woaicss_title_bg1";
	if(num==2)
	document.getElementById("woaicsstitle").className="woaicss_title woaicss_title_bg2";
	if(num==3)
	document.getElementById("woaicsstitle").className="woaicss_title woaicss_title_bg3";
	if(num==4)
	document.getElementById("woaicsstitle").className="woaicss_title woaicss_title_bg4";
	}
</script>
  </head>
  
  <body>
     <div id="top">
     <div>
       <img src="images/register_top.png" style="height: 100;width: 600;"/>
       游客欢迎您&nbsp;&nbsp;|<a href="login.jsp" style="text-decoration: none;color: #FF6EC7">登陆网站</a>|<a href="register.jsp" style="text-decoration: none;color: #FF6EC7">免费注册</a>
     </div>
     <div>
        <table>
          <tbody>
            <tr>
            <td style="background-image: url('images/register_menu_bg.png');color: white; font-weight: bold;text-decoration: none; padding: 14;width: 950;">
              <a href="#">网站首页</a>
              <a href="#">交友中心</a>
              <a href="#">高级搜索</a>
              <a href="#">会员列表</a>
              <a href="#">搜索朋友</a>
              <a href="#">搜索朋友</a>
              <a href="#">在线会员</a>
              <a href="#">心情日记</a>
              <a href="#">心情微博</a>
            </td>
            </tr>
          </tbody>
        </table>
     </div>
     <div style="border-top: 1px solid #ccc;height: 50;background-color: #FFFFF5;border-bottom:1px solid #ccc;padding:10 0 10 10;">
      <label style="font-size: 14;">我要找:</label> 
      <select style="padding:2;border:1px solid #ccc;" name="friends">
          <option value="0">男会员
          </option>
          <option value="0">女会员
          </option>
       </select>
     <label style="font-size: 14;">年龄:</label> 
     <select style="padding:2;border:1px solid #ccc;" name="age">
     <option value="0">
        请选择
     </option>
     </select>
     ~
     <select style="padding:2;border:1px solid #ccc;" name="age">
     <option value="0">
        请选择
     </option>
     </select>
     <label style="font-size: 14;">地区:</label> 
     <select style="padding:2;border:1px solid #ccc;" name="address">
     <option value="0">
        请选择
     </option>
     </select>
     &nbsp;&nbsp;&nbsp;
     <input  type="checkbox" value=""/><label style="font-size: 14;">有形象照片</label>
     
     <img src="images/serch.png" style="position: relative;top:10;cursor: pointer;"/>
    <label style="font-size: 15;color:#FF6EC7 ;"><s:property value="#session.Onlines"/>人在线</label> 
     </div>
    <div  id="side">
     
     <div id="banner">
    <ul>
        <li class="on">1</li>
        <li>2</li>
        <li>3</li>
        <li>4</li>
    </ul>
   <div id="banner_list">
        <img src="images/l1.jpg" title="第一张图片" />
        <img src="images/l2.jpg" title="第二张图片" />
        <img src="images/l3.jpg" title="第三张图片" />
        <img src="images/l4.jpg" title="第四张图片" />
   </div>
</div>
</div>
<div  id="side_right">

<form action="member/Login.action" method="post" name="login">
<br>
  &nbsp;<label>马上注册,开启你的朋友之旅!</label>
  <br><br><br>
  <p>
    &nbsp;&nbsp;帐&nbsp;&nbsp;号:<input type="text" name="name" style="border: 1px solid #CCC8C4;width: 150px;height: 30px;" id="name"/>
  </p>
  <br>
  <p>
    &nbsp;&nbsp;密&nbsp;&nbsp;码:<input type="text" name="password" style="border: 1px solid #CCC8C4;width: 150px;height: 30px;"/>
  </p>
  <br>
  <p>
    &nbsp;&nbsp;验证码:<input type="text" name="authCode" style="border: 1px solid #CCC8C4;width: 60px;height: 30px;"/>
    <img src="AuthImg" height="20px;" width="60px;" /><a href="javascript:location.reload();">看不清？</a>
  <br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" style="color:#FF6EC7; ">忘记密码?点击取回密码</a>
  </p>
  <br>
  <p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="javascript:document.login.submit()" style="background-color: #D83473;color: white;padding:7px;" >登录</a>
   &nbsp;&nbsp;<a href="register.jsp" style="background-color: #D83473;color: white;padding:7px;">免费注册</a>
  </p>
 <p>
   <font color="red">
     &nbsp;&nbsp;&nbsp;&nbsp;<s:actionmessage/>
   </font>
  </p>
  </form>
  <br>
  
  </div>
   </div>
  <div id="main">
  <div id="main_side">
   <div class="woaicss" >
	<ul class="woaicss_title woaicss_title_bg1" id="woaicsstitle">
		<li><a href="#" target="_blank" onmouseover="javascript:woaicssq(1)">最新会员</a></li>
		<li><a href="#" target="_blank" onmouseover="javascript:woaicssq(2)">推荐男会员</a></li>
		<li><a href="#" target="_blank" onmouseover="javascript:woaicssq(3)">推荐女会员</a></li>		
	</ul>
	<div class="woaicss_con" id="woaicss_con1" style="display:block;">
		<div id="layout">
<ul>
<s:iterator value="#session.members" id="list">
<li><a href="javascript:alert('请先登录')"><img src="<s:property value='#list.photo'/>" width="150" height="100" /><s:property value="#list.nickname"/></a></li>
</s:iterator>
</ul>
</div>	
	</div>
	<div class="woaicss_con" id="woaicss_con2" style="display:none;">
	<div id="layout">
<ul>
<s:iterator value="#session.Boymembers" id="list">
<li><a href="javascript:alert('请先登录')"><img src="<s:property value='#list.photo'/>" width="150" height="100" /><s:property value="#list.nickname"/></a></li>
</s:iterator>
</ul>
</div>		
	</div>
	<div class="woaicss_con" id="woaicss_con3" style="display:none;">
		<div id="layout">
<ul>
<s:iterator value="#session.Girlmembers" id="list">
<li><a href="javascript:alert('请先登录')"><img src="<s:property value='#list.photo'/>" width="150" height="100" /><s:property value="#list.nickname"/></a></li>
</s:iterator>
</ul>
</div>			
	</div>
</div>	
  </div>
  <div id="main_side_right">
    <div style="border: 1px solid #ccc;height: 50;">
    <br>
     <span style="padding:10 0 0 10;color:#D83473;font-weight: bold; ">心情微博</span>
    </div>
    <div style="padding:15;height: 130px;">
      
     <s:iterator value="#session.weiboList" id="list">
     <p>
      &nbsp;&nbsp;<a href="#"><s:property value="#list.membername"/></a>:&nbsp;&nbsp;<s:property value="#list.content"/>
    </p>
    </s:iterator>
    </div>
    <div style="border: 1px solid #ccc;height: 50;">
    <div style="padding:20;color:#D83473;font-weight: bold; ">新闻资讯</div>
    <div>
    <a href="#">习近平今日采访日本 03-23</a>
    <br>
    <a href="#">习近平当选国家主席 03-23</a>
    </div>
    </div>
  </div>
  </div>
  <div id="bottom">
   <div style="height: 50;border: 1px solid #ccc;background-color: #FF6EC7;">
   <div style="padding:15;">
   <font style="color: white;font-weight: bold;">心情微博墙</font>
   </div>
   </div>
  <div id="con">
  <ul>
    <li> <a href="#"><img src="http://c.zhongsou.com/zsimg/images3.jyimg.com/w4/global/cms/uploadfile/2010/0613/20100613053543654.jpg" /></a>
        <p class="vright">王泡小泡：姐妹儿发短信来，说：在凤凰，苗人表演火炬烧JJ，沿着众人疯跑，群情激烈，无数女人手伸进裤内验证，此般特技谋生的故事充满神秘的冷血喜感。我看到短信，想了大约两秒钟，给她回复：是硬的吗？ </p>
    </li>
    <li> <a href="#"><img src="http://c.zhongsou.com/zsimg/images2.jyimg.com/w4/global/cms/uploadfile/2010/0613/20100613053501714.jpg" /></a>
        <p class="vright">抽牙：你们班想虐待我们足球？！你当我们垃圾哦！没这么容易，哈哈2比2打平，激死你们！很不爽？发声了？不顺就发火吧，发火吧。看你们发过也几爽下。 </p>
    </li>
    <li> <a href="#"><img src="http://c.zhongsou.com/zsimg/images2.jyimg.com/w4/global/cms/uploadfile/2010/0613/20100613053334639.jpg" /></a>
        <p class="vright">新快杨峻：珠海航展，一快60岁美国老头，驾驶着老爷机，在空中做出低空倒飞冲场、极速拉升、螺旋升空等高难度动作，我真担心……他下来后告诉我，这种激情和快乐是无与伦比的。爷，俺畏高……体会不到…… </p>
    </li>
    <li> <a href="#"><img src="http://c.zhongsou.com/zsimg/images3.jyimg.com/w4/global/cms/uploadfile/2010/0613/20100613053150676.jpg" /></a>
        <p class="vright">走筆天涯：广发卡一面。四个人的无领导小组讨论还被我们给搞砸了，哎……找工作这P事儿先放放吧，看看书过过自己的日子~~ </p>
    </li>
  </ul>
</div>
  </div>
  <div id="footer">
     <div style="height: 50;border: 1px solid #ccc;background-color: #FF6EC7;">
   <div style="padding:15;">
   <font style="color: white;font-weight: bold;">最近在线好友</font>
   </div>
   </div>
   <div style="padding:5 0 0 90;">
  <div id="colee_left" style="overflow:hidden;width:750px;padding:3;">
<table cellpadding="0" cellspacing="0" border="0">
<tr><td id="colee_left1" valign="top" align="center">
<table cellpadding="2" cellspacing="0" border="0">
<tr align="center">
<s:iterator value="#session.members" id="list">
<td><img src="<s:property value='#list.photo'/>" width="170" height="130"></td>
</s:iterator>
</tr>
</table>
</td>
<td id="colee_left2" valign="top"></td>
</tr>
</table>
</div>
</div>
  </div>
  <script>
//使用div时，请保证colee_left2与colee_left1是在同一行上.
var speed=30//速度数值越大速度越慢
var colee_left2=document.getElementById("colee_left2");
var colee_left1=document.getElementById("colee_left1");
var colee_left=document.getElementById("colee_left");
colee_left2.innerHTML=colee_left1.innerHTML
function Marquee3(){
if(colee_left2.offsetWidth-colee_left.scrollLeft<=0)//offsetWidth 是对象的可见宽度
colee_left.scrollLeft-=colee_left1.offsetWidth//scrollWidth 是对象的实际内容的宽，不包边线宽度
else{
colee_left.scrollLeft++
}
}
var MyMar3=setInterval(Marquee3,speed)
colee_left.onmouseover=function() {clearInterval(MyMar3)}
colee_left.onmouseout=function() {MyMar3=setInterval(Marquee3,speed)}
</script>
<div id="main_bottom">
     <div style="height: 50;border: 1px solid #ccc;background-color: #FF6EC7;">
     <div style="padding:15;">
     <font style="color: white;font-weight: bold;">友情链接</font>
     </div>
     </div>
     <div id="friendship_link">
       <ul>
         <li><a href="#">交友网</a></li>
         <li><a href="#">戒指</a></li>
         <li><a href="#">搭配网</a></li>
         <li><a href="#">大学生社区</a></li>
         <li><a href="#">f1在线代理</a></li>
         <li><a href="#">沈阳电大</a></li>
         <li><a href="#">圣瓦伦丁</a></li>
         <li><a href="#">广东婚恋网</a></li>
         <li><a href="#">网络红人</a></li>
       </ul>
     </div>
     <div>
       <img src="images/footer.png"/>
      </div>
</div>
 <div style="background-color: #F9F2E7;width: 100%;height: 150;margin: 0;" align="center">
          <br><br>
          <table>
            
            <tbody>
              <tr>
                <td >
                
                    <a href="#" style="text-decoration: none;color: #5E5E5E">网站介绍</a>&nbsp;-
                     <a href="#" style="text-decoration: none;color: #5E5E5E">联系我们</a>&nbsp;-
                     <a href="#" style="text-decoration: none;color: #5E5E5E">免责声明</a>&nbsp;-
                     <a href="#" style="text-decoration: none;color: #5E5E5E">交友须知</a>&nbsp;-
                     <a href="#" style="text-decoration: none;color: #5E5E5E">隐私保护</a>&nbsp;-
                     <a href="#" style="text-decoration: none;color: #5E5E5E">注册条款</a>&nbsp;-
                     <a href="#" style="text-decoration: none;color: #5E5E5E">返回首页</a>
                </td>
              
              </tr>
              <tr>
              <tr>
                 
                  <td style="color: #5E5E5E">
                      &nbsp;&nbsp;&nbsp;&nbsp;商务合作&nbsp;&nbsp;&nbsp;&nbsp;QQ:1020304033&nbsp;&nbsp;&nbsp;&nbsp;173258447@qq.com
                  </td>
              
              </tr>
              <tr>
              <tr>
                <td style="color: #5E5E5E">
                    中国大学生交友网 版权所有 &copy; wei 粤ICP备11041366号-1
                
                </td>
              </tr>
            </tbody>
          </table>
        </div>
  </body>
</html>

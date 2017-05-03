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
        height:1200px; 
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
#side{ background: #FFFFFF; height: 400px; width: 350px; float: left; }
  #main{ background: #FFFFFF; height:400px; width: 87.3%; margin-left: 120px; }
  #layout { width:390px;  padding-bottom:20px; overflow:auto; zoom:1;}
#layout ul li { width:72px; float:left; margin:20px 0 0px 20px; display:inline; text-align:center;}
#layout ul li a { display:block;}
#layout ul li a img { padding:1px; border:1px solid #e1e1e1; margin-bottom:3px; display:block;}
#layout ul li a:hover img { padding:0px; border:2px solid #f98510;}

</style>

  </head>
  
  <body>
    <div id="top">
     <div>
       <img src="images/register_top.png" style="height: 100;width: 600;"/>
       欢迎您:<s:property value="#session.memberinfo.nickname"/>&nbsp;&nbsp;|<a href="login.jsp" style="text-decoration: none;color: #FF6EC7">登陆网站</a>|<a href="register.jsp" style="text-decoration: none;color: #FF6EC7">免费注册</a>
     </div>
     <div>
        <table>
          <tbody>
            <tr>
            <td style="background-image: url('images/register_menu_bg.png');color: white; font-weight: bold;text-decoration: none; padding: 14;width: 950;">
              <a href="member/activity.jsp">网站首页</a>
              <a href="member/memberCenter.jsp">交友中心</a>
              <a href="#">高级搜索</a>
              <a href="member/memberList.jsp">会员列表</a>
             <a href="member/boyFriendList.jsp">搜索好友(boy)</a>
              <a href="member/girlFriendList.jsp">搜索好友(girl)</a>
               <a href="member/onLineMembers.jsp">在线会员</a>
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
     <div>
       <img src="images/wb_bg.png" width="950px;" height="120px;"/>
     </div>
     <div>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="images/thing.png"/>
     </div>
     <div>
     <s:form action="member/weibo.action" name="box">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;
       
       <textarea rows="5" cols="70" style="border: 1px solid #ccc;" name="content"></textarea>
       <div align="right">
    <a href="javascript:document.box.submit()"><img src="images/gb_bg.png"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             </div>
       </s:form>
     </div>
    
    <div style="border-top: 1px solid #ccc;height: 20;background-color:#fff7fa;border-bottom:1px solid #ccc;padding:10 0 10 10;">
     &nbsp;&nbsp;&nbsp;&nbsp;<font style="color: #FF6EC7">当前热点</font> 
    </div>
    <div id="side">
    <div style="border-bottom: 1px solid #ccc;padding-left:  20px;">
    <img src="images/t1.png"/>
    </div>
    <div id="layout">
<ul>
<s:iterator value="#session.members" id="list">
<li><a href=""><img src="<s:property value='#list.photo'/>" width="70" height="70"/><s:property value="#list.nickname"/></a></li>
</s:iterator>
</ul>
</div>
         
     </div>
	<div id="main">
 		<div style="border-bottom: 1px solid #ccc;padding-left:  20px;">
      <img src="images/t2.png"/>
      </div>
  <div id="colee_bottom" style="overflow:hidden;height:323px;width:580px;">
<div id="colee_bottom1">

  <table border="1px" cellspacing="0" width="580">
    <tbody>
    <tr>
      <td align="center" style="background-color:#fff7fa;" height="30">
      发言人
      </td>
      <td align="center" style="background-color:#fff7fa;">
      
      内容
      </td>
    </tr>
    <s:iterator value="#session.weiboList" id="list">
      <tr>
               <td height="50">
                <s:property value="#list.membername"/>
               </td>  
               <td>
               <s:property value="#list.content"/>
               </td>    
      </tr>
      </s:iterator>
    </tbody>
  
  </table>
</div>
</div>
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

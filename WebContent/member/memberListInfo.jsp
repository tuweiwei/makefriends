<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
        height:900px; 
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
#side { background: #FFFFFF; height: 300px; width: 320px; float: left; padding-left: 50px;padding-top: 20px;}
#side1 { background: #FFFFFF; height: 300px; width: 320px; float: right; padding-left: 80px;padding-top: 20px;}
#main { background: #FFFFFF; height: 300px; margin:0 120px; padding-left: 50px;padding-top: 20px;}
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
              <a href="member/myDiary.action">心情日记</a>
              <a href="member/lookweibo.action">心情微博</a>
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
     <s:iterator value="#session.memberListInfo" id="list">
     <div id="side">
     <img  src="<s:property value='#list.photo'/>" width="200" height="200"/>
     </div>
  <div id="side1">
  <font size="4">
  用户账号:<s:property value="#list.name"/>
  <br><br>
  用户昵称:<s:property value="#list.nickname"/>
  <br><br>
  学历:<s:property value="#list.degree"/>
  <br><br>
  籍贯:汉族
  <br><br>
  <a href="member/addAttion.action?attentionname=<s:property value='#list.name'/>" style="background-color: #D83473;color: white;padding:7px; text-decoration: none;">加入关注</a>
  <br><br>
  <font style="color: red;" size="4">
  <s:actionmessage/>
  </font>
  </font>
  </div>
  <div id="main">
  <font size="4">
交友ID:<s:property value="#list.id"/>
  <br><br>
  性别:<s:property value="#list.sax"/>
  <br><br>
  身高:<s:property value="#list.height"/>CM
  <br><br>
  体重:<s:property value="#list.weight"/>KG
  <br><br>
  所在地区:<s:property value="#list.address"/>
</font>
   </div>
   </s:iterator>
   <div style="border: 1px solid #ccc; width: 930px;height: 35px;padding-left: 20px;background-color: #FF6EC7;padding-top: 15px;">
    
    联系该会员
   </div>
   <div style="border: 1px solid #ccc; width: 800px;height: 50px;padding-left: 150px;">
   
    <img src="images/dzf.png"  style="cursor: pointer" onclick="javascript:alert('已经向此好友问好了,此好友感谢您的问候')"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img src="images/fx.png" style="cursor: pointer" onclick="location.href='member/writeBox.jsp'"/>
    
   </div>
   <div style="border: 1px solid #ccc; width: 930px;height: 30px;padding-left: 20px;background-color: #FF6EC7;padding-top: 15px;">
    <br>
    
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

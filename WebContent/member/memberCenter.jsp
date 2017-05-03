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
        height:960px; 
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
#side{background-image: url("images/side_bg.png");  height: 630px; width: 170px; float: left; border: 1px solid #ccc;}
 #side_right{ background:#FFFFFF; height: 300px; width: 87%; margin-left: 120px; }
 #side_right #side_right_left{background: #FFFFFF; height: 300px; width: 220px; float: left; border-bottom: 1px solid #ccc;}
 #side_right #side_right_right{background: #FFFFFF; height: 300px; width: 350px; float: right;border-bottom: 1px solid #ccc;border-right:1px solid #ccc; }
 #side_right #side_right_main{background: #FFFFFF; height: 300px; margin:0 120px;border-bottom: 1px solid #ccc;}
 #side_bottom{background:#FFFFFF; height: 330px; width: 774px; margin-left: 170px;border: 1px solid #ccc;}
 #side_bottom #bottom_left{background: #FFFFFF; height: 330px; width: 370px; float: left;}
 #side_bottom #bottom_right{background: #FFFFFF; height: 330px; width: 84%; margin-left:120px;} 
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
       欢迎您:&nbsp;&nbsp;<s:property value="#session.memberinfo.nickname"/>|<a href="#" style="text-decoration: none;color: #FF6EC7">交友中心</a>|<a href="main.jsp" style="text-decoration: none;color: #FF6EC7">退出登录</a>
     </div>
     <div>
        <table>
          <tbody>
            <tr>
            <td style="background-image: url('images/register_menu_bg.png');color: white; font-weight: bold;text-decoration: none; padding: 14;width: 950;">
              <a href="member/activity.jsp">网站首页</a>
              <a href="member/memberCenter.jsp">交友中心</a>
              <a href="">高级搜索</a>
              <a href="member/memberList.jsp">会员列表</a>
              <a href="member/boyFriendList.jsp">搜索朋友</a>
              <a href="member/girlFriendList.jsp">搜索朋友</a>
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
    <label style="font-size: 15;color:#FF6EC7 ;">700人在线</label> 
     </div>
     <div id="side" align="center">
    <a href="#"><img src="images/my_friend.png"/></a>  
    <br>
    <a href="member/memberinfo.jsp"><img src="images/side_zh.png"/></a>
    <br>
    <a href="member/modifypassword.jsp"><img src="images/side_password.png"/></a>
    <br>
    <a href="member/advertiseRegister.jsp"><img src="images/side_register.png"/></a>
    <br>
    <a href="member/pointchange.jsp"><img src="images/side_tg.png"/></a>
    <br>
    <a href="#"><img src="images/side_hd.png"/></a>
    <br>
    <a href="member/receiveBox.action"><img src="images/side_email.png" /></a>
    <br>
   <a href="member/myAttention.action"><img src="images/side_gz.png" /></a>
    <br>
    <a href="member/whoLookme.action"><img src="images/side_look.png" /></a>
     <br>
     <a href="member/meLookwho.action"><img src="images/side_looks.png" /></a>
     <br>
     <a href="#"><img src="images/side_wszl.png" /></a>
     <br>
     <a href="member/myPhoto.jsp"><img src="images/side_photo.png" /></a>
     <br>
     <a href="member/photoAlbum.action"><img src="images/side_xc.png" /></a>
     <br>
     <a href="member/modifyMemberinfo.jsp"><img src="images/side_bjzl.png" /></a>
     <br>
     <a href="#"><img src="images/side_jyyy.png" /></a>
     <br>
     <a href="member/myDiary.action"><img src="images/side_rj.png" /></a>
     <br>
     <a href="member/lookweibo.action"><img src="images/side_wb.png" /></a>
     <br>
     <a href="#"><img src="images/side_fw.png" /></a>
     <br>
     <a href="#"><img src="images/side_jf.png" /></a>
     <br>
     <a href="member/activity.jsp"><img src="images/side_back.png" /></a>
     </div>
     <div id="side_right">
     <div id="side_right_left">
     <br><br><br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <s:if test="#session.memberinfo.photo==null">
   <img src="images/no_photo.png" style="width: 111px;height: 135px;"/>  
     </s:if>
     <s:else>
     <img src="<s:property value='#session.memberinfo.photo'/>"  style="width: 111px;height: 135px;" />
     </s:else>
     </div>
     <div id="side_right_right">
     <br><br><br>
     交友ID:<s:property value="#session.memberinfo.id"/>
     <br><br>
     收到的新问候:1条
     <br><br>
     会员组:普通会员
     </div>
     <div id="side_right_main">
     <br><br><br>
     欢迎您:<s:property value="#session.memberinfo.nickname"/>
     <br><br>
     征友状态:征友中
     <br><br>
     积分:<s:property value="#session.memberinfo.point"/>
     <br><br>
     收到新邮件:0封
     </div>
     </div>
     <div id="side_bottom">
     <div id="bottom_left">
     <div style="height: 50px; width: 370px; border: 1px solid #ccc;">
     <br>
     &nbsp;&nbsp;谁看过我
     </div>
     <div style="height: 275px; width: 370px; border: 1px solid #ccc;">
     <div id="layout">
<ul>
<s:iterator value="#session.whoLookmeList" id="list">
<li><a href="member/memberListInfo.action?membername=<s:property value='#list.name'/>"><img src="<s:property value='#list.photo'/>" width="70" height="70"/><s:property value="#list.nickname"/></a></li>
</s:iterator>
</ul>
</div>
     </div>
     
     </div>
     <div id="bottom_right">
     <div style="height: 50px; width: 652px; border: 1px solid #ccc;">
     <br>
     &nbsp;&nbsp;我看过谁
     </div>
      <div style="height: 275px; width: 652px; border: 1px solid #ccc;">
      <div id="layout">
      <ul>
<s:iterator value="#session.meLookwhoList" id="list">
<li><a href="member/memberListInfo.action?membername=<s:property value='#list.name'/>"><img src="<s:property value='#list.photo'/>" width="70" height="70"/><s:property value="#list.nickname"/></a></li>
</s:iterator>
</ul>
      </div>
     </div>
     </div>
       
     </div>
     </div>
     <div style="background-color: #F9F2E7;width: 100%;height: 150;margin: 0;" align="center">
          <br><br>
          <table>
            
            <tbody>
              <tr>
                <td>
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

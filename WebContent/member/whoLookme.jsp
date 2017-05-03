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
 #side_right{ background:#FFFFFF; height: 630px; width: 87%; margin-left: 120px; }
 #side_right table tr td a{
 color: purple;
 }
 #side_right table tr td a:hover{
 color: black;
 text-decoration: underline;
 background-image: none;
 
 
 }
 #shows a{
 color: purple;
 text-decoration: none;
 }
 #shows a:hover{
 color: black;
 text-decoration: underline;
 background-image: none;
 }
 #topmenu a{
    text-decoration: none;
 }
 #topmenu a:hover{
    background-color: #e0ded2;
    padding: 15px;
    color: black;
 }
 #memberinfo{padding-left: 80px;}
 #memberinfo table tr .td{
 background: none repeat scroll 0 0 #fffafc;
 width:150px;
    color: #333333;
    padding: 5 45 5 25;
 }
 #memberinfo table tr td a{
  padding-left: 0;
 }
 #memberinfo table tr td a:hover{
  background-color: #FFFFFF;
  padding: 0;
 }
</style>
  </head>
  
  <body>
    <div id="top">
     <div>
       ro<img src="images/register_top.png" style="height: 100;width: 600;"/>
       欢迎您:&nbsp;&nbsp;<s:property value="#session.memberinfo.nickname"/>|<a href="#" style="text-decoration: none;color: #FF6EC7">交友中心</a>|<a href="../main.html" style="text-decoration: none;color: #FF6EC7">退出登录</a>
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
     <div style="width: 830px;height: 50px;background-image: url('images/member_bg.png')">
     <div align="right" style="font-weight:bold; color:#333;padding:15px;" id="topmenu">
   		<a href="member/whoLookme.action" style="background-color: #e0ded2;padding: 15px;color: black;">谁看过我</a>&nbsp;&nbsp;&nbsp;&nbsp;  
   		<a href="member/meLookwho.action" >我看过谁</a>
     </div>
     </div>
     <br>
     <div style="border: 1px solid #ccc;width:760px;height: 50px;margin-left: 60px;background-color: #E9C2A6;">
     <br>
     &nbsp;&nbsp;谁浏览过我的资料共浏览过有<font style="color: red;"><s:property value="#session.whoLookmeListCount"/></font>个人
     </div>
     <div>
        <table>
          <tbody>
          <s:if test="#session.whoLookmeList==null">
          <br>
           <tr>
             <td style="padding-left: 50px;">
             <font style="color: red">
              目前还，没有人看您的资料
             </font>
             </td>
           </tr>
          </s:if>
          <s:else>
          <s:iterator value="#session.whoLookmeList" id="list">
            <tr>
            <td>
            <input type="checkbox" name="ids"/>
            </td>
            <td>
            <img src="<s:property value='#list.photo'/>" style="width: 111px;height: 135px;"/>  
            </td>
            <td style="background-color: #F9F2E7;width: 627px;">
            &nbsp;&nbsp;&nbsp;&nbsp;<s:property value="#list.nickname"/> &nbsp;&nbsp;<s:property value="#list.address"/>
            <br>
            <br>
            <div align="right">
            <a href="member/writeBox.jsp">[写信件]</a>
            <a href="member/deleteWhoLookMe.action?lookname=<s:property value='#list.name'/>">[删除记录]</a>
            </div>
            </td>
            </tr>
            </s:iterator>
            </s:else>
          </tbody>
       </table>
     <div style="margin-left: 530px;" id="shows">
       <a href="#">[首页]</a>
       <a href="#">[上一页]</a>
       <a href="#">[下一页]</a>
       <a href="#">[最后一页]</a>
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

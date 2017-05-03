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
<script type="text/javascript" src="js/common.js" ></script>
    <script type="text/javascript">
     function delMessage(){
				cCount = getCheckedCount("ids");
				if (cCount == 0){
					alert("请至少一条信息!");
					return;
				}
				if (confirm("确定删除吗？")==false){
					return false;
				}
				document.forms.inboxForm.action="<%=basePath%>member/deleteEmail.action";
				document.forms.inboxForm.submit();	
			}	
    
    </script>
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
 #advertise{
 padding-left: 35px;
 margin-left: 35px;
 }
 #advertise table{
  border: 1px solid #ccc;
  width: 750px;
  text-align: center;
 }
 #advertise table tr .cstd{
 background-color: #E9C2A6;
 height: 50px;
 }
 #top #advertise table tr td a{
 text-decoration: none;
 color: purple;
 }
 #top #advertise table tr td a:hover{
 text-decoration: underline;
 color: black;
 background-image: none;
 }
</style>
  </head>
  
  <body>
    <div id="top">
     <div>
       <img src="images/register_top.png" style="height: 100;width: 600;"/>
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
   		<a href="member/receiveBox.action" >会员收件箱</a>&nbsp;&nbsp;&nbsp;&nbsp;  
   		<a href="member/sendBox.action" style="background-color: #e0ded2;padding: 15px;color: black;">会员发件箱</a>
   		&nbsp;&nbsp;&nbsp;&nbsp;
   		<a href="member/writeBox.jsp" >写信件</a>
     </div>
     </div>
     <br><br>
     
     <div id="advertise">
     <s:if test="#session.sendEmailList==null">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <font style="color: red;size: 15">对不起,您暂时没有发送任何邮件.</font>
     </s:if>
     <s:else>
     <form name="inboxForm" method="post">
       <table cellspacing="0"  border="1">
        <tbody>
          <tr>
           <td class="cstd">
           选择
           </td>
           <td class="cstd">
           状态
           </td>
          <td class="cstd">
          收件人
          </td>
          <td class="cstd">
          发件时间
          </td>
          <td class="cstd">
          操作
          </td>
          </tr>
          <s:iterator value="#session.sendEmailList" id="list">
          <tr>
            <td>
            <input type="checkbox" name="ids" value="<s:property value='#list.id'/>"/>
            </td>
            <td>
            <img src="images/icon10.gif"/>
            </td>
            <td>
            <s:property value="#list.receiver"/>
            </td>
            <td>
            <s:property value="#list.time"/>
            </td>
            <td>
            <a href="member/emailDetail.action?id=<s:property value='#list.id'/>" >查看信件</a>
            </td>
          </tr>
          </s:iterator>
          <tr>
           <td colspan="3">
           信件类型:
           <img src="images/icon09.gif" />未读短信
		   <img src="images/icon10.gif" />已读短信
           </td>
           <td colspan="3">
           选择：<a href="javascript:selAllCheckbox('ids');" >全选</a>-
			   <a href="javascript:unselAllCheckbox('ids');" >取消</a>-
			   <a href="javascript:delMessage();">删除选中</a>
           </td>
          </tr>
        </tbody>
       </table>
       </form>
       </s:else>
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

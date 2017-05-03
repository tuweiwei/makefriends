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
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
    ul {
    list-style: none;
    background-image: url("images/register_menu_bg.png"); 
    }
    ul li{
    float: left;
    display:block;
    padding: 14;
    background-image: url("images/register_menu_bg.png"); 
    
    }
    ul li a{
      color: white;
    font-weight: bold;
    text-decoration: none;
    
    }
    ul li a:hover{
      
     background-image: url("images/bg_register_menu.png");
     padding: 13;
    
    }
    .border_radius{border-radius:5px;color:black;}
    .input_txt{width:200px;border:solid 1px #ccc;box-shadow:0 1px 10px rgba(0,0,0,0.1) inset;height:38px;text-indent:10px;}
    body{
      margin: 0px;padding: 0px;
    }
    #top{
        margin: 5px auto;
        width:950px; 
        height:150px; 
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
}
  </style>
  </head>
  
  <body>
   <div id="top">
     <div>
       <img src="images/register_top.png" style="height: 100;width: 600;"/>
                     游客,欢迎您&nbsp;&nbsp;|<a href="login.jsp" style="text-decoration: none;color: #FF6EC7">登陆网站</a>|<a href="register.jsp" style="text-decoration: none;color: #FF6EC7">免费注册</a>
     </div>
     <div>
        <table>
          <tbody>
            <tr>
            <td style="background-image: url('images/register_menu_bg.png');color: white; font-weight: bold;text-decoration: none; padding: 14;width: 950;">
              <a href="./index.jsp">首页</a>
              <a href="./member/memberCenter.jsp">交友中心</a>
              <a href="./member/weiBo.jsp">校园论坛</a>
              <a href="./member/memberList.jsp">校园新闻</a>
              <a href="./member/boyFriendList.jsp">资源平台</a>
              <a href="./member/girlFriendList.jsp">动漫资讯</a>
              <a href="./member/weiBo.jsp">就业创业</a>
              <a href="./member/myDiary.jsp">二手市场</a>
              <a href="./member/myDiary.jsp">关于我们</a>
              <a href="./member/myDiary.jsp">投诉建议</a>
            </td>
            </tr>
          </tbody>
        </table>
     </div>
     </div>
     <br><br><br><br><br>
     
     <div  style="width: 350;height: 450;margin: 0 0 0 300;">
     
       
      
     
     </div>
     <div style="width: 350;height: 600;margin: -540 0 0 800;" >
      
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

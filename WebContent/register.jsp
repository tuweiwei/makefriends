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
    
    <title>会员注册->基本信息填写</title>
    
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
    .input_txt{width:300px;border:solid 1px #ccc;box-shadow:0 1px 10px rgba(0,0,0,0.1) inset;height:38px;text-indent:10px;}
    body {
    font-size: 15;
	}
	body{
      margin: 0px;padding: 0px;
    }
    #top{
        margin: 5px auto;
        width:950px; 
        height:170px; 
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
  <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" src="js/register.js"></script>
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
             <a href="./member/activity.jsp">首页</a>
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
     <br><br>
     <div style="padding: 0 200 0 230;" id="div2">
       <img src="images/register_tishi.png"/>&nbsp;&nbsp;&nbsp;&nbsp;
       <img src="images/have_a_haoma.png" style="cursor: pointer;padding-left: 100" onclick="javascript:location.href='login.jsp'"/>
       <br><br>
         <s:form action="member/register.action" method="post" name="registerFrom">
       <div style="padding: 5 200 5 200;background-color: #FF6EC7;width: 480">
        账号信息带 * 的必须填写
       </div>
       <br><br>
       <div>
         <table>
           <tbody>
             <tr>
               <td >
                   <font color="red">*</font>用户账号:<input type="text" class="input_txt border_radius" id="name" name="memberinfo.name"/><span id="nameinfo"></span>
               </td>
             </tr>
             <tr><tr><tr>
           <tr>
               <td>
                   <font color="red">*</font>密&nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password" class="input_txt border_radius" id="pass" /><span id="passinfo"></span>
               </td>
             </tr>
               <tr><tr><tr>
           <tr>
               <td>
                   <font color="red">*</font>确认密码:<input type="password" class="input_txt border_radius" id="npass" name="memberinfo.password"/><span id="npassinfo"></span>
               </td>
             </tr>
             <tr><tr><tr>
             <tr>
             <td>
             <font color="red">*</font>昵&nbsp;&nbsp;&nbsp;&nbsp;称:<input type="text" class="input_txt border_radius" id="nickname" name="memberinfo.nickname"/><span id="nicknameinfo"></span>
             </td>
             </tr>
           <tr><tr><tr>
             <tr>
             <td>
             <font color="red">*</font>联系邮箱:<input type="text" class="input_txt border_radius" id="email" name="memberinfo.email"/><span id="emailinfo"></span>
             </td>
             </tr>
             <tr><tr><tr>
             <tr>
             <td>
             <font color="red">*</font>验&nbsp;证&nbsp;码:<input type="text" style="width:100px;border:solid 1px #ccc;box-shadow:0 1px 10px rgba(0,0,0,0.1) inset;height:38px;text-indent:10px;border-radius:5px;color:black;" id="code" name="code"/><span id="codeinfo"></span>
             <img src="AuthImg" height="20px;" width="60px;" /><a href="javascript:location.reload();">看不清？</a>
             </td>
             </tr>
           </tbody>
         </table>
       <div style="padding: 5 200 5 200;background-color: #FF6EC7;width: 480">
        基本信息带 * 的必须填写
       </div>
       
       <br><br>
       <div>
        <table>
          <tbody>
            <tr>
              <td>
              <font color="red">*</font>您的性别:<input type="radio" name="memberinfo.sax" checked="checked" value="男"/>男
              <input type="radio" name="memberinfo.sax" value="女"/>女<span style="color: gray;">(一旦选择不能修改)</span>
              </td>
            </tr>
            <tr><tr><tr><tr><tr><tr><tr>
            <tr>
               <td>
                  <font color="red">*</font>出生日期:<select name="year" style="border: 1px solid gray;padding:2;" >
                  <%
                             for(int i=1937;i<2014;i++){
                                 %>
                                 <option value="<%=i%>"><%=i%></option>
                                 <%
                             }
				%>
                  </select>
                  年
                  <select name="mouth" style="border: 1px solid gray;padding:2;">
                   <%
                             for(int i=1;i<13;i++){
                                 %>
                                 <option value="<%=i%>"><%=i%></option>
                                 <%
                             }
				%>
                  </select>
                  月
                  <select name="day" style="border: 1px solid gray;padding:2;">
                  <%
                             for(int i=1;i<31;i++){
                                 %>
                                 <option value="<%=i%>"><%=i%></option>
                                 <%
                             }
				%>
                  </select>
                  日<span style="color: gray;">(一旦选择不能修改)</span>
               </td>
            </tr>
            <tr><tr><tr><tr><tr><tr><tr>
            <tr>
              <td>
              <font color="red">*</font>学&nbsp;&nbsp;&nbsp;&nbsp;历:<select name="memberinfo.degree" style="border: 1px solid gray;padding:2;">
               <option value="隐藏">
               请选择
               </option>
               <option value="博士">
               博士
               </option>
               <option value="研究生">
               研究生
               </option>
               <option value="专科">
               专科
               </option>
               <option value="中专">
              中专
               </option>
               <option value="高中">
               高中
               </option>
              </select><span style="color: gray;">(一旦选择不能修改)</span>
              </td>
            </tr>
            <tr><tr><tr><tr><tr><tr><tr>
            <tr>
              <td>
              <font color="red">*</font>身&nbsp;&nbsp;&nbsp;&nbsp;高:<select name="memberinfo.height" style="border: 1px solid gray;padding:2;" >
               <option value="0">
               请选择
               </option>
                          <option value="0">
               160
               </option>
                          <option value="0">
               165
               </option>
                         <option value="0">
               170
               </option>
                          <option value="0">
               175
               </option>
                         <option value="0">
               180
               </option>
                           <option value="0">
               182
               </option>
              </select> CM<span style="color: gray;">(一旦选择不能修改)</span>
              </td>
            </tr>
            <tr><tr><tr><tr><tr><tr><tr>
            <tr>
              <td>
              <font color="red">*</font>体&nbsp;&nbsp;&nbsp;&nbsp;重:<select name="memberinfo.weight" style="border: 1px solid gray;padding:2;">
               <option value="0">
               请选择
               </option>
                          <option value="0">
               40
               </option>
                          <option value="0">
               50
               </option>
                          <option value="0">
               55
               </option>
                          <option value="0">
               60
               </option>
                          <option value="0">
               65
               </option>
                          <option value="0">
               70
               </option>
              </select> KG<span style="color: gray;">(一旦选择不能修改)</span>
              </td>
            </tr>
            <tr><tr><tr><tr><tr><tr><tr>
            <tr>
              <td>
              <font color="red">*</font>所在地区:<select name="memberinfo.address" style="border: 1px solid gray;padding:2;">
               <OPTION value=隐藏 selected>请选择</OPTION> <OPTION value=北京>北京</OPTION> <OPTION 
									  value=上海>上海</OPTION> <OPTION value=天津>天津</OPTION> <OPTION 
									  value=重庆>重庆</OPTION> <OPTION value=辽宁>辽宁</OPTION> <OPTION 
									  value=广东>广东</OPTION> <OPTION value=浙江>浙江</OPTION> <OPTION 
									  value=江苏>江苏</OPTION> <OPTION value=山东>山东</OPTION> <OPTION 
									  value=四川>四川</OPTION> <OPTION value=黑龙江>黑龙江</OPTION> <OPTION 
									  value=湖南>湖南</OPTION> <OPTION value=湖北>湖北</OPTION> <OPTION 
									  value=福建>福建</OPTION> <OPTION value=陕西>陕西</OPTION> <OPTION 
									  value=河南>河南</OPTION> <OPTION value=安徽>安徽</OPTION> <OPTION 
									  value=河北>河北</OPTION> <OPTION value=吉林>吉林</OPTION> <OPTION 
									  value=江西>江西</OPTION> <OPTION value=广西>广西</OPTION> <OPTION 
									  value=山西>山西</OPTION> <OPTION value=内蒙古>内蒙古</OPTION> <OPTION 
									  value=甘肃>甘肃</OPTION> <OPTION value=贵州>贵州</OPTION> <OPTION 
									  value=新疆>新疆</OPTION> <OPTION value=云南>云南</OPTION> <OPTION 
									  value=宁夏>宁夏</OPTION> <OPTION value=海南>海南</OPTION> <OPTION 
									  value=青海>青海</OPTION> <OPTION value=西藏>西藏</OPTION> <OPTION 
									  value=港澳台>港澳台</OPTION> <OPTION value=海外>海外</OPTION> <OPTION 
									  value=其它>其它</OPTION>
									  
              </select><span style="color: gray;">(一旦选择不能修改)</span>
              </td>
            </tr>
          <tr><tr><tr><tr><tr><tr><tr>
            <tr>  
             <td>
             &nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="read"/>已经阅读和同意<a href="#" style="color:#FF00FF;text-decoration: none; ">注册条款 </a>和
             <a href="#" style="color:#FF00FF;text-decoration: none; ">隐私政策</a>
             </td>
            </tr>
          <tr><tr><tr><tr><tr><tr><tr>
            <tr>  
             <td>
              &nbsp;&nbsp;&nbsp;&nbsp; <img src="images/register.png" style="cursor: pointer;" onclick="document.registerFrom.submit()"/>
             </td>
            </tr>
          </tbody>
        
        
        </table>
       
       </div>
       
       </div>
       </s:form>
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

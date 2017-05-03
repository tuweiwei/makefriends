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
 #topmenu a{
    text-decoration: none;
 }
 #topmenu a:hover{
    background-color: #e0ded2;
    padding: 15px;
    color: black;
 }
 
 #side_memberinfo{ background: #FFFFFF; height: 205px; width: 420px; float: left; }
  #main_memberinfo{ background: #FFFFFF; height: 205px; width: 84%; margin-left: 120px; }
.td{
 background: #F9F2E7;
 width:100px;
    color: #333333;
    padding: 10 ;
 }
 #save table tr td a:hover{
 background-image: none;
 }
</style>
<script type="text/javascript">
  
  function submit(){
  
  var address=document.getElementById("address").value;
  var degree=document.getElementById("degree").value;
  var weight=document.getElementById("weight").value;
   
   location.href="member/modifyMemberinfo.action?address="+address+"&degree="+degree+"&weight="+weight+"";
    
  }

</script>
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
   		<a href="member/modifyMemberinfo.jsp" style="background-color: #e0ded2;padding: 15px;color: black;">基本资料</a>&nbsp;&nbsp;&nbsp;&nbsp;  
     </div>
     </div>
     <br>
     <div style="border: 1px solid #ccc;width: 760px;height: 50px;margin-left: 60px;background-color: #F9F2E7;">
         <br>
         &nbsp;&nbsp;&nbsp;&nbsp;为保证资料真实有效，灰色字体信息不得随意修改。     
     </div>
     <div style="border: 1px solid #ccc;width: 760px;height: 50px;margin-left: 60px;background-color: #e0ded2;">
         <br>
         
         <div align="center">
         基本信息
         </div>   
     
     </div>
     <div id="memberinfo" style="margin-left: 60px;">
     
     <div id="side_memberinfo">
     <table>
       <tbody>
         <tr>
           <td class="td">
           用户邮箱
           </td>
           <td style="color: gray;">
           <s:property value="#session.memberinfo.email"/>
           </td>
         </tr>
         <tr>
           <td class="td">
           性别
           </td>
           <td style="color: gray;">
           <s:property value="#session.memberinfo.sax"/>
           </td>
         </tr>
         <tr>
           <td class="td">
           星座
           </td>
           <td style="color: gray;">
           狮子座
           </td>
         </tr>
       <tr>
           <td class="td">
           所在地区
           <font style="color: red;">*</font>
           </td>
           <td style="color: gray;">
           <select name="address" style="border: 1px solid gray;padding:2;" id="address">
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
									  
              </select>
           </td>
         </tr>
       </tbody>
     
     </table>
     </div>
     <div id="main_memberinfo">
     <table>
      <tbody>
       <tr>
         <td class="td">
         用户名
         </td>
        <td style="color: gray;">
        <s:property value="#session.memberinfo.name"/>
        </td>
       </tr>
      <tr>
         <td class="td">
         生日
         </td>
        <td style="color: gray;">
        <s:property value="#session.memberinfo.birthday"/> <s:property value=""/>岁
        </td>
       </tr>
       <tr>
         <td class="td">
         身高
         </td>
        <td style="color: gray;">
        <s:property value="#session.memberinfo.height"/> CM
        </td>
       </tr>
       <tr>
         <td class="td">
         学历
         </td>
        <td style="color: gray;">
        <select name="degree" style="border: 1px solid gray;padding:2;" id="degree">
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
              </select>
        </td>
       </tr>
      </tbody>
     </table>
     </div>
     
     <div style="border: 1px solid #ccc;width: 760px;height: 50px;background-color: #e0ded2;">
         <br>
         <div align="center">
         外貌体型
         </div>   
     </div>
     <div id="save">
        <table>
         <tbody>
           <tr>
           <td class="td">
           体重
           </td>
           <td>
            <select style="padding:5;border:1px solid #ccc;" id="weight">
      <%
                             for(int i=50;i<200;i++){
                                 %>
                                 <option value="<%=i%>"><%=i%></option>
                                 <%
                             }
				%>
     </select>KG
           </td>
           </tr>
           <tr>
           <td>
           <a href="javascript:submit()" ><img src="images/edit_save.png"/></a>
           </td>
           </tr>
           <tr>
           <td></td>
             <td>
              <font style="color: red">
              <s:actionmessage/>
              </font>
             </td>
           </tr>
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

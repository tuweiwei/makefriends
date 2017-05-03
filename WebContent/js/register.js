$(
     function(){
       
       $("#name").focus(function(){
         $(this).css("background-color","yellow")
         $("#nameinfo").html("&nbsp;&nbsp;&nbsp;长度3-16个字符,格式由26个字母,数字,汉字,下横线,中横线组成。").css("color","gray");       
      });
      $("#name").blur(function(){
          $(this).css("background-color","white");
         if($("#name").val()==""||$("#name").val().length==0){
             $("#nameinfo").html("&nbsp;&nbsp;&nbsp;提示:帐号不能为空,请正确填写一个帐号").css("color","red");
         }
         else{
         $.ajax({
          type:"GET",
          url:"Register?name="+ $("#name").val(),
          success:callback
         }) 
      }
         
      });
       $("#pass").focus(function(){
         $(this).css("background-color","yellow")
         $("#passinfo").html("&nbsp;&nbsp;&nbsp;请输入安全密码").css("color","gray");       
      });
      $("#pass").blur(function(){
      $(this).css("background-color","white");
      if($("#pass").val()==""||$("#pass").val().length==0){
             $("#passinfo").html("&nbsp;&nbsp;&nbsp;提示:必须正确输入密码").css("color","red");
         }
         else if($("#pass").val().length<6){
         $("#passinfo").html("&nbsp;&nbsp;&nbsp;提示:密码强度弱").css("color","green");
         }
         else if($("#pass").val().length<8){
         
         $("#passinfo").html("&nbsp;&nbsp;&nbsp;提示:密码强度中").css("color","#DB7093");
         }
         else{
         $("#passinfo").html("&nbsp;&nbsp;&nbsp;提示:密码强度强").css("color","red");
         
         }
      
      });
      $("#npass").focus(function(){
         $(this).css("background-color","yellow")
         $("#npassinfo").html("&nbsp;&nbsp;&nbsp;请再次输入安全密码").css("color","gray");       
      });
      $("#npass").blur(function(){
      $(this).css("background-color","white");
      if($("#npass").val()==""||$("#pass").val().length==0){
             $("#npassinfo").html("&nbsp;&nbsp;&nbsp;提示:请再次输入密码").css("color","red");
         }
      if($("#npass").val()!=$("#pass").val()){
      $("#npassinfo").html("&nbsp;&nbsp;&nbsp;提示:两次密码不一致").css("color","red");
      }
      });
      $("#nickname").focus(function(){
         $(this).css("background-color","yellow")
         $("#nicknameinfo").html("&nbsp;&nbsp;&nbsp;请为自己想一个好听的昵称！").css("color","gray");       
      });
      $("#nickname").blur(function(){
        $(this).css("background-color","white");
      if($("#nickname").val()==""||$("#nickname").val().length==0){
             $("#nicknameinfo").html("&nbsp;&nbsp;&nbsp;提示:请为自己想一个昵称").css("color","red");
         }
      });
      $("#email").focus(function(){
         $(this).css("background-color","yellow")
         $("#emailinfo").html("&nbsp;&nbsp;&nbsp;提示:请输入您的邮箱地址").css("color","gray");       
      });
      $("#email").blur(function(){
        $(this).css("background-color","white");
        var check=/[\w\-]{1,}@[\w\-]{1,}\.[\w\-]{1,}/;
        var emailVal=$("#email").val();
        var yes=check.test(emailVal);
        var yes=check.test(emailVal);
        if($("#email").val()==""||$("#email").val().length==0){
             $("#emailinfo").html("&nbsp;&nbsp;&nbsp;提示:邮箱地址不能为空").css("color","red");
         }
         else if(!yes){
         $("#emailinfo").html("&nbsp;&nbsp;&nbsp;提示:邮箱地址的格式不正确").css("color","red");
         
         }
         else{
         $("#emailinfo").html("&nbsp;&nbsp;&nbsp;邮箱地址可以使用").css("color","green");
         }
      
      });
      
      
      
     }
  );
  function callback(result){
     
     if(result==0){
     $("#nameinfo").html("&nbsp;&nbsp;&nbsp;此账号已被使用请选择其他账号").css("color","red");
     }
     else{
     $("#nameinfo").html("&nbsp;&nbsp;&nbsp;恭喜您 账号可以使用").css("color","green");
     }
  
  }
  
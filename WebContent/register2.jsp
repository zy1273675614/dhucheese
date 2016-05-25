<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/dhucheese.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
 <body>
  <div class="container">
  	<div class="row topbar">
	<h3>注册</h3> 
    </div> 
    <form action="register" id="rgstForm">    
 	<div class="row vposi40 hposi10">
  		  <input id="username" type="text" class="form-control" name="user.username" placeholder="输入用户名">
    </div> 
    <div class="row vposi8 hposi10">
  		  <input id="password" type="password" class="form-control" name="user.password" placeholder="输入密码">
    </div> 
    <div class="row vposi8 hposi10">
  		  <input id="qrpassword" type="password" class="form-control"  placeholder="重新输入密码">
    </div> 
    <div class="row vposi10  text-center">
    	  <input type="reset" class="btn hposi20 btn-default"/>
    	  <input type="submit" class="btn hposi20 btn-default"/>    	  
    	  <button type="submit" >tijiao</button>
    </div> 
    </form>
    </div> 	
  </div>
  
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
<script type="text/javascript" >
	function reset(){
		$("#username").value="";
		$("#password").value="";
		$("#qrpassword").value="";
	}
	$(function(){
		  $("#sub").click(function(){//点击按钮提交
		            //要提交的表单id为login	
		            alert("hello");
		            $.ajax({
		                 url:"register",
		                 data:$("#rgstForm").serialize(),
		                 type:"post",
		                 //dataType:"json",
		                 async:"false",
		                 success:function(data){//ajax返回的数据
		                	 alert(data);
		                 },
		                 error : function(XMLHttpRequest, textStatus, errorThrown) {
		                	 alert(XMLHttpRequest.responseText);

		                	 }
		            });
		        });	 
		});
		
	function verifyPass(){
		var name = $("#username").val();
		var pass = $("#password").val();
		var qrpass = $("#qrpassword").val();
		if(name == null|| name == undefined || name == ""){
			alert("用户名不能为空！");
		}
		if(pass == null|| pass == undefined || pass == ""){
			alert("密码不能为空！");
		}
		if(pass != qrpass){
			alert("两次输入密码不相同！");
		}
	}
</script>
  </body>
</html>
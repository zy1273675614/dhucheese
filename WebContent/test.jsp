<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script src="js/jquery.min.js" type="text/javascript" ></script>
<script>
$(function(){
	  $("#b01").click(function(){
	  htmlobj=$.ajax({url:"text1.txt",async:false});
	  $("#myDiv").html(htmlobj.responseText);
	  });
	});
</script>
<div id="myDiv"><h2>Let AJAX change this text</h2></div>
<button id="b01" type="button">Change Content</button>
</body>
</html>
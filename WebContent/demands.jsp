<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="UTF-8"/>
<meta name="author" content="m.178hui.com" />
<meta name="applicable-device" content="mobile" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>会员中心 — 奶酪网</title>
<link href="css/public.css" rel="stylesheet" type="text/css" />
<link href="css/user.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="layer/layer.js"></script>
<script src="js/jquerysession.js"></script>
<script>
$(window).load(function() {
	$("#status").fadeOut();
	$("#preloader").delay(350).fadeOut("slow");
})
</script>
<script type="text/javascript">
$(document).ready(function(){
	$(".login_out").click(function(){
		
		 window.location.href = "user.jsp";
	});
});
</script>
<script type="text/javascript">
$(document).ready(function(){
		$.ajax({
	         url:"findtask",
	         type:"post",
	         dataType:"json",
	         success:function(data){//ajax返回的数据
	         	var result = data;
	         
	         	//data = $.parseJSON(data);
	         	//alert(data);
	         	var tbody = $("#user_nav_list");
	         	$.each(data, function(index,item){
	         		OutputData(tbody,item);
	         	});
	         }
	     });
		
		function OutputData(tbody, item){
			//int i==0;
			//i++;
			 var type;
			 if(item.type == 1) type="创意类";
			 if(item.type == 2) type="实物类";
			 if(item.type == 3) type="教育类";
			 var status;
			 switch(item.status){
			 case 1:status="正在进行中";break;
			 case 2:status="完成";break;
			 default:status="失效";break;
			 }
			 tbody.append(
					 "<a href=\"detailtask.action?id="+item.id+"\">" + 
			         "<div class=\"u_nav_name\">" + 
						 item.taskName +
					 "</div>" +
					 /*"任务类别： "+ 
	                 	 type + "&nbsp;" + "&nbsp;" +              
	                 "价格："+
	                     "￥"+item.price + "&nbsp;" + "&nbsp;" +
	                 "截止时间："+
	                     (item.deadline.year+1900) +"."+(item.deadline.month+1)+"."+item.deadline.date+ "&nbsp;" + "&nbsp;" +
	                 "发布时间："+
	                 	 (item.rel.year+1900) +"."+(item.rel.month+1)+"."+item.rel.date+ "&nbsp;" + "&nbsp;" + */
	                 "<div class=\"nt_icon\">" +
		             "</div>" + 
	                 "<div class=\"u_money\">" + 
	                     status +
	                 "</div>" +
			         "</a>"
			 
			 );
		 }	
});
</script>

<!-- $.each(dataObj,function(index,item){
    var $tr = $('<tr>');
    $.each(item,function(name,val){
        var $td = $('<td>').html(val);
        $tr.append($td);
    });
    $tab1.append($tr);
});
 -->

</head>
<body>
<div class="mobile">
	<!--页面加载 开始-->
  <div id="preloader">
    <div id="status">
      <p class="center-text"><span>拼命加载中···</span></p>
    </div>
  </div>
  <!--页面加载 结束--> 
  <!--header 开始-->
  <header>
    <div class="header"> <a class="new-a-back" href="javascript:history.back();"> <span><img src="images/iconfont-fanhui.png"></span> </a>
      <h2>我发布的任务</h2>
      <div class="header_right shaixuan">
      <a href="index.html">
      <img src="images/iconfont-shouye.png"></a></div>
    </div>
  </header>
  <!--header 结束-->

	<div class="user_top w">
    	<div class="user_logo"><div class="img"><img src="images/user_logo.jpg"></div></div>
        <div class="user_info">
        	<div class="user_name"><%=session.getAttribute("username")%></div>
            <div class="user_dengji">会员等级：黄金会员</div>
        </div>
    </div>
    
    
    <div class="user_nav_list w" id="user_nav_list">
    	<div class="u_nav_name">任务名</div>
    	<div class="nt_icon2"></div>
    	<div class="u_money">状态</div>
    </div>
    

     <div class="login_out w"><a href="javascript:void(0);"><span><img src="images/iconfont-tuichu.png"></span><i>返回</i></a></div>
  <div class="footer w">
  	<a href="#"><div class="ico_img"><img src="images/178hui-app.png"></div><span style="color:#00bb9c">客户端</span></a>
    <a href="index.html"><div class="ico_img"><img src="images/178hui-shouji.png"></div><span style="color:#eb4f38">触摸版</span></a>
    <a href="#"><div class="ico_img"><img src="images/178hui-diannao.png"></div><span>电脑版</span></a>
  </div>
  <div class="copyright">Copyright © 2012-2015 一起惠返利网 m.178hui.com 版权所有</div>
</div>
</body>
</html>
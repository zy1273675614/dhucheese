<html>
<head>
<%@ page language="java" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="author" content="m.178hui.com" />
<meta name="applicable-device" content="mobile" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>任务搜寻 — 奶酪网</title>
<link href="css/public.css" rel="stylesheet" type="text/css" />
<link href="css/baoliao.css" rel="stylesheet" type="text/css">

<script src="js/jquery-1.8.3.min.js"></script>
<script>
$(window).load(function() {
	$("#status").fadeOut();
	$("#preloader").delay(350).fadeOut("slow");
})
</script>
<script type="text/javascript">
	$(document).ready(function(){
	 $.ajax({
         url:"findAllTask",
         type:"post",
         dataType:"json",
         success:function(data){//ajax返回的数据
         	var result = data;
         	//data = $.parseJSON(data);
         	//alert(data[0].id);
         	var tbody = $("#ui-tab-content");
         	$.each(data, function(index, item){
         		OutputData(tbody,item);
         	});
         }
    });
	 
	 function OutputData(tbody, item){
		 var type="创意类";
		 if(item.type == 2) type="实物类";
		 if(item.type == 3) type="教育类";
		 tbody.append(
				 "<a href=\"taskView.action?id="+item.id+"\">" +
		            "<div class=\"baoliao_content\">" +
		                "<div class=\"bl_img\">" +
		           			 "<img src=\"http://baoliao.178hui.com/upload/2015/0710/12332059693.jpg\" />" +
		                "</div>" +
		         "<div class=\"bl_right\">" +
				 "<div class=\"bl_title\">" +"任务名："+
					 item.taskName + 
				 "</div>" +
                 "<div class=\"bl_note\">" +"任务类别： "+ 
                 	 type + 
                 "</div>" +                 
                 "<div class=\"bl_tag\">" +
                     "<div class=\"bl_price\">" +
                     	"￥"+item.price +
                     "</div>" +
                     "<div class=\"bl_oprice\">" +
                     	"￥138.00" +
                     "</div>" +
                     "<div class=\"bl_time\">" + "发布时间："+
                      (item.rel.year+1900) +"."+(item.rel.month+1)+"."+item.rel.date+
                     "</div>" +
                     "<div class=\"bl_mall\">" +"发布人： "+
                     item.authorName +
                     "</div>" +                    
                 "</div>" +		
                 "</div>" +
                 "</div>" +
		         "</a>"
		 
		 );
	 }

	$(".shaixuan").click(function(event){
		event.stopPropagation(); 
		$(".shaixuan_box").show();
		$(".shaixuan_box").animate({right:'100%'});
		$("body,html").css("overflow","hidden");
		$(".shaixuan_box").css("overflow","auto");
		$('body').bind("touchmove",function(e){    
                    e.preventDefault();    
            });
	});
	$(".shaixuan_mall a").click(function(event){
		 $("body,html").css("overflow","auto");
		$(".shaixuan_box").animate({right:'-100%'});
		$(".shaixuan_box").hide(5);	
		$("body").unbind("touchmove");  
	});
	
	$(".ui-tab-nav li").click(function(event){
		$(".ui-tab-nav li").removeClass("current");
		$(this).addClass("current");
	});
});
</script>
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
    <div class="header"> <a class="new-a-back" href="index.html"> <span><img src="images/iconfont-fanhui.png"></span> </a>
      <h2>任务搜寻</h2>
      <div class="header_right shaixuan"><img src="images/iconfont-shaixuan.png"></div>
    </div>
  </header>
  <!--header 结束-->
	  <div class="search w">
        <form action="" method="get">
            <input name="" type="text" class="search_input" placeholder="请输入您想要查找的爆料"><input name="" type="button" class="search_submit" value="搜索">
        </form>
      </div>

  <div class="baoliao w">
  	<div class="ui-tab">
		<ul class="ui-tab-nav">
            <li class="current"><a href="#">最新任务</a></li>
            <li><a href="#">创意类</a></li>
            <li><a href="#" >实物类</a></li>
            <li><a href="#" >教育类</a></li>
      </ul>
      <div id="ui-tab-content" class="ui-tab-content">
        
            <a href="baoliao_view.html">
            <div class="baoliao_content">
                <div class="bl_img"><img src="http://baoliao.178hui.com/upload/2015/0710/12332059693.jpg" /></div>
                <div class="bl_right">
                    <div class="bl_title">任务名称</div>
                    <div class="bl_note">任务类别、截止时间</div>
                    <div class="bl_tag">
                        <div class="bl_price">￥99.00</div>
                        <div class="bl_oprice">￥138.00</div>
                        <div class="bl_time">发布时间</div>
                        <div class="bl_mall">发布人</div>
                    </div>
                </div>
            </div> 
            </a>
      </div>
        <div class="bl_more"><a href="#">加载更多</a></div>
    </div>
  </div>
  <!--筛选-->
  
  <div class="shaixuan_box">
	<div class="shaixuan_mall">
    	<h1>商城筛选</h1>
        <div class="shaixun_item">
            <a href="#" class="current">全部商城</a>
            <a href="#">京东商城</a>
            <a href="#">亚马逊</a>
            <a href="#">苏宁易购</a>
            <a href="#">一号店</a>
			<a href="#">天猫商城</a>
            <a href="#">易迅网</a>
            <a href="#">健一网</a>
            <a href="#">国美在线</a>
            <a href="#">当当网</a>
            <a href="#">亚马逊</a>
            <a href="#">我买网</a>
            <a href="#">优购商城</a>
            <a href="#">新蛋</a>
            <a href="#">顺丰优选</a>
            <a href="#">京东商城wap端</a>
            <a href="#">飞飞商城</a>
            <a href="#">为为网</a>
            <a href="#">淘宝网</a>
            <a href="#">沱沱工社</a>
            <a href="#">银泰网</a>
            <a href="#">唯品会</a>
            <a href="#">可得眼镜</a>
            <a href="#">华强北商城</a>
            <a href="#">天天网</a>
            <a href="#">母婴之家</a>
            <a href="#">聚美优品</a>
            <a href="#">知我药妆</a>
            <a href="#">1号药网</a>
            <a href="#">酒仙网</a>
            <a href="#">尚妆网</a>
    	</div>
        <p><a href="#" class="shaixuan_colos">关闭</a></p>
    </div>
  </div>
  <div class="m_user w">
  	<a href="login.html">登录</a>
    <a href="register.html">注册</a>
    <a href="#">返回顶部</a>
  </div>
  <div class="footer w">
  	<a href="#"><div class="ico_img"><img src="images/178hui-app.png"></div><span style="color:#00bb9c">客户端</span></a>
    <a href="index.html"><div class="ico_img"><img src="images/178hui-shouji.png"></div><span style="color:#eb4f38">触摸版</span></a>
    <a href="#"><div class="ico_img"><img src="images/178hui-diannao.png"></div><span>电脑版</span></a>
  </div>
  <div class="copyright">Copyright © 2012-2015 一起惠返利网 m.178hui.com 版权所有</div>
</div>
</body>
</html>
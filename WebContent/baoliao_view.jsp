<html>
<head>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="author" content="m.178hui.com" />
<meta name="applicable-device" content="mobile" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>爆料详情 — 奶酪网</title>
<link href="css/public.css" rel="stylesheet" type="text/css" />
<link href="frozenui/css/frozen.css" rel="stylesheet" type="text/css">
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
	$(".shaixuan").click(function(event){
		event.stopPropagation(); 
		$(".shaixuan_box").show();
		$(".shaixuan_box").animate({right:'100%'});
		$("html,body").css("overflow","hidden");
	});
	$(document).click(function(event){
		$(".shaixuan_box").animate({right:'-100%'});
		$(".shaixuan_box").hide(5);
		$("html,body").css("overflow","");
	});   
	$(".go_buy").click(function(event){
		alert("ok");
		$.ajax({
	         url:"receiveOrder",
	         type:"post",
	         datatype:"json",
	         success:function(data){//ajax返回的数据
	        	 alert("hello");
	         }
	    });	
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
    <div class="header"> <a class="new-a-back" href="baoliao.jsp"> <span><img src="images/iconfont-fanhui.png"></span> </a>
      <h2>爆料详情</h2>
      <div class="head_right" style="top:13px;"><a href="baoliao.jsp" style="font-size:14px;">返回列表</a></div>
    </div>
  </header>
  <!--header 结束-->
  <div class="search w">
    <form action="" method="get">
        <input name="" type="text" class="search_input" placeholder="请输入您想要查找的爆料"><input name="" type="button" class="search_submit" value="搜索">
    </form>
  </div>
  <div class="view w">
  	<div class="bl_view_img"><img src="http://baoliao.178hui.com/upload/2015/0710/12332059693.jpg" /></div>
    <s:if test="task.type == 1">
     <div class="bl_view_title"><span class="bl_type">创意类</span>  ${task.taskName} </div>
      </s:if>
      <s:elseif test="task.type == 2">
       <div class="bl_view_title"><span class="bl_type" style="background-color:#53bf1e;">实物类</span>${task.taskName} </div>
      </s:elseif>
       <s:elseif test="task.type== 3">
       <div class="bl_view_title"><span class="bl_type" style="background-color:#00bb9c;">教学类</span>${task.taskName} </div>
      </s:elseif>
    <div class="bl_view_note">任务描述：${task.description}</div>
    <div class="bl_view_tag">
   		<div class="bl_view_price">￥${task.price}</div>
        <!-- <div class="bl_view_oprice">￥138.00</div>  -->       
        <!-- <div class="bl_view_mall">商城：京东商城</div> -->
    </div>
    <div class="bl_view_tag">  
    	<div class="bl_view_time">发布人：${task.authorName }</div>
        <!-- <div class="bl_view_time">人气：360次浏览</div> -->
    </div>
    <div class="bl_view_tag">
    	<!-- <div class="bl_view_user">喜欢：2人喜欢</div> -->
        <div class="bl_view_time">时间：${task.rel}</div>
    </div>
    <div class="go_buy"><a href="javascript:void(0);">接受任务</a></div>
  </div>
  
 <%--  <div class="bl_view_content w">
  	<h1>推荐理由<span>优质爆料QQ群①：186666517</span></h1>
    <div class="bl_view_word">
    	 <p>
	飞利浦PHILIPS LED球泡5W/E27日光色4连包，<a href="#">京东商城售价109元</a>，可以参加满200-60的活动，例如凑单2套，折合79元/套，不到20元/个，其它渠道都在39元/个左右。</p>
<p>
	飞利浦PHILIPS LED球泡5W/E27日光色4连包，功率为5W，色温：6500K，家庭装修、商场、展示厅、酒店、办公室等，可直接替换相同灯座的灯泡。
</p>      
<p>
	特步男鞋跑步鞋男士运动鞋新款休闲鞋网面透气跑步鞋减震超轻慢跑鞋男 灰黄 42
</p>
<p>
	<strong>京东6月17日活动秒杀  10点 61.8元秒杀</strong>
</p>
<p>
	<img src="http://baoliao.178hui.com/upload/shaidan/20150617/1434503287905.jpg" _src="http://baoliao.178hui.com/upload/shaidan/20150617/1434503287905.jpg" />
</p>         
<p>
	<a href="http://jump.178hui.com/index.php?mod=jump&act=url&url=http%3A%2F%2Fsale.jd.com%2Fact%2FRS4tPQI3DuHor.html&uid=12405" rel="nofollow" target="_blank"><img src="http://baoliao.178hui.com/upload/shaidan/20150616/14344169658370.jpg" _src="http://baoliao.178hui.com/upload/shaidan/20150616/14344169658370.jpg" /></a>
</p> 
    </div>
  </div>
  
  <div class="bl_comment w">
 	 <h1>猜您还喜欢</h1>
     <div class="comment_list">
     	<ul class="ui-list ui-border-tb">  
            <li>
                <div class="ui-list-thumb ui-avatar-s">
                   <span><img src="http://baoliao.178hui.com/upload/2015/0710/12332059693.jpg" /></span>                </div>
                <div class="ui-list-info ui-border-t">
                    <h4>韩国现代（HYUNDAI) BD-YS2003 多功能养生壶 煎药壶2.0L </h4>
                    <p>手机端：99元包邮</p>
                    <p style="color:#FF6600">￥99元</p>
                </div>
            </li>
            <li>
                <div class="ui-list-thumb ui-avatar-s">
                    <span><img src="http://baoliao.178hui.com/upload/2015/0710/12332059693.jpg" /></span>                </div>
                <div class="ui-list-info ui-border-t">
                    <h4>韩国现代（HYUNDAI) BD-YS2003 多功能养生壶 煎药壶2.0L </h4>
                    <p>手机端：99元包邮</p>
                    <p style="color:#FF6600">￥99元</p>
              </div>
            </li>
            <li>
                <div class="ui-list-thumb ui-avatar-s">
                    <span><img src="http://baoliao.178hui.com/upload/2015/0710/12332059693.jpg" /></span>                </div>
                <div class="ui-list-info ui-border-t">
                    <h4>韩国现代（HYUNDAI) BD-YS2003 多功能养生壶 煎药壶2.0L </h4>
                    <p>手机端：99元包邮</p>
                    <p style="color:#FF6600">￥99元</p>
              </div>
            </li>
            <li>
                <div class="ui-list-thumb ui-avatar-s">
                    <span><img src="http://baoliao.178hui.com/upload/2015/0710/12332059693.jpg" /></span>                </div>
                <div class="ui-list-info ui-border-t">
                    <h4>韩国现代（HYUNDAI) BD-YS2003 多功能养生壶 煎药壶2.0L </h4>
                    <p>手机端：99元包邮</p>
                    <p style="color:#FF6600">￥99元</p>
              </div>
            </li>
            
            <li>
                <div class="ui-list-thumb ui-avatar-s">
                    <span><img src="http://baoliao.178hui.com/upload/2015/0710/12332059693.jpg" /></span>                </div>
                <div class="ui-list-info ui-border-t">
                    <h4>韩国现代（HYUNDAI) BD-YS2003 多功能养生壶 煎药壶2.0L </h4>
                    <p>手机端：99元包邮</p>
                    <p style="color:#FF6600">￥99元</p>
              </div>
            </li>
        </ul>
     </div>
  </div>
  <div class="pl_icon"></div>
  <div class="bl_pinlun w">
  	<form action="" method="get"><input name="" type="text" placeholder="我来说一句" class="pinlun_input"><input name="" type="button" class="pinlun_submit" value="发表评论"></form>
  </div>
  <!--<div class="no_login w">您需要登录才能发表牛评哦！<a href="#">马上登录</a><a href="#">免费注册</a></div>-->
  
  <div class="bl_comment w">
  	<h1>TA们的牛评（10）</h1>
    <div class="comment_list">
    	<ul>
        	<li>
       	  	  <div class="pl_user_img"><img src="http://baoliao.178hui.com/upload/avatar/0000/0015/24_avatar_middle.jpg" /></div>
              <div class="pl_user_top">
                  <div class="pl_user_name">xxx198**</div>
                  <div class="pl_user_time">6天前</div>
              </div>
              <div class="pl_user_comment">可以一个号多撸，不限次数，大家悠着点，别整黑号了。可以一个号多撸，不限次数，大家悠着点，别整黑号了。</div>
            </li>
            <li>
       	  	  <div class="pl_user_img"><img src="http://baoliao.178hui.com/upload/avatar/0000/0015/24_avatar_middle.jpg" /></div>
              <div class="pl_user_top">
                  <div class="pl_user_name">xxx198**</div>
                  <div class="pl_user_time">6天前</div>
              </div>
              <div class="pl_user_comment">可以一个号多撸，不限次数，大家悠着点，别整黑号了。可以一个号多撸，不限次数，大家悠着点，别整黑号了。</div>
            </li>
            <li>
       	  	  <div class="pl_user_img"><img src="http://baoliao.178hui.com/upload/avatar/0000/0015/24_avatar_middle.jpg" /></div>
              <div class="pl_user_top">
                  <div class="pl_user_name">xxx198**</div>
                  <div class="pl_user_time">6天前</div>
              </div>
              <div class="pl_user_comment">可以一个号多撸，不限次数，大家悠着点，别整黑号了。</div>
            </li>
            <li>
       	  	  <div class="pl_user_img"><img src="http://baoliao.178hui.com/upload/avatar/0000/0015/24_avatar_middle.jpg" /></div>
              <div class="pl_user_top">
                  <div class="pl_user_name">xxx198**</div>
                  <div class="pl_user_time">6天前</div>
              </div>
              <div class="pl_user_comment">可以一个号多撸，不限次数，大家悠着点，别整黑号了。可以一个号多撸，不限次数，大家悠着点，别整黑号了。</div>
            </li>
            <li>
       	  	  <div class="pl_user_img"><img src="http://baoliao.178hui.com/upload/avatar/0000/0015/24_avatar_middle.jpg" /></div>
              <div class="pl_user_top">
                  <div class="pl_user_name">xxx198**</div>
                  <div class="pl_user_time">6天前</div>
              </div>
              <div class="pl_user_comment">可以一个号多撸。</div>
            </li>
            <li>
       	  	  <div class="pl_user_img"><img src="http://baoliao.178hui.com/upload/avatar/0000/0015/24_avatar_middle.jpg" /></div>
              <div class="pl_user_top">
                  <div class="pl_user_name">xxx198**</div>
                  <div class="pl_user_time">6天前</div>
              </div>
              <div class="pl_user_comment">可以一个号多撸，不限次数，大家悠着点！</div>
            </li>
            <li>
       	  	  <div class="pl_user_img"><img src="http://baoliao.178hui.com/upload/avatar/0000/0015/24_avatar_middle.jpg" /></div>
              <div class="pl_user_top">
                  <div class="pl_user_name">xxx198**</div>
                  <div class="pl_user_time">6天前</div>
              </div>
              <div class="pl_user_comment">可以一个号多撸，不限次数，大家悠着点，别整黑号了。可以一个号多撸，不限次数，大家悠着点，别整黑号了。</div>
            </li>
        </ul>
    </div>
  </div> --%>
  
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
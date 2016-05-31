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
      <h2>个人信息</h2>
      <div class="header_right shaixuan"><a href="index.html"><img src="images/iconfont-shouye.png"></a></div>
    </div>
  </header>
  <!--header 结束-->

	<%-- <div class="user_top w">
    	<div class="user_logo"><div class="img"><img src="images/user_logo.jpg"></div></div>
        <div class="user_info">
        	<div class="user_name"><%=session.getAttribute("username")%></div>
            <div class="user_dengji">会员等级：黄金会员</div>
        </div>
    </div> --%>
    <div class="user_nav_list w">
    	<ul>
            <li>
            <a href="changeusername.jsp">
            <div class="u_nav_name">我的昵称</div>
            <div class="nt_icon" ></div>
                    <div class="u_money"><i></i><%=session.getAttribute("username")%></div>
            </a>
            
            </li>
            <li>
            <div class="u_nav_name">真实姓名</div>
            <div class="nt_icon3"></div>
                    <div class="u_money"><i></i><%=session.getAttribute("userrealname")%></div>
            
            </li>
            
            
            
            <li>
            <div class="u_nav_name">性别</div>
            <div class="nt_icon3"></div>
                    <div class="u_money"><i></i><%=session.getAttribute("usersex")%></div>
           
            </li>
			<li>
            <div class="u_nav_name">生日</div>
            <div class="nt_icon3"></div>
                    <div class="u_money"><i></i><%=session.getAttribute("userbirthday")%></div>
            
            </li>
            <li>
            <a href="changephone.jsp">
            <div class="u_nav_name">电话</div>
            <div class="nt_icon"></div>
                    <div class="u_money"><i></i><%=session.getAttribute("userphone")%></div>
        </a>
            </li>
            <li>
            <a href="changemail.jsp">
            <div class="u_nav_name">电子邮件</div>
            <div class="nt_icon"></div>
                    <div class="u_money"><i></i><%=session.getAttribute("usermail")%></div>
            </a>
            </li>
            <li>
            <a href="changeschool.jsp">
            <div class="u_nav_name">学校</div>
            <div class="nt_icon"></div>
                    <div class="u_money"><i></i><%=session.getAttribute("userschool")%></div>
           </a>
            </li>
            <li>
            <a href="changemajor.jsp">
            <div class="u_nav_name">专业</div>
            <div class="nt_icon" ></div>
                    <div class="u_money"><i></i><%=session.getAttribute("usermajor")%></div>
          </a>
            </li>
            <li>
            <a href="changeaddress.jsp">
            <div class="u_nav_name">地址</div>
            <div class="nt_icon"></div>
                    <div class="u_money"><i></i><%=session.getAttribute("useraddress")%></div>
            </a>
            </li>
            <li>
            
            <div class="u_nav_name">家乡</div>
            <div class="nt_icon3"></div>
                    <div class="u_money"><i></i><%=session.getAttribute("userhometown")%></div>
         
            </li>
            <li>
            <a href="changecompany.jsp">
            <div class="u_nav_name">所在公司</div>
            <div class="nt_icon"></div>
                    <div class="u_money"><i></i><%=session.getAttribute("usercompany")%></div>
          </a>
            </li>
            <li>
            
            <div class="u_nav_name">用户类型</div>
            <div class="nt_icon3"></div>
                    <div class="u_money"><i></i><%=session.getAttribute("usertype")%></div>
           
            </li>
        </ul>
    </div>
  <div class="login_out w"><a href="user.jsp"><i>返回</i></a></div>
  <div class="footer w">
  	<a href="#"><div class="ico_img"><img src="images/178hui-app.png"></div><span style="color:#00bb9c">客户端</span></a>
    <a href="index.html"><div class="ico_img"><img src="images/178hui-shouji.png"></div><span style="color:#eb4f38">触摸版</span></a>
    <a href="#"><div class="ico_img"><img src="images/178hui-diannao.png"></div><span>电脑版</span></a>
  </div>
  <div class="copyright">Copyright © 2012-2015 一起惠返利网 m.178hui.com 版权所有</div>
</div>
</body>
</html>
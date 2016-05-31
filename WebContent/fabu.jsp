<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    
    <title>发布</title>
    
    <script src="js/jquery.1.7.2.min.js"></script>
    <script src="js/mobiscroll_002.js" type="text/javascript"></script>
	<script src="js/mobiscroll_004.js" type="text/javascript"></script>
	<link href="css/mobiscroll_002.css" rel="stylesheet" type="text/css">
	<link href="css/mobiscroll.css" rel="stylesheet" type="text/css">
	<script src="js/mobiscroll.js" type="text/javascript"></script>
	<script src="js/mobiscroll_003.js" type="text/javascript"></script>
	<script src="js/mobiscroll_005.js" type="text/javascript"></script>
	<link href="css/mobiscroll_003.css" rel="stylesheet" type="text/css">
    
    <style type="text/css">
        body {
            padding: 0;
            margin: 0;
            font-family: arial, verdana, sans-serif;
            font-size: 12px;
            background: #ddd;
        }
        input, select {
            width: 100%;
            padding: 5px;
            margin: 5px 0;
            border: 1px solid #aaa;
            box-sizing: border-box;
            border-radius: 5px;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            -webkit-border-radius: 5px;
        }
        .header {
            border: 1px solid #333;
            background: #111;
            color: white;
            font-weight: bold;
            text-shadow: 0 -1px 1px black;
            background-image: linear-gradient(#3C3C3C,#111);
            background-image: -webkit-gradient(linear,left top,left bottom,from(#3C3C3C),to(#111));
            background-image: -moz-linear-gradient(#3C3C3C,#111);
        }
        .header h1 {
            text-align: center;
            font-size: 16px;
            margin: .6em 0;
            padding: 0;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
        }
        .content {
            padding: 15px;
            background: #fff;
        }
       
    </style>
</head>
<body>
	<form method="post" action="newtask">
	<div class="header">
        <h1>任务发布</h1>
    </div>
    
    <div class="content">
    
    	<div class="demos">
			<label>你想做什么：</label>
            <select size="1" name="task.type">
            	<option value="1">创意类</option>
                <option value="2">实物类</option>
                <option value="3">教学类</option>         
			</select>
		</div>  
		<div class="demos">
			<label>任务名</label>
			<input type="text" name="task.taskName"/>
		</div>                    
        <div class="demos">
            <label>告诉我们您的具体要求：</label>
            <textarea name="task.description" rows="15" cols="40"></textarea>
        </div>
        <div class="demos"> 
            <label>价格</label>
            <input type="text" name="task.price"/>
        </div>
        <div class="demos">
			<label for="appDate">截止日期</label>
			<input value="" class="" readonly name="task.deadline" id="appDate" type="text">
		</div>
		
        <div class="demos">
            <input type="submit" value="提交"/>
            <input type="reset" value="重置"/>
		</div>
	</div>
	</form>
        
        <script type="text/javascript">
        $(function () {
			var currYear = (new Date()).getFullYear();	
			var opt={};
			opt.date = {preset : 'date'};
			opt.datetime = {preset : 'datetime'};
			opt.time = {preset : 'time'};
			opt.def = {
				theme: 'android-ics light', //皮肤样式
		        display: 'modal', //显示方式 
		        mode: 'scroller', //日期选择模式
				dateFormat: 'yyyy-mm-dd',
				lang: 'zh',
				showNow: true,
				nowText: "今天",
		        startYear: currYear - 10, //开始年份
		        endYear: currYear + 10 //结束年份
			};

		  	$("#appDate").mobiscroll($.extend(opt['date'], opt['def']));
		  	var optDateTime = $.extend(opt['datetime'], opt['def']);
		  	var optTime = $.extend(opt['time'], opt['def']);
		    $("#appDateTime").mobiscroll(optDateTime).datetime(optDateTime);
		    $("#appTime").mobiscroll(optTime).time(optTime);
        });
    </script>

</body>
</html>

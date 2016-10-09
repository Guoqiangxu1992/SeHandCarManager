<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ include file="/WEB-INF/common/common.jsp" %>

<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta charset="utf-8">
        <title>Summer Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="${xgq}/css/reset.css">
        <link rel="stylesheet" href="${xgq}/css/supersized.css">
        <link rel="stylesheet" href="${xgq}/css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
	<script type="text/javascript">

	$(function(){
	    $('#submit').click(function(){
	    	var name = $("#username").val();
	    	var password = $("#password").val();
	    //alert(name);
	         $.ajax({
	        	 type:'post',
	             url: '${xgq}/login/loginAjax.do',
	             data: {username:name,password:password},
	             dataType: "json",
	             success: function(data){
	            	 if(data==1){
	            		 //alert(data);
	            		 window.location = "${xgq}/login/tologin.do";
	            	 }else
	            		 {
	            		 alert("用户名错误或者密码错误！");
	            		 }
					
	             }
	         });
	    });
	    
	    
	    $('#regist').click(function(){
	    	window.location = "${xgq}/regist.jsp";
	    })
	});
	</script>
    </head>

    <body oncontextmenu="return false">

        <div class="page-container">
            <h1>Login</h1>
            <form action="${xgq}/login/l.do" method="post" id="loginForm">
				<div>
					<input type="text" id="username" class="username" placeholder="Username" autocomplete="off"/>
				</div>
                <div>
					<input type="password" id="password" class="password" placeholder="Password"  oncontextmenu="return false" onpaste="return false" />
                </div>
                    <div style="float:left">
                    		<button id="submit" type="button" >登录</button>
                    </div>         
                	 <div style="float:left">
                    		<button id="regist" type="button" >注册</button>
                    </div>  
                	
                
            </form>
            <div class="connect">
                <p>If we can only encounter each other rather than stay with each other,then I wish we had never encountered.</p>
				<p style="margin-top:20px;">如果只是遇见，不能停留，不如不遇见。</p>
            </div>
        </div>
		<div class="alert" style="display:none">
			<h2>消息</h2>
			<div class="alert_con">
				<p id="ts"></p>
				<p style="line-height:70px"><a class="btn">确定</a></p>
			</div>
		</div>

      <script src="http://apps.bdimg.com/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
        <script src="${xgq}/js/supersized.3.2.7.min.js"></script>
        <script src="${xgq}/js/supersized-init.js"></script>
            <script src="${xgq}/js/supersized-init.js"></script>
    </body>

</html>
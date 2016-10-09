<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<%@ page import="org.apache.shiro.SecurityUtils"%>
<%@ page import= "org.apache.shiro.subject.Subject"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
	/*获取登录信息,此处无须判断是否登录，因为在url访问全县中已经限制*/
	//Subject subject = SecurityUtils.getSubject();		
	//ShiroUser user = (ShiroUser)subject.getPrincipal();
%>
<c:set var="root" value="<%=basePath %>"/>
<c:set var="ctx" value="${pageContext['request'].contextPath}/" />
<c:set var="BASE_PATH" value="${pageContext['request'].contextPath}/" />
<!-- 
${root}:   http://localhost:8080/webbase/
${ctx}:    /webbase/ 
 -->
<script type="text/javascript">
var ctx = "${ctx}";	
var root = "${root}";
</script>




<!-- dwr 公用
<script type='text/javascript' src="${ctx }dwr/engine.js"></script>
<script type='text/javascript' src="${ctx }dwr/util.js"></script>
 -->


<script type="text/javascript">
	function closeMyAlert(){
		$("#my_alert").slideUp('fast');
		$("#my_backdrop").hide();
	}
	
	function closeMyConfirm(){
		$("#my_confirm").slideUp('fast');
		$("#my_backdrop").hide();
	}
	function sureOfAlertAndConfirm(){
		if(common.tempFunction!= null && common.tempFunction != ""){
			common.tempFunction();
		}
		$("#my_alert").slideUp('fast');
		$("#my_confirm").slideUp('fast');
		$("#my_backdrop").hide();
	}
</script>

<div class="modal-backdrop"
 style="display:none;filter:alpha(opacity=30);  
      -moz-opacity:0.3;  
      -khtml-opacity: 0.3;  
      opacity: 0.3;"
 id="my_backdrop" >
</div>
<!-- 通用alert窗口 -->
<div class="modal-dialog " style="display: none; width:300px;margin-left:25%;top:100px;position: fixed; ;" id="my_alert">
	    <div class="modal-content-wrap">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button class="close" onclick="closeMyAlert();" type="button">×</button>
	                <h4 class="modal-title"><i class="icon-question-sign"></i>提示</h4>
	            </div>
	            <div class="modal-body" id="my_alert_body">
				<!--  -->
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-danger" onclick="sureOfAlertAndConfirm();" > 确定</button>
	            </div>
	        </div>
	    </div>
	</div>
	
	<!-- 通用confirm窗口 -->
	<div class="modal-dialog " style="display: none; width:380px;margin-left:25%;top:100px;position:fixed;" id="my_confirm">
	    <div class="modal-content-wrap">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button class="close" type="button" onclick="closeMyConfirm();">×</button>
	                <h4 class="modal-title"><i class="icon-question-sign"></i>提示</h4>
	            </div>
	            <div class="modal-body" id="my_confirm_body">
					<!--  -->
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-danger" onclick="sureOfAlertAndConfirm();"> 确定</button>
	                <button type="button" class="btn btn-default" onclick="closeMyConfirm();">取消</button>
	            </div>
	        </div>
	    </div>
	</div>



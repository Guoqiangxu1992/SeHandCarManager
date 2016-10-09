<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  page isELIgnored="false"%> 
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <c:set var="xgq" value="${pageContext.request.contextPath}" ></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script src="${xgq}/js/jquery-2.1.0.min.js"></script>
	
</head>
<body>

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
<input type="hidden" id="xgq" value="${xgq}">
</body>
</html>
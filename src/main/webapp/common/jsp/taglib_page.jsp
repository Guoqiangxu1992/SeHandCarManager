<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
%>
<c:set var="root" value="<%=basePath %>"/>
<c:set var="ctx" value="${pageContext['request'].contextPath}/" />
<c:set var="BASE_PATH" value="${pageContext['request'].contextPath}/" />
<script type="text/javascript">
var ctx = "${ctx}";	
var root = "${root}";
</script>


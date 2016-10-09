<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 分页 -->
<input type="hidden" name="totalPage" id="totalPage" value="${pageGrid.total}" />

<div class="dataTables_paginate paging_bootstrap pagination ">
	<ul id="page">
		<li><a href="javascript:void(0);" onclick="goTo(1);">首页</a></li>
		<li><a href="javascript:void(0);" onclick="goTo(${pageGrid.page - 1});">上一页</a></li>
		<li><a>[${pageGrid.page}/${pageGrid.total}]页&nbsp;&nbsp;
			[${pageGrid.records}] 条</a></li>
		<li><a href="javascript:void(0);" onclick="goTo(${pageGrid.page + 1});">下一页</a></li>
		<li><a href="javascript:void(0);" onclick="goTo(${pageGrid.total});">尾页</a></li>
		<li><a href="javascript:void(0);" onclick="jump();" id="jumpPageHref">跳转</a><input type="text" id="jumpPage" style="width:30px;"/></li>
	</ul>
</div>

<style type="text/css">
	#page li a:HOVER {
		background-color: #41cac0;
}

</style>

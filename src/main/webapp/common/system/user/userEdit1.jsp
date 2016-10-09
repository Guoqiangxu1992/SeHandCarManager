<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<title>普通用户列表</title>
<%@include file="/common/jsp/taglib.jsp"%>
 <link rel="stylesheet" type="text/css" href="${xgq }/js/paginate/myPagination.css" />
<script type="text/javascript" >


function editMenu(id){
	var url = ctx + "menu/toUpdateMenu.do";
	
	//在编辑页面, 点击返回 和 提交 按钮, 都得回到列表页面, 
	//把回到列表页面的参数带着,保证修改列表页面只需修改数据库即可
	var param = {
			statement: '${statement}',
			tourl: '${tourl}',
			id : id
	}
	common.loadPage(url,param);
	
}

function deleteMenu(id){
	common.confirmMes("确定要删除菜单吗? ",function(){
		
		var url = ctx + "menu/delete.do?id="+id;
		common.jajax(url,function(){
		common.submitForm('searchMenuForm');
		});
		
	});
}
</script>
</head>
<body>


	<div class="row">
		<div class="col-lg-12">
			<section class="panel">
				<header class="panel-heading">
					<span class="tools pull-left"> 
					<a class="icon-search" style="padding:10px;" href="javascript:void(0);" onclick="goUp(this);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					</span>
					<div class="clearfix">
						<div class="pull-right">
							<span class="label btn label-success green"
								onclick="editMenu('');">&nbsp;增加&nbsp;<i
								class="icon-plus"></i>&nbsp;
							</span>
						</div>
					</div>
				</header>
				<div class="panel-body" style="display: none;">
					<form id="searchMenuForm" role="form" class="form-inline" >
					<input type="hidden" name="statement" value="${statement }"  />
					<input type="hidden" name="tourl" value="${tourl }"  />
                        <div class="form-group">
                            <label for="menuName" >菜单名称</label>
                            <input type="text" placeholder="menuName" name="menuName" id="menuName" value="${mp.menuName }" class="form-control" >
                        </div>
                        <button style="margin-top: 23px;"  class="btn btn-success" type="button" onclick="common.submitForm('searchMenuForm')"  >查询</button>
                        <button style="margin-top: 23px;"  class="btn btn-default" type="button" onclick="common.clearForm('searchMenuForm')">重置</button>
                    </form>
					
				</div>


				<table class="table table-striped table-advance table-hover">
					<thead>
						<tr>

							<th><i class="icon-bookmark"></i>用户ID</th>
							<th><i class="icon-bookmark"></i>登录名</th>
							<th><i class="icon-bookmark"></i>真实姓名</th>
							<th><i class="icon-bookmark"></i>电话</th>
							<th><i class="icon-edit"></i> 操作</th>

						</tr>
					</thead>
					<tbody>
					<!--  id, pid, name, permission, VALUE , POSITION, lev -->
						<c:forEach var="p" items="${pageGrid.rows }" varStatus="ind">
							<tr>
								<td>${ind.index +1}</td>
								<td>${p.name }</td>
								<td>
									<c:if test="${p.lev == '1' }">
	                                 	 一级菜单
	                                  </c:if> <c:if test="${p.lev == '2' }">
	                                 	 二级菜单
	                                  </c:if>
									</td>
								<td>${p.position }</td>
								<td>
									<button class="btn btn-primary btn-xs"
										onclick="editMenu(${p.id});">
										<i class="icon-edit" title="编辑">编辑</i>
									</button>
									<button class="btn btn-danger btn-xs" 
										onclick="deleteMenu(${p.id });">
										<i class="icon-trash" title="删除">删除</i>
									</button>
								</td>
								
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</section>
		</div>
	</div>


	<!-- 主体内容结束 -->
	<!-- 分页 -->
	<input type="hidden" value="searchMenuForm" id="currentFormId" />
	 <script type='text/javascript' src=${xgq }/js/paginate/jquery.myPagination.js'></script>
    <script type='text/javascript' src=${xgq }/js/paginate/commonPagination.js'></script> 






</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>

<title>普通用户列表</title>
<%@ include file="/WEB-INF/common/common.jsp"%>
<script type="text/javascript"
	src="${xgq }/common/bootstrap/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript"
	src="${xgq }/common/bootstrap/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<script type="text/javascript"
	src="${xgq}/common/bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script type='text/javascript' src="${xgq }/js/paginate/jquery.myPagination.js"></script>
<script type='text/javascript' src="${xgq }/js/paginate/commonPagination.js"></script> 
<script type='text/javascript' src="${xgq }/js/user/userEdit.js"></script> 
    


<script type="text/javascript">

 function DateFormat(time, format){
    var t = new Date(time);
    var tf = function(i){return (i < 10 ? '0' : '') + i};
    return format.replace(/yyyy|MM|dd|HH|mm|ss/g, function(a){
        switch(a){
            case 'yyyy':
                return tf(t.getFullYear());
                break;
            case 'MM':
                return tf(t.getMonth() + 1);
                break;
            case 'mm':
                return tf(t.getMinutes());
                break;
            case 'dd':
                return tf(t.getDate());
                break;
            case 'HH':
                return tf(t.getHours());
                break;
            case 'ss':
                return tf(t.getSeconds());
                break;
        }
    })
}
$(function(){
	$(".form_date").datepicker({
	    format: "yyyy-mm-dd",
	    showMeridian: true,
	    autoclose: true,
	    todayBtn: true,
	    startDate: "2015-02-14 ",
	});
	
});
function search(){
	//COMMON_PAGINATION.reset();
	var loginName = $('#loginName').val().trim();
	var roleId = $('#roleId option:selected') .val();
	var startTime1 = $('#startTime').val();
	var endTime1 = $('#endTime').val();
	var param = {
			'loginName': loginName,
			'roleId' : roleId
		};
	COMMON_PAGINATION.initParam(param);//@
	var aj = $.ajax( {    
	    url:'${xgq}/user/loginUserList.do',// 跳转到 action    
	    type:'POST',    
	    dataType:'json',  
	    data:param,  
	    success:function(data) {
	    	var str = eval(data);
	    	 if(str!=''){
        		 $("#taskResult").empty();
        		 $.each(str.rows,function(n,value){
        			    html = "";
	     	            html += '<tr>';
	     	            html += '<td><p class="long_txt">'+value.id+'</p></td>';
	     	            html += '<td> <p class="long_txt">'+value.loginName+'</p></td>';
	     				html += '<td><p class="long_txt">'+value.name+'</p></td>';
	     				html += '<td><p class="long_txt">'+value.phone+'</p></td>';
	     				html += '<td><p class="long_txt">'+value.email+'</p></td>';
	     				if(value.roleId==1){
	     					html += '<td><p class="long_txt">'+"管理员"+'</p></td>';
	     				}else{
	     					html += '<td><p class="long_txt">'+"普通用户"+'</p></td>';
	     				}
	     				   var date = DateFormat(value.makeTime,'yyyy-MM-dd');
	     					html += '<td><p class="long_txt">'+date+'</p></td>';
	     					html+='<td><button class="btn btn-primary btn-xs"onclick="editArticle(${p.id});"><i class="icon-edit" title="编辑">编辑</i></button></td>';
	     				    html +='</tr>';
     				       $("#taskResult").append(html);
	});  
        		 COMMON_PAGINATION.refresh(data);
}
	    }
	});
}


</script>
<link rel="stylesheet" type="text/css" href="${xgq }/js/paginate/myPagination.css" />
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<section class="panel">
				<header class="panel-heading">
					<span class="tools pull-left"> <a class="icon-search"
						style="padding: 10px;" href="javascript:void(0);"
						onclick="goUp(this);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
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
					<form id="myForm" role="form" class="form-inline" method="post">
						<input type="hidden" name="" value="" />
						<div class="form-group">
							<label for="title">登录名</label> <input type="text"
								placeholder="loginName" name="loginName" id="loginName"
								class="form-control">
						</div>
						<div class="form-group">
							<label for="approvestatus">用户角色</label> 
							<select placeholder="用户角色" name="roleId" id="roleId"class="form-control">
							</select>
						</div>

						<div class="form-group date " style="width: 150px"
							data-date="2012-12-21T15:25:00Z">
							<label>注册日期开始于</label> <input type="text" size="16"
								name="startTime" id="startTime"
								class="form-control form_date">
						</div>
						<div class="form-group date form_datetime-meridian"
							style="width: 150px">
							<label>注册日期结束于</label> <input type="text" size="16"
								name="EndTime" id = "endTime"
								class="form-control form_date">
						</div>
						<button style="margin-top: 23px;" class="btn btn-success"
							type="button" onclick="search()">查找</button>
						<button style="margin-top: 23px;" class="btn btn-default"
							type="button" onclick="reset()">重置</button>
					</form>
				</div>


				<table class="table table-striped table-advance table-hover">
					<thead>
						<tr>

							<th><i class="icon-bookmark"></i>用户ID</th>
							<th><i class="icon-bookmark"></i>登录名</th>
							<th><i class="icon-bookmark"></i>真实姓名</th>
							<th><i class="icon-bookmark"></i>电话</th>
							<th><i class="icon-bookmark"></i>邮箱</th>
							<th><i class="icon-bookmark"></i>用户角色</th>
							<th><i class="icon-bookmark"></i>注册时间</th>
							<th><i class="icon-edit"></i> 操作</th>

						</tr>
					</thead>
					<tbody class = "taskResult" name="taskResult" id="taskResult">

					</tbody>
				</table>
			</section>
		</div>
	</div>
  <div class="table_handle page_box clearfix">
				<div class="page-model clearfix financial-record-page fr">
					<div class="yhdbk-page clearfix">
						<div id="pagination" class="pg_right"></div>
					</div>
				</div>		
			</div>

	<!-- 主体内容结束 -->
	<!-- 分页 -->
	<input type="hidden" value="searchMenuForm" id="currentFormId" />






</body>
<script type="text/javascript">
$(document).ready(function() {
	// 调用分页控件初始化函数
	COMMON_PAGINATION.init("pagination",4, search);
});

</script>
</html>
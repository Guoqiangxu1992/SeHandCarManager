var common = {
		
		
	enUrl : function(url){
		var url1 = encodeURI(encodeURI(url));
		if(url1.indexOf("?")>0){
			url1 = url1 + '&wt_=' + Math.random();
		}else{
			url1 = url1 + '?wt_=' + Math.random();
		}
		return url1;
	},
	jajax : function(url,callback){
		var url1 = common.enUrl(url);
				$.ajax({
					type:"post",
					contentType:"application/json",
					async:true,///////////////////
					url: url1,
					datatype:"json",
					data:"",
					success: function(data){
							//var data = eval('('+data+')');
							callback(data);
					}
				});
	},

	jajaxTB : function(url,callback){
		var url1 = common.enUrl(url);
				$.ajax({
					type:"post",
					contentType:"application/json",
					async:false,////////////////////
					url: url1,
					datatype:"json",
					data:"",
					success: function(data){
							//var data = eval('('+data+')');
							callback(data);
					}
				});
	},

	dajax : function(url,data1,callback){
		var url1 = common.enUrl(url);
				$.ajax({
					type:"post",
					contentType:"application/x-www-form-urlencoded",
					async:true,
					url: url1,
					datatype:"json",
					data: data1 == null ? '' : data1,
					success: function(data){
							//var data = eval('('+data+')');
							callback(data);
					}
				});
	},
	dajaxTB : function(url,data1,callback){
		var url1 = common.enUrl(url);
				$.ajax({
					type:"post",
					contentType:"application/x-www-form-urlencoded",
					async:false,////////////////////
					url: url1,
					datatype:"json",
					data: data1 == null ? '' : data1,
					success: function(data){
							//var data = eval('('+data+')');
							callback(data);
					}
				});
	},
	
	/**
	 * 加载页面的通用方法
	 */
	loadPage: function(url,data1){
		var url1 = common.enUrl(url);
		//调用的时候得传 带项目名称(ctx)的地址. 例: var url = ctx + "common/s.do";
		$.ajax({
			type:"post",
			contentType:"application/x-www-form-urlencoded;charset=UTF-8",
			async:true,///////////////////
			url: url,
			datatype:"html",
			data:data1 == null ? '' : data1,
			success: function(data){
				$("#mainSection").html(data);
			}
		});
	},
	
	encode: function(url){
		return encodeURI(encodeURI(url));
	},
	
	
	//通用的从编辑页面,点击返回按钮 到列表页面
	backToList : function(){
		var statement = $("input[name='statement']").val();
		var tourl =  $("input[name='tourl']").val();
		var url = ctx + "common/s.do?statement="+statement+"&tourl="+tourl;
		common.loadPage(url,null);
		return ;
	},
	
	//通用 提交表单 查询   到通用controller
	submitForm : function(formId){
		var data = $("#"+formId).serialize();
		var url = ctx + "common/s.do";
		common.loadPage(url,data);
		return ;
	},
	
	//提交表单到指定地址
	submitForm2Path : function(formId,url){
		var data = $("#"+formId).serialize();
		common.loadPage(url,data);
		return ;
	},
	
	
	//reset button 会把表单值设置为初始化页面时候的值,   
	//这里需要设置成''
	clearForm : function(formId){
		var $form = $('#' + formId);
		$form.find('input:text').val('');
		return ;
	},
	

	//按钮样式:btn btn-default  btn-primary btn-success btn-info btn-warning btn-danger btn-link
	
	
	/*
	 * 点击表格的行，改变颜色。
	 * id： tr的id
	 * type： 颜色样式 success info 等。
	 */
	clicktr: function(id,type){
		$("#"+ id).toggleClass(type);
	},
	//取消所有的选中状态
	clearTrClass: function(tableId){
		$("#"+tableId +" tbody tr").removeClass();
	},
	
	/*
	 * 通过tableid 获取所有被选中的tr的id， 逗号隔开。  1,2,3
	 * tableId: 表格id
	 * type： 表格样式 success， info 等。
	 */
	getIds: function(tableId, type){
		//console.info(type);
		var trids = '';
		$.each($("#"+tableId+" tbody tr"), function(i , n){
			//console.info(i);//序号
			//console.info(n);//元素
			//通过class判断被选中的记录
			//console.info(n.id);
			//console.info($("#"+n.id).attr('class'));
			
			if($("#"+n.id).attr('class') == type ){
				trids += n.id + ',';
			}
			
		});
		var ids = trids.substring(0,trids.length-1);
		return ids;
	},
	
	
	//刷新下拉菜单 <select>标签id,  action地址, 参数
	refreshSelect: function(selectId,action,param){
		var p = {'index' : param};
		var url = ctx+"selectOption.do?action="+action;
		common.dajax(url,p,function(data){
			var str = "<option value=''>请选择</option>";
			for(var i=0; i<data.length; i++){
				str += "<option value='"+data[i].id+"'>"+data[i].name+"</option>";
			}
			$("#"+selectId).html(str);
		});
	},
	
	
	refreshSelect2: function(selectId,action,param,callback){
		var p = {'index' : param};
		var url = ctx+"selectOption.do?action="+action;
		common.dajax(url,p,function(data){
			var str = "<option value=''>请选择</option>";
			for(var i=0; i<data.length; i++){
				str += "<option value='"+data[i].id+"'>"+data[i].name+"</option>";
			}
			$("#"+selectId).html(str);
			callback();
		});
	},
	//******************** alert confirm beginbeginbeginbeginbeginbegin begin********************
	tempFunction: "",  //
	
	
	alertMes: function(msg, callback){
		$("#my_alert_body").html(msg);
		common.tempFunction = callback;
		$("#my_alert").slideDown('fast');
		$("#my_backdrop").show();
	},
	
	//提示是否继续操作
	confirmMes: function(msg, callback){
		$("#my_confirm_body").html(msg);
		common.tempFunction = callback;
		$("#my_confirm").slideDown('fast');
		$("#my_backdrop").show();
		
	}
	//******************** alert confirm endendendendendendend  end******************************


		
};
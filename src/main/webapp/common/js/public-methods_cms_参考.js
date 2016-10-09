/**
 * 框架公共方法类 *****
 */


var originUM = null;
var um1 = null;
var um2 = null;
var um3 = null;
var um4 = null;
var um5 = null;

var outTime = 500;

var url;
var key;
var valueId;
var id;
var value;
/********公共方法开始********/

/**
 * 进入指定页面
 * @param url
 * @param params
 */
function goJsp(url,params){
	url = EossGlobal.basePath + url;
	goUrl(url,params);
}

/**
 * 进入add/edit页面用的方法
 * @param url
 */
function goInputJsp(url,params){
	goJsp(url,params);
	setTimeout("initInputConfig()",outTime);
}

/**
 * 加载add/edit页面的配置
 */
function initInputConfig(){
	$("#form").validate();
}

/**
 * 提交表单方法
 * @param responseUrl
 * @param params
 */
function goSubmit(responseUrl){
	if($("#form").valid(this,'填写信息不完整。') == false){
		return;
	}
	$("#form").ajaxForm({
		success:function (data, textStatus) {
	    	goJsp(responseUrl,null);
	    },
		error: function(data, textStatus){
			alert('操作失败，请联系系统管理员');
		}
	});
	$("#form").submit();
}

/**
 * 提交带上传插件表单的方法/用于update表单
 * @param responseUrl
 * @param params
 */
function goUpdate(responseUrl){
	fixUpdate();
	$("#form").ajaxForm({
		success:function (data, textStatus) {
			goJsp(responseUrl,null);
	    },
		error: function(data, textStatus){
			alert('操作失败，请联系系统管理员');
		}
	});
	$("#form").submit();
}

/**
 * 处理上传插件是否为空
 */
function fixUpdate(){
	var file = $("#picFile");
	if(file.val() == null || file.val() == ""){
		$("#form").removeAttr("enctype");
		file.remove();
	}
	var graylogoFile = $("#graylogo");
	var colorlogoFile = $("#colorlogo");
	if(graylogoFile.val() == null || graylogoFile.val() == ""){
//		$("#form").removeAttr("enctype");
		graylogoFile.remove();
	}
	
	if(colorlogoFile.val() == null || colorlogoFile.val() == ""){
//		$("#form").removeAttr("enctype");
		colorlogoFile.remove();
	}
}

/**
 * 弹出删除框
 * @param url
 * @param id
 */
function goDelete(para_url,para_key,para_valueId){
	url = para_url;
	key = para_key;
	valueId = para_valueId;
}

/**
 * 执行删除
 */
function doDelete(){
    url= EossGlobal.basePath + url;
    $.ajax({
		type : 'POST',
		url : url,
		data: key + "=" + valueId,
		dataType : "json",
		success:function (data, textStatus) {
			$("#tr_"+valueId+"").remove();
	    },
		error: function(data, textStatus){
			alert('操作失败，请联系系统管理员');
		}
	});
}

/**
 * 弹出预览内容
 * @param id
 */
function showContent(id){
	var contentVal = $("#hidden_"+id).val();
	contentVal = contentVal.replace(/&amp;/g,"&");
	contentVal = contentVal.replace(/&lt;/g,"<");
	contentVal = contentVal.replace(/&gt;/g,">");
	contentVal = contentVal.replace(/&quot;/g,"\"");
	$("#modal-content").html(contentVal);
}

/**
 * 显示/隐藏参数框
 * @param para
 */
function goUp(para){
	var el = jQuery(para).parents(".panel").children(".panel-body");
    if (jQuery(para).hasClass("fa-chevron-down")) {
        jQuery(para).removeClass("fa-chevron-down").addClass("fa-chevron-up");
        el.slideUp(200);
    } else {
        jQuery(para).removeClass("fa-chevron-up").addClass("fa-chevron-down");
        el.slideDown(200);
    }
}

/*******************分页信息**********begin*********/	
function goTo(page){
	var formId = $("#formId").val();
	var pageId = $("#pageId").val();
	var totalPage = parseInt($("#totalPage").val());
	var $form = $('#' + formId);
	var $page = $('#' + pageId);
	
	var reg = /^(\d+)$/;
	if(null==page||page==""){
		page = 1;
	}
	if(!reg.test(page)){
		alert('提示:只能输入数字!');
		return;
	}
	
	if(page > totalPage){
		page = totalPage;
	}
	
	if(page < 1){
		page = 1;
	}
	//$.messager.wait('正在操作，请稍候...');
	$page.val(page);
	goUrl($form.attr("action"),$form.serialize());
}

/**
 * 跳入第几页
 */
function jump(){
	goTo($('#jumpPage').val());
}
/*******************分页信息************end*******/	

/**
 * 清空表单
 */
function clearForm() {
	var formId = $("#formId").val();
	var $form = $('#' + formId);
	$form.find(':input',':select').val('').removeAttr('checked').removeAttr('selected');
}

/**
 * 销毁UEDITER插件
 */
function delUm(){
	if(originUM != null){
		originUM.destroy();
		originUM = null;
	}
	if(um1 != null){
		um1.destroy();
		um1 = null;
	}
	if(um2 != null){
		um2.destroy();
		um2 = null;
	}
	if(um3 != null){
		um3.destroy();
		um3 = null;
	}
	if(um4 != null){
		um4.destroy();
		um4 = null;
	}
	if(um5 != null){
		um5.destroy();
		um5 = null;
	}
}

/**
 * 加载配置公共方法
 * @param method
 */
function initConfig(method){
	setTimeout(method,outTime);
}
/********公共方法结束********/


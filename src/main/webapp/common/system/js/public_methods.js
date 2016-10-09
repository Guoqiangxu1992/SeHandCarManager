/**
 * 系统中用到的通用方法 一般不用手动调用
 */



/**
 * 显示/隐藏 查询参数框
 * @param para
 */
function goUp(para){
	var el = jQuery(para).parents(".panel").children(".panel-body");
    if ($(para).hasClass("icon-search")) {
        $(para).removeClass("icon-search").addClass("icon-reply");
        el.slideDown(200);
    } else {
        $(para).removeClass("icon-reply").addClass("icon-search");
        el.slideUp(200);
    }
}



/*******************分页信息**********begin*********/	
function goTo(page){
	
	var reg = /^(\d+)$/;
	if(null==page||page==""){
		page = 1;
	}
	if(!reg.test(page)){
		common.alertMes("只能输入数字",null);
		return;
	}
	var totalPage = parseInt($("#totalPage").val());
	if(page > totalPage){
		page = totalPage;
	}
	if(page < 1){
		page = 1;
	}
	var curFormId = $("#currentFormId").val();
	
	var data = $("#"+curFormId).serialize();
	//console.info(data);
	data = data + "&page="+page;//添加页码信息
	var url = ctx + "common/s.do";
	common.loadPage(url,data);
	return ;
}

/**
 * 跳入第几页
 */
function jump(){
	goTo($('#jumpPage').val());
}
/*******************分页信息************end*******/	

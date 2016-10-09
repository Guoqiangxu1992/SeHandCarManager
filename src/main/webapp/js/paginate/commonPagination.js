/*
 * 分页公共JS-by chenkuan
 */
var COMMON_PAGINATION = new Object();
var PAG_OBJ;// 当前分页对象

/*
 * 分页框初始化
 * objName-分页对象id
 * limit-每页限制数
 * callBackFn-回调函数
 */
COMMON_PAGINATION.init = function(objName, limit, callBackFn) {
	if (!PAG_OBJ) {
		var opt = {total:0,items_per_page:limit,num_display_entries:5,current_page:0,pageList:[10,20,50],callback:callBackFn};
		$("#"+objName).myPagination(opt);
		PAG_OBJ = $("#"+objName);
	}
};

/*
 * 重置（从第一页开始查）
 */
COMMON_PAGINATION.reset = function() {
    if (PAG_OBJ) {
	    var opts = PAG_OBJ.myPagination('options');
	    opts.current_page = 0;
	    PAG_OBJ.myPagination("refresh");
    }
};

/*
 * 设置AJAX分页参数（每页限制数和当前页数）
 */
COMMON_PAGINATION.initParam = function(param){
	if (PAG_OBJ) {
		var opts = PAG_OBJ.myPagination('options');
		param.pgLimit = opts.items_per_page;
		param.pgCurrentPage = opts.current_page+1;
	}
};

/*
 * 刷新AJAX分页参数（数据总数）
 */
COMMON_PAGINATION.refresh = function(data){
	if (PAG_OBJ) {
		var total = data.total;
		var opts = PAG_OBJ.myPagination('options');
		opts.total = Number(total);
		PAG_OBJ.myPagination("refresh");
	}
};


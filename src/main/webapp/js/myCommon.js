/*var common{
	*//**
	 * 加载页面的通用方法
	 *//*
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
	}
	
	
	
	
	
}*/
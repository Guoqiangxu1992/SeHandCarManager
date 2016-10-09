	
	var father=[];
	var child=[];
	var treeholder=$("#nav-accordion");
	var mainActiveId;
	
	$(function() {
		//ajax取用户拥有的权限
		loadPermission();
		
	});

	function loadPermission(){
		url = '/SecondHandCarManager/menu/getMenuByName.do';
		$.ajax({
			async: false,
			type: 'POST',
			dataType: 'json',
			url: url,
			error : function(XMLHttpRequest, textStatus, errorThrown) {
			},
			success: function(zTreeJson){
				
				initDatas(zTreeJson);
			}
		});
	}
	function initDatas(tree){
		for(var i=0;i<tree.length;i++){
			if(tree[i].pid == 0){//PID=1 父节点
				father.push(tree[i]);
			}else{
				child.push(tree[i]);
			}
		}
		for(var i=0;i<father.length;i++){
			var activeId = father[i].id + "-0";
			var abId = father[i].id + "-a";
			var url = father[i].url;
			url = '/SecondHandCarManager' + url;
			//url = url + "?active=" + abId;
			if(father[i].url!=null && father[i].url!=""){
				           //       "<li id="+activeId+" >                  <a id="+abId+" href=\"inbox.html\">                                                        <i class=\"icon-envelope\"></i><span>Mail </span></a></li>"
				treeholder.append("<li id="+activeId+" class=\"sub-menu dcjq-parent-li\"><a id="+abId+" href=\"javascript:void(0);\" onclick=\"locationUrl('"+url+"','"+abId+"')\"><i class=\"icon-dashboard\"></i><span>"+father[i].MenuName+"</span></a></li>");
			}else{
				//url为null 活 "" 说明   是有子节点的父节点 
				treeholder.append("<li id="+activeId+" class=\"sub-menu dcjq-parent-li\"><a id="+abId+" href=\"javascript:void(0);\" class=\"dcjq-parent \"><i class=\"icon-dashboard\"></i><span>"+father[i].MenuName+"</span><span class=\"dcjq-icon\"></span></a></li>");
				iter(father[i].id);
			}
		}
	}

	function iter(id){
		$("#"+id+"-0").append("<ul id=\""+id+"-1"+"\" class=\"sub\" style=\"display: none;\"></ul>");
		for(var i=0;i<child.length;i++){
			var activeId = child[i].id + "-" + id + "-a";
			var url = child[i].url;
			url = '/SecondHandCarManager'  + url;//加上系统名称
			if(child[i].pid==id){
				if (child[i].url!=''&&child[i].url!=null) {
					$("#"+id+"-1").append("<li id="+activeId+"><a href=\"javascript:void(0);\" onclick=\"locationUrl('"+url+"','"+activeId+"')\">"+child[i].MenuName+"</a></li>");
				}else{
					$("#"+id+"-1").append("<li id=\""+child[i].id+"-0"+"\" class=\"sub-menu\"><a href=\"javascript:;\">"+child[i].MenuName+"</a></li>");
					iter(child[i].id);
				}
			}
		}
	}

	function locationUrl(url,activeId){
		if(mainActiveId != null && mainActiveId != ""){
			var acrr = mainActiveId.split("-");
			if(acrr.length = 3){
				//二级
				var fatherActive = acrr[1]+"-"+acrr[2];
				$("#"+mainActiveId).removeAttr("class");
				$("#"+fatherActive).removeAttr("class");
			}else{
				//一级
				$("#"+mainActiveId).removeAttr("class");
			}
		}
		if(activeId != null && activeId != ""){
			var acrr = activeId.split("-");
			if(acrr.length = 3){
				//二级
				var fatherActive = acrr[1]+"-"+acrr[2];
				$("#"+activeId).attr("class", "active");
				$("#"+fatherActive).attr("class", "active");
			}else{
				//一级
				$("#"+activeId).attr("class", "active");
			}
			mainActiveId = activeId;
		}
		common.loadPage(url,null);
	}

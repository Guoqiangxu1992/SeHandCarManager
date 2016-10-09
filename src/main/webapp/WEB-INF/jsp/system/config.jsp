<%@ page pageEncoding="UTF-8"%>
<!-- Button trigger modal -->
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content" style="width:800px;">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> 
				<h4 class="modal-title" id="myModalLabel">内容预览</h4>
			</div>
			<div id="modal-content" class="modal-body" style="overflow: hidden;"></div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">&nbsp;关&nbsp;闭&nbsp;</button>
			</div>
		</div>
	</div>
</div>
<!-- modal --> 
<!-- Modal --> 
<div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> 
    <div class="modal-dialog"> 
        <div class="modal-content"> 
            <div class="modal-header"> 
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> 
                <h4 class="modal-title">提示</h4> 
            </div> 
            <div id="delete-content" class="modal-body"> 
            	确定要删除吗？
            </div> 
            <div class="modal-footer"> 
            	<button class="btn btn-warning" type="button" data-dismiss="modal" onclick="doDelete()">&nbsp;确&nbsp;定&nbsp;</button> 
                <button data-dismiss="modal" class="btn btn-default" type="button">&nbsp;取&nbsp;消&nbsp;</button> 
            </div> 
        </div> 
    </div> 
</div>
<!-- modal -->
<!-- Modal -->
<div class="modal fade" id="resultModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title">提示</h4>
			</div>
			<div class="modal-body">
				操作成功！
			</div>
			<div class="modal-footer">
				<button data-dismiss="modal" class="btn btn-danger" type="button">&nbsp;确&nbsp;定&nbsp;</button>
			</div>
		</div>
	</div>
</div>
<!-- modal -->
<script id="template-upload" type="text/x-tmpl"> 
      {% for (var i=0, file; file=o.files[i]; i++) { %}
      <tr class="template-upload fade">
          <td>
              <span class="preview"></span>
          </td>
          <td>
              <p class="name">{%=file.name%}</p>
              <strong class="error text-danger"></strong>
          </td>
          <td>
              <p class="size">Processing...</p>
              <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
          </td>
          <td>
              {% if (!i && !o.options.autoUpload) { %}
              <button class="btn btn-primary start">
                  <i class="glyphicon glyphicon-upload"></i>
                  <span>开始上传</span>
              </button>
              {% } %}
              {% if (!i) { %}
              <button class="btn btn-warning cancel">
                  <i class="glyphicon glyphicon-ban-circle"></i>
                  <span>取消</span>
              </button>
				<b>序号：</b>
				<input type="text" name="orderNo" id="orderNo" />
              {% } %}
          </td>
      </tr>
      {% } %}
</script>
<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl"> 
      {% for (var i=0, file; file=o.files[i]; i++) { %}
      <tr class="template-download fade">
          <td>
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                {% } %}
            </span>
          </td>
          <td>
              <p class="name">
                  {% if (file.url) { %}
                  <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                  {% } else { %}
                  <span>{%=file.name%}</span>
                  {% } %}
              </p>
              {% if (file.error) { %}
              <div><span class="label label-success">Success</span> 上传成功</div>
              {% } %}
          </td>
          <td>
              <span class="size">{%=o.formatFileSize(file.size)%}</span>
          </td>
          <td>
              {% if (file.deleteUrl) { %}
              <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
              <i class="glyphicon glyphicon-trash"></i>
              <span>Delete</span>
              </button>
              <input type="checkbox" name="delete" value="1" class="toggle">
              {% } else { %}
              <button class="btn btn-warning cancel">
                  <i class="glyphicon glyphicon-ban-circle"></i>
                  <span>Cancel</span>
              </button>
              {% } %}
          </td>
      </tr>
      {% } %}
</script>
<script type="text/javascript">
	var _uat=navigator.userAgent;
	if(_uat.indexOf("Firefox")>0){
		var img1 = document.getElementById("img1");
		if(img1 != null){
			if(img1.width > 900){
				img1.style.width = "900px";
			}
		}
	};
</script>
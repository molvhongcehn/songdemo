<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<ol class="breadcrumb">
			<li><a href="${contextPath}/index.do">主页</a>
			</li>
			<li><a href="${contextPath}/index.do">歌曲分类管理</a>
			</li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-table"></i> <span>歌曲分类管理</span>
				</div>
			<div id="operation-panel" style="position: absolute;right: 0;top: 0;z-index: 9;margin-right: 10px">
					<a href="${contextPath}/dishes/category_add.do" class="ajax-link btn btn-primary">添加分类</a>
				</div>
			</div>
			<div class="box-content">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>分类名</th>
							<th>描述</th>
							<th>排序</th>
							<th>创建时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${itemList}" var="item" varStatus="status">
							<tr>
								<td>${status.count}</td>
								<td>${item.name}</td>
								<td>${item.description}</td>
								<td>${item.sort}</td>
								<td><fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd hh:mm"/></td>
								<td><a href="${contextPath}/dishes/category_edit.do?id=${item.id}" class="ajax-link btn btn-primary" style="margin: 0px">修改</a>&nbsp;&nbsp;
								<a href="${contextPath}/dishes/category_delete.do?id=${item.id}" class="ajax-link delete btn btn-danger" style="margin: 0px">删除</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
	$('#operation-panel').on('click','a', function(e){
		if ($(this).hasClass('ajax-link')) {
			e.preventDefault();
			var url = $(this).attr('href');
			LoadAjaxContent(url);
		}
	});
	
	$('.table').on('click', 'a', function (e) {
		if ($(this).hasClass('ajax-link')) {
			if ($(this).hasClass('delete')) {
				if (!confirm('确定删除吗？')) {
					return false;
				}
			}
			e.preventDefault();
			var url = $(this).attr('href');
			LoadAjaxContent(url);
		}
	});
});
</script>
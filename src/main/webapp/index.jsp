<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>音乐小会</title>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="/WEB-INF/includes/styles.jspf"%>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="${contextPath}/js/html5shiv.js"></script>
<script src="${contextPath}/js/respond.min.js"></script>
<![endif]-->
</head>
<body>
<!--Start Header-->
<div id="screensaver">
	<canvas id="canvas"></canvas>
	<i class="fa fa-lock" id="screen_unlock"></i>
</div>
<div id="modalbox">
	<div class="devoops-modal">
		<div class="devoops-modal-header">
			<div class="modal-header-name">
				<span>Basic table</span>
			</div>
			<div class="box-icons">
				<a class="close-link">
					<i class="fa fa-times"></i>
				</a>
			</div>
		</div>
		<div class="devoops-modal-inner">
		</div>
		<div class="devoops-modal-bottom">
		</div>
	</div>
</div>
<header class="navbar">
	<div class="container-fluid expanded-panel">
		<div class="row">
			<div id="logo" class="col-xs-12 col-sm-2">
				<a href="${contextPath}/index.do">音乐小会</a>
			</div>
			<div id="top-panel" class="col-xs-12 col-sm-10">
				<div class="row">
					<div class="col-xs-8 col-sm-4">
						<a href="#" class="show-sidebar">
						  <i class="fa fa-bars"></i>
						</a>
						<div id="search">
							<input type="text" placeholder="search"/>
							<i class="fa fa-search"></i>
						</div>
					</div>
					<div class="col-xs-4 col-sm-8 top-panel-right">
						<ul class="nav navbar-nav pull-right panel-menu">
							<li class="hidden-xs">
								<a href="${contextPath}/call/record_list.do" class="ajax-link">
									<i class="fa fa-bell"></i>
									<span id="messages" class="badge">${messageCount}</span>
								</a>
							</li>
							
							<li class="dropdown">
								<a href="#" class="dropdown-toggle account" data-toggle="dropdown">
									
									<i class="fa fa-angle-down pull-right"></i>
									<div class="user-mini pull-right">
										<span class="welcome">Welcome,</span>
										<span>${currentUser.account}</span>
									</div>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="${contextPath}/security/account_list.do" class="ajax-link">
											<i class="fa fa-user"></i>
											<span>帐号管理</span>
										</a>
									</li>
									<li>
										<a href="${contextPath}/security/role_list.do" class="ajax-link">
											<i class="fa fa-key"></i>
											<span>权限设置</span>
										</a>
									</li>
									<li>
										<a href="${contextPath}/security/password_reset.do" class="ajax-link">
											<i class="fa fa-cog"></i>
											<span>修改密码</span>
										</a>
									</li>
									<li>
										<a href="${contextPath}/logout.do">
											<i class="fa fa-power-off"></i>
											<span>退出</span>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!--End Header-->
<!--Start Container-->
<div id="main" class="container-fluid">
	<div class="row">
		<div id="sidebar-left" class="col-xs-2 col-sm-2">
			<ul class="nav main-menu">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle">
						<i class="fa fa-phone"></i>
						<span class="hidden-xs">呼叫管理</span>
					</a>
					<ul class="dropdown-menu">
						<li><a class="active ajax-link" href="${contextPath}/call/record_list.do">呼叫记录</a></li>
						<li><a class="ajax-link" href="${contextPath}/call/service_list.do">呼叫服务设置</a></li>
					</ul>
				</li>
				<li>
					<a href="${contextPath}/order/order_list.do" class="ajax-link">
						<i class="fa fa-list-alt"></i>
						<span class="hidden-xs">订单管理</span>
					</a>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle">
						<i class="fa fa-cutlery"></i>
						 <span class="hidden-xs">菜品管理</span>
					</a>
					<ul class="dropdown-menu">
						<li><a class="ajax-link" href="${contextPath}/dishes/dishes_list.do">菜品列表</a></li>
						<li><a class="ajax-link" href="${contextPath}/dishes/category_list.do">菜品分类</a></li>
						<li><a class="ajax-link" href="${contextPath}/dishes/label_list.do">菜品标签</a></li>
						<li><a class="ajax-link" href="${contextPath}/dishes/tea_list.do">茶位管理</a></li>
					</ul>
				</li>
				<li>
					<a href="${contextPath}/advert/advert_list.do" class="ajax-link">
						<i class="fa fa-bullhorn"></i>
						 <span class="hidden-xs">广告管理</span>
					</a>
				</li>
				<li>
					<a href="${contextPath}/table/table_list.do" class="ajax-link">
						<i class="fa fa-tablet"></i>
						 <span class="hidden-xs">餐桌管理</span>
					</a>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle">
						<i class="fa fa-bar-chart"></i>
						 <span class="hidden-xs">报表统计</span>
					</a>
					<ul class="dropdown-menu">
						<li><a class="ajax-link" href="${contextPath}/report/turnover_report.do">营业额报表</a></li>
						<li><a class="ajax-link" href="${contextPath}/report/sales_report.do">销售报表</a></li>
					</ul>
				</li>
				<li>
					<a href="${contextPath}/setting/system_setting.do" class="ajax-link">
						<i class="fa fa-gears"></i>
						 <span class="hidden-xs">系统设置</span>
					</a>
				</li>
				<li>
					<a href="${contextPath}/setting/printer_list.do" class="ajax-link">
						<i class="fa fa-gears"></i>
						 <span class="hidden-xs">打印设置</span>
					</a>
				</li>
			</ul>
		</div>
		<!--Start Content-->
		<div id="content" class="col-xs-12 col-sm-10">
			<div class="preloader">
				<img src="${contextPath}/images/devoops_getdata.gif" class="devoops-getdata" alt="preloader"/>
			</div>
			<div id="ajax-content"></div>
		</div>
		<!--End Content-->
	</div>
</div>
<!--End Container-->
<!-- scripts (JQuery necessary for Bootstrap's JavaScript plugins) -->
<%@ include file="/WEB-INF/includes/scripts.jspf"%>
<script type="text/javascript">
	// Create stomp client over sockJS protocol (see Note 1)
	var socket = new SockJS("${contextPath}/ws");
	var stompClient = Stomp.over(socket);
	stompClient.debug = null;
	var messageJob;

	// callback function to be called when stomp client is connected to server (see Note 2)
	var connectCallback = function() {
		//alert("connected!");
		stompClient.subscribe('/topic/notice', function(data) {
			//alert(JSON.parse(data.body));
			var messageCount = $("#messages").html();
			var count = parseInt(messageCount) + parseInt(data.body);
			$("#messages").html(count);
			if (count > 0) {
				clearInterval(messageJob);
				messageJob = setInterval(function(){
					$("#messages").fadeOut(800).fadeIn(800);
				}, 1000);
			}
			if (count == 0) {
				clearInterval(messageJob);
			}
			
		});
	};

	// callback function to be called when stomp client could not connect to server (see Note 3)
	var errorCallback = function(error) {
		// display the error's message header:
		//alert(error);
	};

	// Connect as guest (Note 4)
	stompClient.connect("guest", "guest", connectCallback, errorCallback);
	
	var messageCount = $("#messages").html();
	if (parseInt(messageCount) > 0) {
		messageJob = setInterval(function(){
			$("#messages").fadeOut(800).fadeIn(800);
		}, 1000);
	}
</script>
</body>
</html>

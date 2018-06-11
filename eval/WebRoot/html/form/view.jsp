<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'view.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="../../lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../lib/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../../lib/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="../../lib/css/bootstrap-switch.min.css">
    <link rel="stylesheet" type="text/css" href="../../lib/css/checkbox3.min.css">
    <link rel="stylesheet" type="text/css" href="../../lib/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="../../lib/css/dataTables.bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../lib/css/select2.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="../../css/style.css">
    <link rel="stylesheet" type="text/css" href="../../css/themes/flat-blue.css">
    
    <link href="css/buttons.css" rel="stylesheet" type="text/css"
	media="screen" />
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/honeySwitch.css">
  </head>
  <style type="text/css">
table {
	border-collapse: collapse;
	margin: 0 auto;
	text-align: center;
}

table td,table th {
	border: 1px solid #cad9ea;
	color: #666;
	height: 30px;
}

table thead th {
	background-color: #CCE8EB;
	width: 100px;
}

table tr:nth-child(odd) {
	background: #fff;
}

table tr:nth-child(even) {
	background: #F5FAFA;
}
</style>

#overlay,#overlay2,#overlay3,#overlay4 {
	background: #000;
	display: none;
	position: absolute;
	top: 0px;
	left: 0px;
	z-index: 100;
	/* 此处的图层要大于页面 */
}
/* 对话框样式*/
#d1,#d2,#d3,#d4 {
	display: none;
	margin: 0px auto 0px auto background-color:white;
	z-index: 200;
	margin-top: -200px;
}
</style>
<script type="text/javascript">
	/* 显示遮罩层 */
	function showOverlay(div1, div2) {
		$(div1).height(document.body.scrollHeight);
		$(div1).width(document.body.scrollWidth);
		// fadeTo第一个参数为速度，第二个为透明度
		$(div1).fadeTo(100, 0.2);
		// 解决窗口缩小时放大后不全屏遮罩的问题
		// 简单来说，就是窗口重置的问题
		/*$(window).resize(function() {
			$("#overlay").height(document.body.scrollHeight);
			$("#overlay").width(document.body.scrollWidth);
		});*/
		// 显示对话框
		$(div2).css("display", "block");
	}
	/* 隐藏覆盖层 */
	function hideOverlay(div1, div2) {
		$(div1).hide();
		// 关闭对话框
		$(div2).hide();
	}

</script>
  
  <body>
    <div class="app-container">
        <div class="row content-container">
            <nav class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-expand-toggle">
                            <i class="fa fa-bars icon"></i>
                        </button>
                        <ol class="breadcrumb navbar-breadcrumb">
                            <li class="active">首页</li>
                        </ol>
                        <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                            <i class="fa fa-th icon"></i>
                        </button>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                            <i class="fa fa-times icon"></i>
                        </button>
                        <li class="dropdown profile">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">白书元 <span class="caret"></span></a>
                            <ul class="dropdown-menu animated fadeInDown">
                                <li class="profile-img">
                                    <img src="../img/profile/picjumbo.com_HNCK4153_resize.jpg" class="profile-img">
                                </li>
                                <li>
                                    <div class="profile-info">
                                        <h4 class="username">白书元</h4>
                                        <div class="btn-group margin-bottom-2x" role="group">
                                            <button type="button" class="btn btn-default"><i class="fa fa-user"></i> 登录</button>
                                            <button type="button" class="btn btn-default"><i class="fa fa-sign-out"></i> 注册</button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="side-menu sidebar-inverse">
                <nav class="navbar navbar-default" role="navigation">
                    <div class="side-menu-container">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">
                                <div class="icon fa fa-paper-plane"></div>
                                <div class="title">教学评价管理系统</div>
                            </a>
                            <button type="button" class="navbar-expand-toggle pull-right visible-xs">
                                <i class="fa fa-times icon"></i>
                            </button>
                        </div>
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a href="index.html">
                                    <span class="icon fa fa-tachometer"></span><span class="title">首页</span>
                                </a>
                            </li>
                          	<li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-form">
                                    <span class="icon fa fa-file-text-o"></span><span class="title">个人信息管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-form" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="../form/ui-view.html">个人信息查看</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-table">
                                    <span class="icon fa fa-table"></span><span class="title">评价管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-table" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="evaluation.html">教学评价</a>
                                            </li>
                                            <li><a href="../table/datatable.html">查看评价</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            
                             <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-element">
                                    <span class="icon fa fa-desktop"></span><span class="title">系统设置</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-element" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                        	<li><a href="../ui-kits/role.html">权限设置</a>
                                            </li>
                                            <li><a href="../ui-kits/theming.html">主题修改</a>
                                            </li>
                                            <li><a href="../ui-kits/other.html">其他</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <!-- Dropdown-->
                            <li>
                                <a href="../license.html">
                                    <span class="icon fa fa-thumbs-o-up"></span><span class="title">证书</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
            </div>
            
            
            <div id="overlay"></div>
	<!-- 模态框（Modal） -->
	<div class="modal-dialog" id="d1">
		<div>
			<div class="modal-header">
				<h3 align="center" class="modal-title" id="myModalLabel">
					<b id="ht"></b>
				</h3>
			</div>
			<div class="modal-body">
				<table width="90%" class="table">
					<caption>
						<h2>个人信息</h2>
					</caption>
					<tr>
						<th>序号</th>
						<td>${employee.id }</td>
					</tr>
					<tr>
						<th>名字</th>
						<td>${employee.name }</td>
					</tr>
					<tr>
						<th>密码</th>
						<td>${employee.pwd }</td>
					</tr>
					<tr>
						<th>职位</th>
						<td>${employee.rank.rname }</td>
					</tr>
					<tr>
						<th>部门</th>
						<td>${employee.department.dname }</td>
					</tr>
					<tr>
						<th>年龄</th>
						<td>${employee.age }</td>
					</tr>
					<tr>
						<th>地址</th>
						<td>${employee.adr }</td>
					</tr>
					<tr>
						<th>月薪</th>
						<td>${employee.wage }</td>
					</tr>
				</table>
			</div>
			<div class="modal-footer"></div>
			</pre>
			<p>
				&nbsp;&nbsp;<input type="button" value="修改 "
					class="button button-glow button-rounded button-raised button-primary"
					style="width: 120px" onclick="addfirst('#overlay4','#d4')">
			</p>
		</div>
	</div>
            
            
            
        <div>
            <!-- Javascript Libs -->
            <script type="text/javascript" src="../../lib/js/jquery.min.js"></script>
            <script type="text/javascript" src="../../lib/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="../../lib/js/Chart.min.js"></script>
            <script type="text/javascript" src="../../lib/js/bootstrap-switch.min.js"></script>

            <script type="text/javascript" src="../../lib/js/jquery.matchHeight-min.js"></script>
            <script type="text/javascript" src="../../lib/js/jquery.dataTables.min.js"></script>
            <script type="text/javascript" src="../../lib/js/dataTables.bootstrap.min.js"></script>
            <script type="text/javascript" src="../../lib/js/select2.full.min.js"></script>
            <script type="text/javascript" src="../../lib/js/ace/ace.js"></script>
            <script type="text/javascript" src="../../lib/js/ace/mode-html.js"></script>
            <script type="text/javascript" src="../../lib/js/ace/theme-github.js"></script>
            <!-- Javascript -->
            <script type="text/javascript" src="../../js/app.js"></script>
  </body>
</html>

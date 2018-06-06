<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="assets/css/core.css" />
<link rel="stylesheet" href="assets/css/menu.css" />
<link rel="stylesheet" href="assets/css/amazeui.css" />
<link rel="stylesheet" href="assets/css/component.css" />
<link rel="stylesheet" href="assets/css/page/form.css" />
</head>
<body>
	<div class="account-pages">
		<div class="wrapper-page">
			<div class="text-center">
				<a href="index.html" class="logo"><span>Admin<span>to</span></span></a>
			</div>
			<div class="m-t-40 card-box">
				<div class="text-center">
					<h4 class="text-uppercase font-bold m-b-0">登录</h4>
				</div>
				<div class="panel-body">
					<form class="am-form" method="post" action="login.do">
						<div class="am-g">
							<div class="am-form-group">
								<input type="text" class="am-radius" placeholder="用户名" name="userName">
							</div>
							<div class="am-form-group form-horizontal m-t-20">
								<input type="password" class="am-radius" placeholder="密码" name="pwd">
							</div>
							<div class="am-form-group ">
								<label style="font-weight: normal;color: #999;"> <input
									type="checkbox" class="remeber"> 记住用户名
								</label>
							</div>
							<div class="am-form-group ">
								<button type="submit" class="am-btn am-btn-primary am-radius"
									style="width: 100%;">登录</button>
							</div>
							<div class="am-form-group ">
								<a href="page-recoverpw.html" class="text-muted"><i
									class="fa fa-lock m-r-5"></i> 忘记密码?</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <title>学生评价管理系统后台首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="lib/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="lib/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="lib/css/bootstrap-switch.min.css">
    <link rel="stylesheet" type="text/css" href="lib/css/checkbox3.min.css">
    <link rel="stylesheet" type="text/css" href="lib/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="lib/css/dataTables.bootstrap.css">
    <link rel="stylesheet" type="text/css" href="lib/css/select2.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/themes/flat-blue.css">
    
    
    <link rel="stylesheet" href="html/pages/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="html/pages/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="html/pages/css/bootstrap.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="html/pages/css/flexslider.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="html/pages/css/owl.carousel.min.css">
	<link rel="stylesheet" href="html/pages/css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="html/pages/css/style.css">

	<!-- Modernizr JS -->
	<script src="html/pages/js/modernizr-2.6.2.min.js"></script>
</head>

<body class="flat-blue">
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
            
<!-- 	
	<div id="page">
		<br><br>
		<br><br>
		<br><br>
		<br><br>	
	</div> -->
	

	<div id="fh5co-product">
	<div class="container">
		<div align="center" class="row" style="text-align: center;width: 1000px;margin: 0 auto">	
			<font style="color: red">${userName}</font>同学你好，欢迎评教，请选择评教老师<br>
				<form action="savaAnswer.do" method="post">
			<select style="width: 100px" name="">
			<%-- <c:forEach var="teacher" items="">
				
			</c:forEach> --%>
				<option>马老师</option>
				<option>马老师</option>
				<option>马老师</option>
				<option>马老师</option>
			</select>
			<table align="center"  border="1px" style="width:1000px"  >
				<tr style="height: 50px">
					<td>题号</td>
					<td>评价指标</td>
				</tr>
				<c:forEach var="problem" items="${list}" varStatus="num" >
					<tr style="height: 40px">
						<td>${num.index+1}</td>
						<td style="text-align: left" >
							${problem.pcontent}<br>
							<input type="radio" value="10" name="panswer${num.index+1}" >${problem.panswer1}
							<input type="radio" value="8" name="panswer${num.index+1}"  >${problem.panswer2}
							<input type="radio" value="6" name="panswer${num.index+1}"  >${problem.panswer3}
							<input type="radio" value="4" name="panswer${num.index+1}"  >${problem.panswer4}
							<input type="radio" value="2" name="panswer${num.index+1}"  >${problem.panswer5}
						</td>
					</tr>
				</c:forEach>			
			</table>
			<br>
			<p style="text-align: left">如果有其他建议，请留下宝贵建议：</p>
			
			<textarea name="acontent" style="height: 150px;width: 1000px;resize: none;">
			
			</textarea>
			<br>
			<p style="text-align: right;"><input type="submit" value="提交"></p>
			</form>
		</div>
		</div>
	</div>





	
	<!--版权--->
	<footer id="fh5co-footer" role="contentinfo">
		<div class="container">
			<div class="row row-pb-md">
			</div>

			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy; 2016 Free HTML5. 仅供学习交流</small> 
					</p>
					<p>
						<ul class="fh5co-social-icons">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</p>
				</div>
			</div>

		</div>
	</footer>
	
	

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	</div></div>
            <!-- Javascript Libs -->
            <script type="text/javascript" src="lib/js/jquery.min.js"></script>
            <script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="lib/js/Chart.min.js"></script>
            <script type="text/javascript" src="lib/js/bootstrap-switch.min.js"></script>
            <script type="text/javascript" src="lib/js/jquery.matchHeight-min.js"></script>
            <script type="text/javascript" src="lib/js/jquery.dataTables.min.js"></script>
            <script type="text/javascript" src="lib/js/dataTables.bootstrap.min.js"></script>
            <script type="text/javascript" src="lib/js/select2.full.min.js"></script>
            <script type="text/javascript" src="lib/js/ace/ace.js"></script>
            <script type="text/javascript" src="lib/js/ace/mode-html.js"></script>
            <script type="text/javascript" src="lib/js/ace/theme-github.js"></script>
            <!-- Javascript -->
            <script type="text/javascript" src="js/app.js"></script>
            <script type="text/javascript" src="js/index.js"></script>
            
		            <!-- jQuery -->
			<script src="js/jquery.min.js"></script>
			<!-- jQuery Easing -->
			<script src="js/jquery.easing.1.3.js"></script>
			<!-- Bootstrap -->
			<script src="js/bootstrap.min.js"></script>
			<!-- Waypoints -->
			<script src="js/jquery.waypoints.min.js"></script>
			<!-- Carousel -->
			<script src="js/owl.carousel.min.js"></script>
			<!-- countTo -->
			<script src="js/jquery.countTo.js"></script>
			<!-- Flexslider -->
			<script src="js/jquery.flexslider-min.js"></script>
			<!-- Main -->
			<script src="js/main.js"></script>
</body>
</html>

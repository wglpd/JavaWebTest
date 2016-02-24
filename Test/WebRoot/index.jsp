<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">
<link href="css/dashboard.css" rel="stylesheet">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/bootstrap/bootstrap-paginator.js"></script>
<script src="js/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript">
 $(function () {
 		$('#tab0').load("./user/getUserData.do");
    });
    
function showPage(tabId, url){
        $('#'+tabId).load(url); 
  }
</script>

<link rel="icon" href="image/icon/favicon.ico">
<title>信息管理平台</title>
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">信息管理平台</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">首页</a></li>
            <li><a href="#">设置</a></li>
            <li><a href="#">简介</a></li>
            <li><a href="#">帮助</a></li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="查询">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar" id="maintab">
            <li class="active"><a href="javascript:void(0);" onclick='showPage("tab0","./user/getUserData.do")'>用户管理 <span class="sr-only">(current)</span></a></li>
            <li><a href="#">报表</a></li>
            <li><a href="#">分析</a></li>
            <li><a href="#">导出</a></li>
          </ul>
        </div>
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<!-- <ul class="nav nav-tabs" role="tablist" id="myTab">
            <li role="presentation" >
                <a href="#home" aria-controls="home" role="tab" data-toggle="tab">主页</a></li>
        </ul> -->
    		
    		<div class="tab-content" id="tt">
  				<div class="tab-pane active" id="tab0" title="用户管理"></div>
  				<div class="tab-pane" id="tab1"></div>
  				<div class="tab-pane" id="tab2"></div>
  				<div class="tab-pane" id="tab3"></div>
  				<div class="tab-pane" id="tab4"></div>
			</div> 

        </div> 
      </div>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Yamazon</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/flexslider.css">
<link rel="stylesheet" href="css/jquery.fancybox.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/font-icon.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<style>
p{
margin: 40px
}
</style>
</head>
<body>
<!-- header top section -->
<section class="banner" role="banner">
 <header id="header">
    <div class="header-content clearfix"> <a class="logo" href="menu"><img src="ロゴ.jpg"></a>
      <nav class="navigation" role="navigation">
        <ul class="primary-nav">
          <li><a href="logout">Logout</a></li>
        </ul>
      </nav>
      <a href="#" class="nav-toggle">Menu<span></span></a> </div>
  </header>
</section>
<section id="hero" class="section ">
<div class ="hero text-center">
<h2>
管理者登録確認
</h2>
</div>
</section>
<div class="text-center">
<div class="container">
  <div class="row">
  <c:if test="${not empty errmsg}">
		<h4><span class="text-danger">${errmsg}</span></h4>
	</c:if>
    <h4>登録情報を確認し、再度パスワードを入力してください</h4>
    <p></p>
    <div>
    <form:form action="managerInsertResult" method="POST"  modelAttribute="yamazon">
    <h5>名前</h5>
    <div class="form-inline" style="padding: 3px;">
      <form:input type="text" class="form-control input-sm" placeholder="名前" size="45" path="managerName" readonly="true"/>
    </div>
     <h5>パスワード</h5>
    <div class="form-inline" style="padding: 3px;">
      <form:input class="form-control input-sm" placeholder="パスワード" size="45" path="confirmPassword" />
    </div>
    <form:button class="btn btn-success btn-xs">登録<span class="glyphicon glyphicon-chevron-right"></span></form:button>
    </form:form>
    </div>
    </div>
    </div>
  </div>
		<div class="text-center">
			<a href="managerInsert"><button type="button" class="return btn-outline-dark">
					<span class="glyphicon glyphicon-chevron-left"></span>戻る
				</button>
			</a>
		</div>
	<section id="hero" class="section"></section>



<footer class="footer">
  <div class="container">
    <div class="col-md-6 left">
      <p>Yamazon運営チーム</p>
      <p>TEL:0120-117-117-828828</p>
    </div>
  </div>
</footer>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/retina.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/main.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Yamazon</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/flexslider.css">
<link rel="stylesheet" href="css/jquery.fancybox.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/font-icon.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body>
	<!-- header top section -->
	<section class="banner" role="banner">
		<header id="header">
			<div class="header-content clearfix">
				<a class="logo" href="menu"><img src="ロゴ.jpg"></a>
				<nav class="navigation" role="navigation">
					<ul class="primary-nav">
						<c:if test="${null ne sessionScope.user.userName}">
							<li><c:out value="${sessionScope.user.userName}" />さん</li>
							<li><a href="account">Mypage</a></li>
						</c:if>
						<li><a href="cart">Cart</a></li>
						<li><a href="login">Login</a></li>
						<c:if test="${null ne sessionScope.user.userName}">
							<li><a href="logout">Logout</a></li>
						</c:if>
					</ul>
				</nav>
				<a href="#" class="nav-toggle">Menu<span></span></a>
			</div>
		</header>
	</section>
	<!-- hero -->
	<!-- portfolio grid section -->
	<!-- service section -->
	<section id="hero" class="section ">
		<div class="container">
			<div class="row">
				<form:form modelAttribute="yamazon" action="search">
					<div class=" hero">
						<div class="hero-content">
							<div class="input-group">
								<form:input path="word" class="form-control"
									placeholder="キーワードを入力してください" />
								<span class="input-group-btn">
									<button class="btn btn-default" type="submit"
										style="padding: 8px 15px 3px 15px; margin: 0px 2px 0px 9px; width: 50px;">
										<i class='glyphicon glyphicon-search'></i>
									</button>
								</span>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</section>


	<section id="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<hr class="section">
				</div>
			</div>
			<div class="row">
			<c:forEach var="goods" items="${list}">

					<div class="col-sm-3 portfolio-item">
						<a href="detail?goodsName=${fn:escapeXml(goods.goodsName)}"
							class="portfolio-link">
							<div class="caption">
								<div class="caption-content">
									<h3>${fn:escapeXml(goods.goodsName)}</h3>
									<h4>${fn:escapeXml(goods.taxPrice)}円</h4>
								</div>
							</div> <img src=${fn:escapeXml(goods.goodsImage)}
							class="img-responsive" alt="" width="200" height="200">
						</a>
					</div>

			</c:forEach>
			</div>
		</div>
	</section>
	<footer class="footer">
		<div class="container">
			<div class="col-md-6 left">
				<p>Yamazon運営チーム</p>
				<p>TEL:0120-117-117-828828</p>
			</div>
		</div>
	</footer>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.fancybox.pack.js"></script>
	<script src="js/retina.min.js"></script>
	<script src="js/modernizr.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
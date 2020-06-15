<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="com.webproject.app.Board.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">


<style>
.box1 {
	height: 40;
	text-align: center;
	position: relative
}

.box2 {
	height: 40;
	position: absolute;
}

.p-0 {
	margin-top: 150px;
}

.mt-5 {
	background: #ffffff;
	position: fixed;
	top: 0;
	right: 0;
	left: 0;
	z-index: 1030;
	margin: 0 !important;
}
</style>
<style>
.centered {
	width: 1000px;
	position: absolute;
	left: 50%;
	margin-left: -200px;
}
</style>

</head>

<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}

		BoardDAO boardDAO = new BoardDAO();
		int categoryTop[] = boardDAO.popularityCategory();
	%>
	<jsp:include page="header.jsp"></jsp:include>

	<header class="Nav">
		<nav id="NavBar"></nav>
	</header>
	<div class="py-1">
		<div class="container"></div>
	</div>
	<div class="p-0" style="">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div id="carouselExampleIndicators"
						class="carousel slide carousel-fade" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0"
								class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1">
							</li>
							<li data-target="#carouselExampleIndicators" data-slide-to="2">
							</li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="d-block w-100 img-fluid"
									src="https://static.pingendo.com/cover-moon.svg"
									alt="Card image cap">
								<div class="carousel-caption">
									<h5 class="m-0">Carousel</h5>
									<p>with indicators</p>
								</div>
							</div>
							<div class="carousel-item ">
								<img class="d-block img-fluid w-100"
									src="https://static.pingendo.com/cover-bubble-dark.svg"
									alt="Card image cap">
								<div class="carousel-caption">
									<h5 class="m-0">Carousel</h5>
									<p>with indicators</p>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid w-100"
									src="https://static.pingendo.com/cover-bubble-light.svg"
									alt="Card image cap">
								<div class="carousel-caption">
									<h5 class="m-0">Carousel</h5>
									<p>with indicators</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-12 mt-4">
							<div class="blockquote">
								<p class="mb-0 border-bottom" style="">인기있는 카테고리</p>
							</div>
							<div class="row">
								<div class="col-md-4 h-25" style="transform: scale(0.8);">
									<a href="mainContent.do?categoryNum=<%=categoryTop[0]%>&pg=1"
										class="card"> <img class="card-img"
										src="https://static.pingendo.com/cover-bubble-light.svg"
										alt="Card image">
										<div
											class="card-img-overlay d-flex justify-content-center align-items-center">
											<h2 class="text-primary">Card title</h2>
										</div>
									</a>
								</div>
								<div class="col-md-4 h-25" style="transform: scale(0.8);">
									<a href="mainContent.do?categoryNum=<%=categoryTop[1]%>&pg=1"
										class="card"> <img class="card-img"
										src="https://static.pingendo.com/cover-bubble-light.svg"
										alt="Card image">
										<div
											class="card-img-overlay d-flex justify-content-center align-items-center">
											<h2 class="text-primary">Card title</h2>
										</div>
									</a>
								</div>
								<div class="col-md-4 h-25" style="transform: scale(0.8);">
									<a href="mainContent.do?categoryNum=<%=categoryTop[2]%>&pg=1"
										class="card"> <img class="card-img"
										src="https://static.pingendo.com/cover-bubble-light.svg"
										alt="Card image">
										<div
											class="card-img-overlay d-flex justify-content-center align-items-center">
											<h2 class="text-primary">Card title</h2>
										</div>
									</a>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="blockquote">
										<p class="mb-0 border-bottom rounded-bottom">이런건 어떠세요?</p>
									</div>
									<div class="row" style="transform: scale(.);">
										<div class="col-md-4 h-25" style="transform: scale(0.8);">
											<a href="#" class="card"> <img class="card-img"
												src="https://static.pingendo.com/cover-bubble-light.svg"
												alt="Card image">
												<div
													class="card-img-overlay d-flex justify-content-center align-items-center">
													<h2 class="text-primary">Card title</h2>
												</div>
											</a>
										</div>
										<div class="col-md-4" style="transform: scale(0.8);">
											<a href="#" class="card"> <img class="card-img"
												src="https://static.pingendo.com/cover-bubble-light.svg"
												alt="Card image">
												<div
													class="card-img-overlay d-flex justify-content-center align-items-center">
													<h2 class="text-primary">Card title</h2>
												</div>
											</a>
										</div>
										<div class="col-md-4" style="transform: scale(0.8);">
											<a href="#" class="card"> <img class="card-img"
												src="https://static.pingendo.com/cover-bubble-light.svg"
												alt="Card image">
												<div
													class="card-img-overlay d-flex justify-content-center align-items-center">
													<h2 class="text-primary">Card title</h2>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">

</head>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');

@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

b, strong {
	font-family: 'Do Hyeon';
}

.display-3 {
	font-size: 2.5rem;
}

.font-3 {
	font-family: "GmarketSansMedium";
}
</style>

<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<div class="mt-5">
		<div class="container">
			<div class="row">

				<div class="col-md-8">
					<a href="home.do" style="text-decoration: none;">
						<h1 class="display-3" style="">
							<b>재능의 민족</b>
						</h1>
					</a>
				</div>
				<div>
					<ul class="nav" style="">
						<%
							if (userID == null) {
						%>
						<div class="box1">

							<div class="col-md-2">
								<div class="btn-group ml-4 mt-4" style="">
									<button class="btn dropdown-toggle btn-primary"
										data-toggle="dropdown">접속하기</button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="login.do">로그인</a> <a
											class="dropdown-item" href="join.do">회원가입</a>
									</div>

								</div>
							</div>
						</div>
						<%
							} else {
						%>
						<div class="box2">

							<div class="col-md-2">
								<div class="btn-group ml-4 mt-4" style="">
									<button class="btn dropdown-toggle btn-primary"
										data-toggle="dropdown">마이페이지</button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="mypage.do">내정보</a> <a
											class="dropdown-item" href="expertRegister.do">전문가 등록</a> <a
											class="dropdown-item" href="logoutAction">로그아웃</a>
									</div>
								</div>

							</div>
						</div>
						<%
							}
						%>
					</ul>
				</div>
			</div>

			<div class="row">
				<div class="col-md-9 border-bottom font-3" style="">
					<div class="col-offset-1 col-md-12">
						<ul class="nav mt-2" style="">
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">디자인</a>
								<div class="dropdown-menu" x-placement="bottom-start"
									style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
									<a class="dropdown-item" href="mainContent.do">포토샵<br></a><a
										class="dropdown-item" href="#">일러스트레이터</a><a
										class="dropdown-item" href="#">제품디자인</a><a
										class="dropdown-item" href="#">건축</a><a class="dropdown-item"
										href="#">UX/UI디자인</a><a class="dropdown-item" href="#">편집디자인</a><a
										class="dropdown-item" href="#">캘리그라피</a><a
										class="dropdown-item" href="#">기타<br></a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">IT-프로그래밍</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#">웹개발</a><a
										class="dropdown-item" href="#">앱개발</a><a class="dropdown-item"
										href="#">보안</a><a class="dropdown-item" href="#">데이터베이스</a><a
										class="dropdown-item" href="#">알고리즘</a><a
										class="dropdown-item" href="#">게임</a><a class="dropdown-item"
										href="#">기타 </a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">콘텐츠&nbsp;제작</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#">영상촬영-편집</a><a
										class="dropdown-item" href="#">사진촬영</a><a
										class="dropdown-item" href="#">애니메이션</a><a
										class="dropdown-item" href="#">유튜브제작</a><a
										class="dropdown-item" href="#">음악</a><a class="dropdown-item"
										href="#">더빙-녹음</a><a class="dropdown-item" href="#">기타</a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">번역,통역</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#">번역<br></a><a
										class="dropdown-item" href="#">통역</a><a class="dropdown-item"
										href="#">영상번역</a><a class="dropdown-item" href="#">기타<br></a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">문서</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#">MS-office</a><a
										class="dropdown-item" href="#">논문</a><a class="dropdown-item"
										href="#">자소서</a><a class="dropdown-item" href="#">타이핑</a><a
										class="dropdown-item" href="#">글작성</a><a class="dropdown-item"
										href="#">기타</a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">레슨.실무교육</a>
								<div class="dropdown-menu" x-placement="bottom-start"
									style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
									<a class="dropdown-item" href="#">프로그래밍</a><a
										class="dropdown-item" href="#">그래픽디자인</a><a
										class="dropdown-item" href="#">데이터분석</a><a
										class="dropdown-item" href="#">유튜브-영상&amp;사진</a><a
										class="dropdown-item" href="#">외국어</a><a class="dropdown-item"
										href="#">프레젠테이션</a><a class="dropdown-item" href="#">취미-라이프<br></a><a
										class="dropdown-item" href="#">기타<br></a>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 border-bottom" style="">
					<form class="form-inline">
						<div class="input-group">
							<input type="text" class="form-control mt-2"
								id="inlineFormInputGroup" placeholder="Search">
							<div class="input-group-append">
								<button class="btn btn-primary mt-2" type="button">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>

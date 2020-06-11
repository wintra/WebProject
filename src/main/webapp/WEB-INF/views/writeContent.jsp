<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html>

<head></head>

<body>
	&lt;%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%&gt; &lt;%@ page import="java.io.PrintWriter"%&gt;
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
		rel="stylesheet" type="text/css">
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
	<style>
input:focus, textarea:focus {
	outline: none;
}
</style>
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
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-12">
									<div class="row">
										<div class="col-md-12">
											<div class="row">
												<div class="col-md-8" style="">
													<div class="p-2 d-flex">
														<select name="category" size="1">
															<option value="design">디자인</option>
															<option value="IT">IT/프로그래밍</option>
															<option value="contents">콘텐츠 제작</option>
															<option value="translation">번역/통역</option>
															<option value="document">문서</option>
															<option value="lesson">레슨/실무</option>
														</select> <select name="categoryDetail" size="1">
															<option value="design">디자인</option>
															<option value="IT">IT/프로그래밍</option>
															<option value="contents">콘텐츠 제작</option>
															<option value="translation">번역/통역</option>
															<option value="document">문서</option>
															<option value="lesson">레슨/실무</option>
														</select>
													</div>
													<div class="row">
														<div class="col-md-12 d-flex justify-content-center">
															<div class="card">
																<img class="card-img"
																	src="https://static.pingendo.com/cover-bubble-light.svg"
																	alt="Card image">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-12 mt-3">
													
															<form action="writeContentAction.do" , method="post"
																enctype="multipart/form-data">
																<input type="file" , name="uploadfile"
																	placeholder="파일 선택" /><br /> <input type="submit"
																	value="업로드">
															</form>

															<ul class="nav nav-tabs">
																<li class="nav-item"><a href="" class="nav-link"
																	data-toggle="tab" data-target="#tabone">서비스 설명</a></li>
																<li class="nav-item"><a class="nav-link"
																	data-toggle="tab" data-target="#tabtwo" href="">가격
																		정보</a></li>
																<li class="nav-item"><a href=""
																	class="nav-link active" data-toggle="tab"
																	data-target="#tabthree">수정/재진행</a></li>
																<li class="nav-item"><a href="" class="nav-link"
																	data-toggle="tab" data-target="#tabfour">취소/환불 규정</a></li>
															</ul>
															<div class=" border tab-content mt-2">
																<div class="tab-pane fade" id="tabone" role="tabpanel">
																	<textarea cols="100" name="tabone" rows="40"
																		style="width: 100%; border: #64CEC5; resize: none;"></textarea>
																</div>
																<div class="tab-pane fade" id="tabtwo" role="tabpanel">
																	<textarea cols="100" name="tabtwo" rows="40"
																		style="width: 100%; border: 0; resize: none;"></textarea>
																</div>
																<div class="tab-pane fade active show" id="tabthree"
																	role="tabpanel">
																	<textarea cols="100" name="tabthree" rows="40"
																		style="width: 100%; border: 0; resize: none;"></textarea>
																</div>
																<div class="tab-pane fade" id="tabfour" role="tabpanel">
																	<textarea cols="100" name="tabfour" rows="40"
																		style="width: 100%; border: 0; resize: none;"></textarea>
																</div>
																<div class="tab-pane fade" id="tabfive" role="tabpanel">
																	<textarea cols="100" name="tabfive" rows="40"
																		style="width: 100%; border: 0; resize: none;"></textarea>
																</div>
															</div>
														</div>
													</div>
													<div class="row"></div>
												</div>
												<div class="col-md-4" style="">
													<div class="row">
														<div class="col-md-12" style="">
															<h4 class="" style="">
																<b>1달 안에 포토샵 완성</b>
															</h4>
															<div class="row">
																<div class="col-md-12 py-2">
																	<div class="table-responsive mt-2">
																		<table class="table">
																			<thead>
																				<tr>
																					<th
																						class="border-right border-top-0 border-primary table-primary">가격</th>
																					<th class="border-top-0 border-left border-primary"><input
																						type="text" name="price" size="20"
																						style="width: 100%; border: 0;"></th>
																				</tr>
																			</thead>
																			<tbody>
																				<tr>
																					<td class="border-right border-primary">기간</td>
																					<td
																						class="border-left border-bottom border-primary"><input
																						type="text" name="period" size="20"
																						style="width: 100%; border: 0;"></td>
																				</tr>
																				<tr>
																					<td class="border-right border-primary">진행 방법</td>
																					<td class="border-left border-primary"><select
																						id="select" name="select"
																						style="width: 100px; height: 20px; border-style: none;">
																							<option value="offline">오프라인</option>
																							<option value="online">온라인</option>
																					</select></td>
																				</tr>
																			</tbody>
																		</table>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-12">
															<div class="row">
																<div class="col-md-12 pt-3" style="">
																	<div class="row"></div>
																	<div class="row">
																		<div class="col-md-12">
																			<img class="img-fluid d-block rounded-circle"
																				src="https://static.pingendo.com/img-placeholder-3.svg"
																				style="transform: scale(0.8);">
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="row" style="padding-bottom: 50px;">
														<div class="col-md-12" style="">
															<div class="row">
																<div class="col-md-12 h-75">
																	<div
																		class="table-responsive justify-content-center align-items-center border">
																		<table class="table">
																			<thead>
																				<tr></tr>
																			</thead>
																			<tbody>
																				<tr>
																					<td style="">강사명</td>
																					<td>홍길동</td>
																				</tr>
																				<tr>
																					<td>연락처</td>
																					<td>hong@gmil.com</td>
																				</tr>
																				<tr>
																					<td>소개</td>
																					<td><textarea cols="30" name="tabone" rows="5"
																							style="width: 100%; border: 0; resize: none;"></textarea></td>
																				</tr>
																				<tr>
																					<td>경력</td>
																					<td><textarea cols="30" name="tabone" rows="5"
																							style="width: 100%; border: 0; resize: none;"></textarea></td>
																				</tr>
																			</tbody>
																		</table>
																	</div>
																	<div class="row"></div>
																</div>
															</div>
														</div>
													</div>
													<a class="btn btn-primary btn-block" type="submit"
														href="writeContentAction.do" style="">작성완료</a>
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
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
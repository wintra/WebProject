<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.centered {
	width: 1000px;
	position: absolute;
	left: 50%;
	margin-left: -200px;
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
<link href="nav.css" rel="stylesheet" type="text/css">
</head>

<body>
	<script type="text/javascript">
		$(document).ready(function() {

			$("button[name=revise]").click(function() {

				$("form[name=groupMemberInfo]")

				.attr({
					action : "reviseContent.do?value=" + $(this).val(),
					method : "post"
				})

				.submit();

			});

		});
	</script>

	<jsp:include page="header.jsp"></jsp:include>


	<div class="p-0">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-3" style="">
									<ul class="list-group list-group-flush">
										<a href="#" class="list-group-item list-group-item-action"
											id="accordion1" data-toggle="collapse"
											data-target="#collapse1" aria-controls="collapse1"
											aria-expanded="false"/>
											<div class="row">
												<div class="col-md-12 pb-3">
													<img class="img-fluid d-block rounded-circle"
														src="https://static.pingendo.com/img-placeholder-3.svg"
														alt="profile">
												</div>
											</div>
											<div class="row">
												<div class="col-md-12 justify-content-center">
													<h3 class="justify-content-center d-flex mt-2 mb-0 pb-2">
														<b>test</b>
													</h3>
													<div class="row">
														<div
															class="col-md-12 d-inline-flex justify-content-center">
															<div class="btn-group btn-group-toggle"
																data-toggle="buttons">
																<label class="btn btn-primary"> <input
																	type="radio" name="options" id="option2"
																	autocomplete="off" checked=""> 전문가
																</label>
															</div>
														</div>
													</div>
												</div>
											</div>
										</a>
										<a href="orderList.do"
											class="list-group-item list-group-item-action">구매내역</a>
										<a href="soldList.do"
											class="list-group-item list-group-item-action">판매내역</a>
									</ul>
								</div>
								<div class="col-md-8" style="">
									<div class="row">
										<div class="col-md-12">
											<h5 class="">판매내역</h5>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="jumbotron rounded pb-3 pt-3 mt-3"
												style="padding-top: 20px;">
												<div class="table-responsive">
													<ul class="list-group list-group-flush">
														<li class="list-group-item">
															<table class="table list-center">
																<thead>
																	<tr>
																		<th>구분</th>
																		<th colspan="2">내용</th>
																		<th>문의</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>  
																		<td rowspan="3" style="vertical-align: middle">#1</td>
																		<td colspan="2"><a href="#">3일 완성 포토샵</a></td>
																		<td><form  method="post" action="reviseContent.do"><button class="btn btn-primary" name ="boardNum" value=53>수정</button></form></td>

																	</tr>
																	<tr>
																		<td>06/07~06/09</td>
																		<td>3/5명</td>
																		<td><a class="btn btn-danger" href="#">삭제</a></td>
																	</tr>
																</tbody>
																<tbody>
																	<tr>
																		<td rowspan="3" style="vertical-align: middle">#1</td>
																		<td colspan="2"><a href="#">3일 완성 포토샵</a></td>
																		<td><a class="btn btn-primary" href="#">수정</a></td>
																	</tr>
																	<tr>
																		<td>06/07~06/09</td>
																		<td>3/5명</td>
																		<td><a class="btn btn-danger" href="#">삭제</a></td>
																	</tr>
																</tbody>
																<tbody>
																	<tr>
																		<td rowspan="3" style="vertical-align: middle">#1</td>
																		<td colspan="2"><a href="#">3일 완성 포토샵</a></td>
																		<td><a class="btn btn-primary" href="#">수정</a></td>
																	</tr>
																	<tr>
																		<td>06/07~06/09</td>
																		<td>3/5명</td>
																		<td><a class="btn btn-danger" href="#">삭제</a></td>
																	</tr>
																</tbody>
															</table>
														</li>
													</ul>
												</div>
												<div class="row">
													<div
														class="col-md-12 justify-content-center d-flex mt-2 pt-2">
														<ul class="pagination">
															<li class="page-item"><a class="page-link" href="#">Prev</a>
															</li>
															<li class="page-item"><a class="page-link" href="#">1</a>
															</li>
															<li class="page-item"><a class="page-link" href="#">2</a>
															</li>
															<li class="page-item"><a class="page-link" href="#">3</a>
															</li>
															<li class="page-item"><a class="page-link" href="#">4</a>
															</li>
															<li class="page-item"><a class="page-link" href="#">Next</a>
															</li>
														</ul>

													</div>
												</div>

											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12"></div>
									</div>
									<div class="row">
										<div class="col-md-12"></div>
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
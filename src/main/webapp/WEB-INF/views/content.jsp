<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ page import="com.webproject.app.Board.*"%>
<%@ page import="com.webproject.app.Login.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body>
	<%
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));

		BoardDAO boardDAO = new BoardDAO();
		UserDAO userDAO = new UserDAO();

		Board board = boardDAO.returnBoard(boardNum);

		int categoryNum = board.getCategoryNum();

		String category[] = boardDAO.returnCategory(categoryNum);

		Talent talent = userDAO.returnTalent((String) board.getId());
		User user = userDAO.returnUser(talent.getId());

		Comment comment = new Comment();
	%>
	<script>
		function popup_post_set() {
			var option = "width = 400, height = 600, top = 100, left = 300, location = no"
			window.open('', 'new_popup', option);
			document.f1.submit();
		}
	</script>
	<jsp:include page="header.jsp"></jsp:include>
	<header class="Nav">
		<nav id="NavBar"></nav>
	</header>
	<div class="py-1">
		<div class="container"></div>
	</div>
	<div class="" style="">
		<div class="container">
			<div class="context">
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<div class="col-md-12">
										<div class="row">
											<div class="col-md-12">
												<div class="row">
													<div class="col-md-8">
														<p><%=category[0]%>
															&gt;
															<%=category[1]%></p>

														<div class="row">
															<div class="col-md-12 d-flex justify-content-center">
																<div class="card">
																	<img class="card-img"
																		src="${pageContext.request.contextPath}/resources/image/<%= board.getFileName()%>"
																		alt="Card image">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12 mt-3">
																<ul class="nav nav-tabs">
																	<li class="nav-item"><a href=""
																		class="active nav-link" data-toggle="tab"
																		data-target="#tabone">서비스 설명</a></li>
																	<li class="nav-item"><a class="nav-link" href=""
																		data-toggle="tab" data-target="#tabtwo">가격 정보</a></li>
																	<li class="nav-item"><a href="" class="nav-link"
																		data-toggle="tab" data-target="#tabthree">수정/재진행</a></li>
																	<li class="nav-item"><a href="" class="nav-link"
																		data-toggle="tab" data-target="#tabfour">취소/환불 규정</a>
																	</li>
																	<li class="nav-item"><a href="" class="nav-link"
																		data-toggle="tab" data-target="#tabfive">서비스 평가</a></li>
																</ul>
																<div class="tab-content mt-2">
																	<div class="tab-pane fade show active" id="tabone"
																		role="tabpanel">
																		<p class=""><%=board.getTabone()%></p>
																	</div>
																	<div class="tab-pane fade" id="tabtwo" role="tabpanel">
																		<p class=""><%=board.getTabtwo()%></p>
																	</div>
																	<div class="tab-pane fade" id="tabthree"
																		role="tabpanel">
																		<p class=""><%=board.getTabthree()%></p>
																	</div>
																	<div class="tab-pane fade" id="tabfour" role="tabpanel">
																		<p class=""><%=board.getTabfour()%></p>
																	</div>
																	<div class="tab-pane fade" id="tabfive" role="tabpanel">
																		<div class="py-">
																			<div class="row">
																				<div class="col-md-12">
																					<table class="table text-center">
																						<thead>
																							<tr>
																							</tr>
																							<tr>
																								<td class="w-25 table-info"
																									style="font-size: 16px;">작성자</td>
																								<td class="table-info" style="font-size: 16px;">리뷰</td>
																								<td class="w-25 table-info"
																									style="font-size: 16px;">평점</td>
																							</tr>
																						</thead>
																						<tbody>
																							<%
																								ArrayList<Comment> list = boardDAO.returnCommentByBoardNum(boardNum);
																								if (list.size() >= 1) {

																									for (int col = 0; col < list.size(); col++) {
																							%>
																							<tr>
																								<td class="justify-content-center"><%= list.get(col).getBuyerid()  %></td>
																								<td class="">
																									<p><%=list.get(col).getComment()  %></p>
																								</td>
																								<td><%=list.get(col).getCommentScore()  %></td>
																							</tr>
																							<%
																								}
																								}
																							%>


																						</tbody>
																					</table>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="row"></div>
													</div>
													<div class="col-md-4">
														<div class="row">
															<div class="col-md-12" style="">
																<h4 class="" style="">
																	<b><%=board.getSubject()%></b>
																</h4>
																<div class="row">
																	<div class="col-md-12 py-2">
																		<div class="table-responsive mt-2">
																			<table class="table">
																				<thead>
																					<tr>
																						<th
																							class="border-right border-top-0 border-primary table-primary">가격</th>
																						<th
																							class="border-top-0 border-left border-primary table-primary"><%=board.getPrice()%>
																							원</th>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td class="border-right border-primary">기간</td>
																						<td
																							class="border-left border-bottom border-primary"><b>시작</b><br><%=board.getStartDate()%>
																							<br> <b>종료</b><br><%=board.getEndDate()%></td>
																					</tr>
																					<tr>
																						<td class="border-right border-primary">진행 방법</td>
																						<td class="border-left border-primary"><%=board.getProgress()%></td>
																					</tr>
																					<tr>
																						<td class="border-right border-primary">평점</td>
																						<td class="border-primary"><%=board.getScore()%>/5</td>
																						<% System.out.println(board.getScore()); %>
																					</tr>
																				</tbody>
																			</table>
																		</div>

																		<form onclick="return popup_post_set()" method="post"
																			name="f1" action="payment.do" target="new_popup">
																			<button class="btn btn-primary btn-block"
																				name="boardNum" value="<%=boardNum%>">구매하기</button>
																		</form>

																	</div>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="row">
																	<div class="col-md-12 pt-3">
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
														<div class="row">
															<div class="col-md-12" style="">
																<div class="row">
																	<div class="col-md-12">
																		<div
																			class="table-responsive justify-content-center align-items-center">
																			<table class="table">
																				<thead>
																					<tr></tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td>강사명</td>
																						<td><%=talent.getNickname()%></td>
																					</tr>
																					<tr>
																						<td>이메일</td>
																						<td><%=user.getUserEmail()%></td>
																					</tr>
																					<tr>
																						<td>소개</td>
																						<td>전문분야 : <%=talent.getTechnology()%><br>
																							보유기술 : <%=talent.getProfield()%></td>
																					</tr>
																					<tr>
																						<td>경력</td>
																						<td><%=talent.getEducation()%> <%=talent.getMajor()%>
																							<%=talent.getState()%> <br> 자격증 : <%=talent.getCertificate()%>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																		</div>
																		<div class="row">
																			<div class="col-md-12 d-flex justify-content-center"></div>
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
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</html>
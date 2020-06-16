<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ page import="com.webproject.app.Board.*"%>
<%@ page import="com.webproject.app.Login.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<script type="text/javascript">
		$(function() {

			// 질문유형을 선택한다.
			chnQnaType('0', '01');
		});

		function chnQnaType(type, select) {

			$('#categoryDetail').empty();

			if (type == '1') { // 일반관련
				$('#categoryDetail')
						.append("<option value='100' >포토샵</option>");
				$('#categoryDetail').append(
						"<option value='101' >일러스트레이터</option>");
				$('#categoryDetail').append(
						"<option value='102' >제품디자인</option>");
				$('#categoryDetail').append("<option value='103' >건축</option>");
				$('#categoryDetail').append(
						"<option value='104' >UX/UI디자인</option>");
				$('#categoryDetail').append(
						"<option value='105' >편집디자인</option>");
				$('#categoryDetail').append(
						"<option value='106' >캘리그라피</option>");
				$('#categoryDetail').append("<option value='107' >기타</option>");
			} else if (type == '2') { // 일반관련
				$('#categoryDetail')
						.append("<option value='200' >웹개발</option>");
				$('#categoryDetail')
						.append("<option value='201' >앱개발</option>");
				$('#categoryDetail').append("<option value='202' >보안</option>");
				$('#categoryDetail').append(
						"<option value='203' >데이터베이스</option>");
				$('#categoryDetail').append(
						"<option value='204' >알고리즘</option>");
				$('#categoryDetail').append("<option value='205' >게임</option>");
				$('#categoryDetail').append("<option value='206' >기타</option>");
			} else if (type == '3') { // 주문관련
				$('#categoryDetail').append(
						"<option value='300' >영상촬영-편집</option>");
				$('#categoryDetail').append(
						"<option value='301' >사진촬영</option>");
				$('#categoryDetail').append(
						"<option value='302' >애니메이션</option>");
				$('#categoryDetail').append(
						"<option value='303' >유튜브제작</option>");
				$('#categoryDetail').append("<option value='304' >음악</option>");
				$('#categoryDetail').append(
						"<option value='305' >더빙-녹음</option>");
				$('#categoryDetail').append("<option value='306' >기타</option>");
			} else if (type == '4') { // 주문관련
				$('#categoryDetail').append("<option value='400' >번역</option>");
				$('#categoryDetail').append("<option value='401' >통역</option>");
				$('#categoryDetail').append(
						"<option value='402' >영상번역</option>");
				$('#categoryDetail').append("<option value='403' >기타</option>");
			} else if (type == '5') { // 주문관련
				$('#categoryDetail').append(
						"<option value='500' >MS-office</option>");
				$('#categoryDetail').append("<option value='501' >논문</option>");
				$('#categoryDetail')
						.append("<option value='502' >자소서</option>");
				$('#categoryDetail')
						.append("<option value='503' >타이핑</option>");
				$('#categoryDetail')
						.append("<option value='504' >글작성</option>");
				$('#categoryDetail').append("<option value='505' >기타</option>");
			} else if (type == '6') { // 주문관련
				$('#categoryDetail').append(
						"<option value='600' >프로그래밍</option>");
				$('#categoryDetail').append(
						"<option value='601' >그래픽디자인</option>");
				$('#categoryDetail').append(
						"<option value='602' >데이터분석</option>");
				$('#categoryDetail').append(
						"<option value='603' >유튜브-영상/사진</option>");
				$('#categoryDetail')
						.append("<option value='604' >외국어</option>");
				$('#categoryDetail').append(
						"<option value='605' >프레젠테이션</option>");
				$('#categoryDetail').append(
						"<option value='606' >취미-라이프</option>");
				$('#categoryDetail').append("<option value='607' >기타</option>");
			}
			document.getElementById("categoryDetail").style.display = "";

			if ($.trim(select) != "") {
				$('#category').val(type);
				$('#categoryDetail').val(select);
			}
		}
	</script>

	<script type="text/javascript">
		var InputImage = (function loadImageFile() {
			if (window.FileReader) {
				var ImagePre;
				var ImgReader = new window.FileReader();
				var fileType = /^(?:image\/bmp|image\/gif|image\/jpeg|image\/png|image\/x\-xwindowdump|image\/x\-portable\-bitmap)$/i;

				ImgReader.onload = function(Event) {
					if (!ImagePre) {
						var newPreview = document
								.getElementById("imagePreview");
						ImagePre = new Image();
						ImagePre.style.width = "700px";
						ImagePre.style.height = "400px";
						newPreview.appendChild(ImagePre);
					}
					ImagePre.src = Event.target.result;

				};

				return function() {

					var img = document.getElementById("thumbnail").files;

					if (!fileType.test(img[0].type)) {
						alert("이미지 파일을 업로드 하세요");
						return;
					}

					ImgReader.readAsDataURL(img[0]);
				}

			}

			document.getElementById("imagePreview").src = document
					.getElementById("thumbnail").value;

		})();
	</script>


	<%
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));

		
		BoardDAO boardDAO = new BoardDAO();
		UserDAO userDAO = new UserDAO();
		Board board = boardDAO.returnBoard(boardNum);
		User user = userDAO.returnUser((String)session.getAttribute("userID"));
		Talent talent = userDAO.returnTalent((String)session.getAttribute("userID"));
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
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-12">
									<div class="row">
										<form action="reviseContentAction.do" method="post"
											enctype="multipart/form-data">
											<div class="col-md-12">
												<div class="row">
													<div class="col-md-8" style="">
														<div class="p-2 d-flex">
															<select name="category" id="category" size="1"
																onChange="chnQnaType(this.value)">
																<option value="0" selected disabled hidden=>카테고리</option>
																<option value="1">디자인</option>
																<option value="2">IT/프로그래밍</option>
																<option value="3">콘텐츠 제작</option>
																<option value="4">번역/통역</option>
																<option value="5">레슨/실무</option>
																<option value="6">문서</option>
															</select> <b> &nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp; </b> <select
																id="categoryDetail" name="categoryDetail" size="1"
																style="width: 120px;">
															</select>

														</div>
														<div class="row">
															<div class="col-md-12 d-flex justify-content-center">
																<div class="card" id="imagePreview"></div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12 mt-3">
															
																<label for="file">썸네일로 사용할 사진을 올려주세요
																권장크기(700x400)</label> <br>

																<input type="file" name="uploadfile" id="thumbnail"
																	onchange="InputImage();"
																	accept="image/gif, image/jpeg, image/png"
																	placeholder="파일 선택">
															</div>
														</div>
														<div class="row">
															<div class="col-md-12 mt-3">

																<ul class="nav nav-tabs">
																	<li class="nav-item"><a href=""
																		class="nav-link active" data-toggle="tab"
																		data-target="#tabone">서비스 설명</a></li>
																	<li class="nav-item"><a class="nav-link"
																		data-toggle="tab" data-target="#tabtwo" href="">가격
																			정보</a></li>
																	<li class="nav-item"><a href="" class="nav-link"
																		data-toggle="tab" data-target="#tabthree">수정/재진행</a></li>
																	<li class="nav-item"><a href="" class="nav-link"
																		data-toggle="tab" data-target="#tabfour">취소/환불 규정</a></li>
																</ul>
																<div class=" border tab-content mt-2">
																	<div class="tab-pane fade active show" id="tabone"
																		role="tabpanel">
																		<textarea cols="100" name="tabone" rows="40"
																			style="width: 100%; border: #64CEC5; resize: none;"><%= board.getTabone() %></textarea>
																	</div>
																	<div class="tab-pane fade" id="tabtwo" role="tabpanel">
																		<textarea cols="100" name="tabtwo" rows="40"
																			style="width: 100%; border: 0; resize: none;"><%= board.getTabtwo() %></textarea>
																	</div>
																	<div class="tab-pane fade" id="tabthree" role="tabpanel">
																		<textarea cols="100" name="tabthree" rows="40"
																			style="width: 100%; border: 0; resize: none;"><%= board.getTabthree() %></textarea>
																	</div>
																	<div class="tab-pane fade" id="tabfour" role="tabpanel">
																		<textarea cols="100" name="tabfour" rows="40"
																			style="width: 100%; border: 0; resize: none;"><%= board.getTabfour() %></textarea>
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
																	<b>제목</b> <input type="text" name="subject" value="<%= board.getSubject() %>" size="20"> 
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
																							class="border-top-0 border-left border-primary"><input
																							type="text" name="price" size="20"
																							style="width: 100%; border: 0;" value="<%=board.getPrice()%>"></th>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td class="border-right border-primary">기간</td>
																						<td
																							class="border-left border-bottom border-primary">
																							<b>시작</b>
																							<input type="date" name="start-period" size="20" style="width: 100%; border: 0;" value="<%=board.getStartDate()%>"> 
																							<b>종료</b>
																							<input type="date" name="end-period" size="20" style="width: 100%; border: 0;" value="<%= board.getEndDate()%>"></td>
																					</tr>
																					<tr>
																						<td class="border-right border-primary">진행 방법</td>
																						<td class="border-left border-primary"><select
																							id="select" name="select"
																							style="width: 100px; height: 20px; border-style: none;">
																								<option value="오프라인" <% if (board.getProgress().equals("오프라인")) {%> selected <%} %>>오프라인</option>
																								<option value="온라인" <%  if(board.getProgress().equals("온라인")) {%> selected <% } %>>온라인</option>
																						</select></td>
																					</tr>
																					<tr>
																						<td class="border-right border-primary">총 인원수</td>
																						<td class="border-left border-primary d-flex"
																							style="text-align: center;"><input
																							type="number" id="maxPeople" name="maxPeople"
																							min="0" value="<%= board.getMaxPeople() %>"
																							style="width: 100px; height: 40px; border-style: none;">
																						</td>
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
																						<td><%= talent.getNickname() %></td>
																					</tr>
																					<tr>
																						<td>연락처</td>
																						<td><%= user.getUserEmail() %></td>
																					</tr>
																					<tr>
																						<td>소개</td>
																						<td>전문분야 : <%= talent.getTechnology() %><br>
																						       보유기술 : <%= talent.getProfield() %></td>
																					</tr>
																					<tr>
																						<td>경력</td>
																						<td><%= talent.getEducation() %> <%= talent.getMajor() %> <%= talent.getState() %> <br>
																						자격증 : <%= talent.getCertificate() %>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																		</div>
																		<div class="row"></div>
																	</div>
																</div>
															</div><input type="hidden" name="boardNum" value="<%= boardNum %>" >
														</div>
														<div class="col text-center">
															<button type="submit" class="btn btn-primary btn-block">수정하기</button>
														</div>
													</div>
												</div>
											</div>
										</form>
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
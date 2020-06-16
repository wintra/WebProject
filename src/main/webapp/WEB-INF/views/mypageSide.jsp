<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.webproject.app.Login.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}

		UserDAO userDAO = new UserDAO();

		User user = userDAO.returnUser(userID);
	%>

	<script language="javascript">

		function del() {
			var del

			del = confirm("정말 삭제하시겠습니까?")

			if (del == true) {

				location.href = "UserWithdrawal"
			} else {
				alert("취소되었습니다!")
				return;
			}
		}

	</script>
	
	<div class="col-md-3" style="">
		<ul class="list-group list-group-flush">
			<div class="list-group-item list-group-item-action">
				<div class="row">
					<div class="col-md-12 justify-content-center">
						<h3 class="justify-content-center d-flex mt-2 mb-0 pb-2">
							<b><%=user.getUserName()%></b>
						</h3>
						<div class="row">
							<div class="col-md-12 d-inline-flex justify-content-center">
								<div class="btn-group btn-group-toggle" data-toggle="buttons">

									<%
										boolean isExpert = false;
										if (userDAO.isExpert(userID) == 0) {
									%>
									<label class="btn btn-primary active"> <input
										type="radio" name="options" id="option1" autocomplete="off"
										checked=""> 일반
									</label>

									<%
										} else if (userDAO.isExpert(userID) == 1) {
											isExpert = true;
									%>
									<label class="btn btn-primary"> <input type="radio"
										name="options" id="option2" autocomplete="off"> 전문가
									</label>

									<%
										}
									%>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<a href="orderList.do?pg=1"
				class="list-group-item list-group-item-action">구매내역</a>
			<%
				if (isExpert == true) {
			%>
			<a href="soldList.do?pg=1"
				class="list-group-item list-group-item-action">판매내역</a>
			<a href="reviseExpert.do"
				class="list-group-item list-group-item-action">전문가 정보 수정</a>
			<%
				}
			%>
			<a href="javascript:del()" class="list-group-item list-group-item-action">회원 탈퇴</a>



		</ul>
	</div>
</body>
</html>
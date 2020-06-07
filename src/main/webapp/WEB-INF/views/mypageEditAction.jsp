<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.webproject.app.Login.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="user" class="com.webproject.app.Login.User"
	scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userEmail" />
<jsp:setProperty name="user" property="userPhoneNum" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}

		UserDAO userDAO = new UserDAO(); //인스턴스생성
		int result = userDAO.update(user);

		if (result == -1) { // 잘못된 입력
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('잘못된 입력이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		//가입성공
		else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('개인정보 수정 완료.')");
			script.println("location.href = 'mypage.do'");
			script.println("</script>");
		}
	%>
</body>
</html>
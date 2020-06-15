<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script language="javascript" type="text/javascript">
		function init() {
			var f = document.frmPayments;

			result = f.fCate.value + " -> "; // input box의 값을 가져온다.
			result += f.midCate.value;

			if (f.faster.checked == true)
				result += "|2"; // delimiter로 '|' 를 사용
			else
				result += "|1";

			window.returnValue = result; // 값을 넘긴다.
		}
	</script>

</body>
</html>
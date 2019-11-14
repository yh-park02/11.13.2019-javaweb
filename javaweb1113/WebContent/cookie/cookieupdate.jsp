<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키의 수정과 삭제</title>
</head>
<body>
	<%
		//클라이언트가 전송한 모든 쿠키 가져오기 
		Cookie [] cookies = request.getCookies();
		if(cookies != null){
			for(Cookie cookie : cookies){
				out.println(
					"<h3>" + cookie.getName() +
					":" + cookie.getValue() + "</h3>");
			}	
		}else{
			out.println("<h3>쿠키가 없습니다.</h3>");
		}
	%>
</body>
</html>
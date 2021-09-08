<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%if(session.getAttribute("uname")==null)
	response.sendRedirect("index.jsp");
	%>
</head>
<body>
<h1>E Banking System</h1>
Welcome: ${uname}<br><br> 
Balance: ${amount }<br><br>
<form action="updatemoney.jsp">
<input type="submit" value="Transfer">
</form><br><br>

<form action="<%=request.getContextPath() %>/Logout">
<input type="submit" Value="Logout">
</form>
</body>
</html>
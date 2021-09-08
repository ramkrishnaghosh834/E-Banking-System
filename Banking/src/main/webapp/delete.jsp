<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>E Banking System</h1>
<form action="<%=request.getContextPath()%>/delete">
Name:<input type="text" name="uname"><br><br>
Account no:<input type="text" name="acc"><br><br>
<input type="submit" Value="Delete">
</form>
</body>
</html>
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
<form action="<%=request.getContextPath() %>/transfer">
Name:<input type="text" name="uname"><br><br>
Account No:<input type="text" name="accno"><br><br>
Amount:<input type="number" name="amount"><br><br>
<input type="submit" Value="Send">
</form>
</body>
</html>
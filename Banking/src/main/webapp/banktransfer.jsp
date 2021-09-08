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
<form action="updatemoney.jsp"><br><br>
Name:<input type="text" name="uname"><br><br>
Account No:<input type="text" name="uaccno"><br><br>
Amount:<input type="text" name="accno"><br><br>
<input type="submit" Value="Enter">
</form><br><br>
<form action="<%=request.getContextPath() %>/Logout">
		<input type="submit" value="logout">
		</form>
</body>
</html>
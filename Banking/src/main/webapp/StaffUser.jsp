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
<h2> Staff User</h2>
<form action="<%= request.getContextPath()%>/staffuser">
UserName:<input type="text" name="sname"><br><br>
PassWord:<input type="Password" name="spass"><br><br>
<input type="submit" value="login">

</form>
</body>
</html>
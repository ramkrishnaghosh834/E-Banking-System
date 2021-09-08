<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>EBanking System</h1>
<h2>Customer Login</h2>
<form action="<%= request.getContextPath()%>/UserLogin">
UserName:<input type="text" name="uname"><br><br>
Password:<input type="password" name="pass"><br><br>
<input type="submit" value="login">
</form><br><br>
<a href="StaffUser.jsp">StaffUser</a>
</body>

</html>
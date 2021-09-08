<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%if(session.getAttribute("uname")==null)
	response.sendRedirect("StaffUser.jsp");
	%>
</head>
<body>
<h1>E Banking System</h1>
<form action ="<%=request.getContextPath() %>/newuser">
Name:<input type="text" name="uname"><br><br>
Account No:<input type="text" name="accno"><br><br>
UserName:<input type="text" name="username"><br><br>
Password:<input type="password" name="upass"><br><br>
Amount:<input type="number" name="amount"><br><br>
<input type="submit" value="Enter">
</form><br><br>
<form action="<%=request.getContextPath() %>/Logout">
<input type="submit" value="logout">
</form>

</body>
</html>
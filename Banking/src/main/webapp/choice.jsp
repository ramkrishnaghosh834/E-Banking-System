<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%if(session.getAttribute("uname")==null)
	response.sendRedirect("StaffUser.jsp");
	%>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>E Banking System</h1>
<h2>Welcome Staff</h2>
<form action="newuser.jsp">
<input type="submit" value="newuser">
</form><br>
<form action="banktransfer.jsp">
<input type="submit" value="stafftransfer">

</form><br><br>
<form action="delete.jsp">
<input type="submit" value="Delete">
</form><br><br>
<form action="<%=request.getContextPath() %>/Logout">
		<input type="submit" value="logout">
		</form>
</body>
</html>
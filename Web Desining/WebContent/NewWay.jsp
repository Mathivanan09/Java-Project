<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="dataBaseCon.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Way to Change Password</title>
<style type="text/css">
body {
	background-color: rgba(30, 50, 20, 0.4);
}

h3 {
	margin-top: 90px;
	font-variant: small-caps;
	font-family: cursive;
}

input[type="submit"] {
	width: 100px;
	height: 30px;
	border: 2px solid blue;
	font-family: monospace;
	font-variant: small-caps;
	font-size: 18px;
	outline-color: blue;
	border-radius: 10px;
	background-color: blue;
	color: white;
}
</style>
</head>
<body>

	<%
	String email = (String) request.getParameter("email");
	String num = (String) request.getParameter("number");

	DBProcess db = new DBProcess();
	String getEmailDb = db.resetNewWay(email, num);
	session.setAttribute("name", getEmailDb);
	if (getEmailDb != null) {
		session.setAttribute("email", getEmailDb);
		response.sendRedirect("Reset.jsp");
	} else {
		out.print("<h3>Something Went Wrong...</h3>");
	}
	%>


	<input type="submit" value="Back"
		onclick="location.href='ForgetPass.jsp'">

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,dataBaseCon.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Process Page</title>
<style type="text/css">
body {
	background-color: #6ac8bc;
}
</style>
</head>
<body>

	<%
	String email = request.getParameter("email");
	String pass = request.getParameter("pass");

	DBProcess db = new DBProcess();
	HashMap m = db.login(email, pass);
	if (m.get("name") != null) {
		String Mo = (String) m.get("mobile");
		String Na = (String) m.get("name");
		String Em = (String) m.get("email");
		String Pa = (String) m.get("pass");
		session.setAttribute("name", Na);
		session.setAttribute("mobile", Mo);
		session.setAttribute("email", Em);
		session.setAttribute("pass", Pa);
		response.sendRedirect("Dashboard.jsp");
	} else {
		out.print(
		"<h3 style='font-size:30px;font-family: courier;'>Something Went Wrong... Please Check Your Details..</h3>");
		out.print(
		"<br><br><input type='submit' value='Back' onclick=location.href='LoginPage.jsp' style='color:white;width:100px;height:35px;font-family:cursive;font-variant:small-caps;background-color:blue;'>");
	}
	%>


</body>
</html>
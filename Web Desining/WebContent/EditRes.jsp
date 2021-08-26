<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,dataBaseCon.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Response Page</title>
<style type="text/css">
body {
	background-color: rgb(128, 128, 64);
}
</style>
</head>
<body>

	<%
	String name = request.getParameter("name1");
	String mobile = request.getParameter("mobile1");
	String password = request.getParameter("pass1");
	String email = session.getAttribute("email").toString();

	session.setAttribute("namePass", name);
	session.setAttribute("mobilePass", mobile);
	session.setAttribute("emailPass", email);
	session.setAttribute("pass", password);

	DBProcess db = new DBProcess();
	boolean b = db.update(name, mobile, password, email);

	if (b == true) {
		/* out.print("<h2>Your Details are Updated Successfully...</h2><br><br><button onclick=location.href='LoginPage.jsp'>Login</button><button onclick=location.href='UpdateProcess.jsp' style='margin-left:100px'>Home</button>"); */
		response.sendRedirect("UpdateProcess.jsp");

	} else {
		out.print("<h2 Style='color:cyan;font-family:cursive;font-size:25px;'>OOPs!!..Something Went Wrong...</h2>");
		out.print("<p  Style='color:#ffffff;font-family:cursive;font-size:25px;'>Please Login Again...</p>");
		out.print(
		"<a href='LoginPage.jsp' Style='text-decoration: none;margin-left: 10px;padding: 7px;border: 3px solid blue;background-color: rgb(238, 193, 89);color: #406000;font-size: 20px;border-radius: 9px;font-family: cursive;'>Login</a>");
	}
	%>



</body>
</html>



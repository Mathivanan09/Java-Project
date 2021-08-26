<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,dataBaseCon.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Forget Response Page</title>
<style type="text/css">
body {
	background-color: #6ac8bc;
}
</style>
</head>
<body onsubmit=" return timeInterval()">

	<%
	String getEmail = request.getParameter("email");
	String getNumber = request.getParameter("number");
	session.setAttribute("emailValue", getEmail);
	DBProcess db = new DBProcess();
	String name = db.changePass(getEmail, getNumber);
	if (name != null) {
		out.print("<h3 style='font-size:30px'>Your Password is :</h3>");
		out.print(
		"<code style='border:3px solid orange;color: maroon;background-color:yellow;width:60px;height:25px;font-size:20px;'>"
				+ name + "</code>");
		out.print(
		"<br><br><input type='submit' value='Login' onclick=location.href='LoginPage.jsp' style='color:white;width:100px;height:35px;font-family:cursive;font-variant:small-caps;background-color:blue;' >");
	} else {
		out.print("<h3 style='font-size:30px;font-family:courier;'>Please Check Your Input Details...<br><br>");
		out.print(
		"<input type='submit' value='Go Back' onclick='redi()' style='color:white;width:100px;height:35px;font-family:cursive;font-variant:small-caps;background-color:blue;'>");
	}
	%>

	<script type="text/javascript">
		function timeInterval() {
			location.href = "LoginPage.jsp";
		}

		function redi() {
			location.href = "ForgetPass.jsp";
		}
	</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Logout Page</title>
<style type="text/css">
body {
	background-color: #6ac8bc;
}

h3 {
	font-family: courier;
	font-size: 30px;
}
</style>
</head>
<body>

	<%
	session.invalidate();
	%>
	<h3>Glad to Connect with You... I'm Waiting For the Next time...</h3>
	<input type="submit" value="Login" id="fst"
		onclick="location.href='LoginPage.jsp'"
		style="color: white; width: 100px; height: 35px; font-family: cursive; font-variant: small-caps; background-color: blue;">
	<input type="submit" value="Exit" id="snd" onclick="window.close();"
		style="color: white; width: 100px; height: 35px; font-family: cursive; font-variant: small-caps; background-color: blue; margin-left: 25px;">

</body>
</html>
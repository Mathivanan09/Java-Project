<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Last Page</title>
</head>
<body>
	<%
	String result = (String) session.getAttribute("name");
	out.print("This is the Last Page... " + result);
	%>
</body>
</html>
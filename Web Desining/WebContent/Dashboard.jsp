<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,dataBaseCon.*"%>
<%@ taglib prefix="i" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<title>DashBoard Page</title>
<link rel="stylesheet" type="text/css"
	href="F:\Icons\fontawesome-free-5.15.3-web\css\all.min.css">

<style type="text/css">
body {
	background-color: #cacaca;
}

#image {
	width: 200px;
	height: 200px;
	border-radius: 100px;
	margin-left: 70px;
	border: 4px solid white;
}

#top-div {
	margin-top: 100px;
}

h2 {
	font-family: courier;
	border: 3px solid purple;
	width: 350px;
	padding: 3px;
	text-align: center;
	background-color: white;
}

#user-info-div {
	margin-left: 650px;
	margin-top: -350px;
	border: 3px solid #0933ff;
	width: 500px;
	height: 550px;
	background-color: white;
}

#view-user-info {
	margin-left: 25px;
}

button {
	margin-left: 25px;
}

form {
	padding: 5px;
}

form label {
	font-variant: small-caps;
	font-family: cursive;
	font-size: 20px;
}

form input[type="text"], input[type="password"] {
	height: 40px;
	width: 250px;
	font-size: 20px;
	border: 2px solid #0933ff;
	border-radius: 4px;
	border-left: 15px solid #0933ff;
	border-right: 15px solid #0933ff;
}

#new {
	text-decoration: none;
	margin-left: 25px;
	padding: 7px;
	border: 3px solid blue;
	background-color: #0bbafd;
	color: #ffffff;
	font-size: 20px;
	border-radius: 9px;
	font-family: cursive;
}

#NameStyle {
	background-color: #0933ff;
	color: white;
	border-bottom: 2px solid #0933ff;
	margin-top: 10px;
	text-align: left;
	height: 60px;
}

h3 {
	font-variant: small-caps;
	font-family: monospace;
	font-size: 25px;
	margin-top: -10px;
	margin-left: 15px;
	padding: 9px;
}

input[type="submit"] {
	margin-left: 420px;
	height: 35px;
	width: 70px;
	border: 3px solid blue;
	background-color: #0bbafd;
	color: #ffffff;
	border-radius: 9px;
	text-align: center;
	font-size: 17px;
	font-family: cursive;
	margin-top: 10px;
}
</style>
</head>
<body>

	<%
	String getName = session.getAttribute("name").toString();
	String getMobile = session.getAttribute("mobile").toString();
	String getEmail = session.getAttribute("email").toString();
	String getPassw = session.getAttribute("pass").toString();
	%>

	<div id="main-div">
		<div id="top-div">
			<img id="image" alt="User Image" src="Image/User.png">
			<h2>
				Welcome
				<%=getName%></h2>
		</div>

		<div id="user-info-div">
			<div id="NameStyle">
				<h3>User Details</h3>
			</div>
			<input type="submit" value="Edit"
				onclick="location.href='Editing.jsp'">
			<form>
				<div id="view-user-info">
					<label>Name :</label><br> <input type="text"
						value=<%=getName%> maxlength="25" disabled><br> <br>
					<label>Mobile :</label><br> <input type="text"
						value=<%=getMobile%> disabled><br> <br> <label>Email-Id
						:</label> <br> <input type="text" value=<%=getEmail%> disabled><br>
					<br> <label>Password :</label><br> <input type="password"
						value=<%=getPassw%> disabled><br> <br>
				</div>
				<br> <a href="Logout.jsp" id="new">Logout</a>
			</form>
		</div>
	</div>
</body>
</html>
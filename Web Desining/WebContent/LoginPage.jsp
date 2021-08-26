<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>

<style type="text/css">
body {
	background-color: #008080;
}

h3 {
	color: black;
	font-family: sans-serif;
	font-variant: small-caps;
}

label {
	color: #000040;
	font-family: monospace;
	font-variant: small-caps;
	font-size: 20px;
}

#lgn-div {
	margin-left: 420px;
	margin-top: 100px;
	border: 5px solid #bc4ff7;
	border-top: 15px solid #bc4ff7;
	border-bottom: 15px solid #bc4ff7;
	width: 350px;
	height: 420px;
	background-color: white;
}

form {
	margin-left: 25px;
}

#name {
	text-align: center;
	border-bottom: 5px solid #bc4ff7;
}

#div-form {
	margin-left: 20px;
	margin-top: 20px;
}

input[type="email"], [type="password"] {
	height: 25px;
	width: 200px;
	margin-top: -10px;
	outline-color: #bc4ff7;
}

a {
	text-decoration: none;
	outline: none;
}

#new {
	margin-left: 25px;
	margin-top: 500px;
	border: 3px solid #bc4ff7;
	height: 25px;
	width: 100px;
	padding: 7px;
	color: black;
}

input[type="submit"] {
	width: 100px;
	height: 30px;
	border: 2px solid #bc4ff7;
	font-family: monospace;
	font-variant: small-caps;
	font-size: 18px;
	outline-color: #bc4ff7;
}

input[type="submit"]:hover, #new:hover {
	background-color: #bc4ff7;
}
</style>
</head>
<body>
	<%
	String email = null;
	if (session.getValue("email") != null) {
		email = session.getAttribute("email").toString();
	} else {
		email = "";
		session.invalidate();

	}
	%>

	<div id="lgn-div">
		<div id="name">
			<h3>Login Form</h3>
		</div>
		<div id="div-form">
			<form method="post" action="LoginProcess.jsp">
				<br> <label for="nameid">Email-Id :</label><br> <br>
				<input type="email" id="nameid" required name="email" autofocus
					value=<%=email%>><br> <br> <label for="passw">Password
					:</label><br> <br> <input type="password" name="pass" id="passw"
					required><br> <br> <a href="ForgetPass.jsp">Forget
					Password?</a><br> <br> <input type="submit" value="Login">
			</form>
			<br> <br> <a href="Register.html" id="new">Create New
				Account</a>
		</div>
	</div>
</body>
</html>
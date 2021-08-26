<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,dataBaseCon.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Editing Page</title>
<style type="text/css">
#edit-div {
	margin-left: 500px;
	margin-top: 100px;
	border: 3px solid lime;
	height: 400px;
	width: 350px;
	background-color: #a68933;
}

form {
	margin-left: 30px;
	margin-top: 20px;
}

h3 {
	border-bottom: 5px solid lime;
	height: 30px;
	font-family: monospace;
	font-variant: small-caps;
	font-size: 25px;
	color: #000000;
	text-align: center;
	padding: 10px;
	margin-top: -2px;
}

label {
	font-size: 20px;
	font-family: cursive;
	font-variant: small-caps;
}

input[type="text"] {
	height: 25px;
	width: 200px;
	font-size: 15px;
	border-radius: 7px;
	border-color: lime;
	font-family: monospace;
}

input[type="submit"] {
	border-color: lime;
	width: 100px;
	height: 35px;
	font-family: cursive;
	font-size: 17px;
	font-variant: small-caps;
}

body {
	background-color: #9a9a4e;
}
</style>
</head>
<body>

	<%
	//out.print(m.get("name	"));
	//out.print(m.get("mobile 	"));

	String name = session.getAttribute("name").toString();
	String mobile = session.getAttribute("mobile").toString();
	String emailid = session.getAttribute("email").toString();
	String passw = session.getAttribute("pass").toString();
	%>


	<div id="edit-div">
		<h3>Updation Process</h3>
		<form action="EditRes.jsp" method="post">
			<label>Name : </label> <br> <input type="text" value=<%=name%>
				name="name1" autofocus><br> <br> <label>Mobile
				: </label> <br> <input type="text" value=<%=mobile%> name="mobile1"><br>
			<br> <label>Password : </label> <br> <input type="text"
				name="pass1" value=<%=passw%>><br>
			<br> <br> <input type="submit" value="Update">

		</form>
	</div>



</body>
</html>
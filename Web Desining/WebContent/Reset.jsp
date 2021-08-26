<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Resetting Password</title>
<style type="text/css">
#main-div
{
	margin-left:35%;
	margin-top: 7%;
	border: 2px solid black;
	padding: 20px;
	width: 25%;
	height: 350px;
}

#head,#div-form
{
	margin-left: 20px;
}

#head{
	
}

h3
{
	border-bottom: 3px solid fuchsia;
	padding: 5px;
	width: 370px;
	margin-left:-40px;
	display: inline-block;
	text-align: center;
}
#div-form
{

}
label
{

}
input[type="text"]
{

}
input[type="submit"]
{

}
</style>
</head>
<body>

	<%
	String email = (String) session.getAttribute("email");
	%>

	<div id="main-div">
	<div id="head">	
	<h3 style="font-variant: small-caps; font-family: courier; font-size: 30px;">Change Password</h3>
	</div>
	
		<div id="div-form">
			<form action="ResetRes.jsp" method="post" onsubmit="return check()">			
				<label for="pass">New Password:</label><br> <input type="text"
					id="pass" name="pass" ><br>
				<br>
				<br> <label for="cpass">Re-Enter Password:</label><br> <input
					type="text" id="cpass"><br>
				<br>
				<br> <input type="submit" value="Confirm">
			</form>
		</div>	
	</div>
	
	
	<script type="text/javascript">
		function check() {
			pattern4 = /^((?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%&*?]).{8,})+$/
			var x = document.getElementsByTagName('input');

			if (x[0].value == "") {
				alert("please,Fill the Password Field..");
				return false;
			}
			if (!pattern4.test(x[0].value)) {
				alert("Must Using A-Z a-z 0-9 and Special Characters in Password Field");
				return false;
			}
			if (x[0].value.length <= 7) {
				alert("Sorry.. Minimum Password Length is 8 Character..");
				return false;
			}

			if (x[1].value == "") {
				alert("please,Fill the Re-Enter Field..");
				return false;
			}

			if (x[0].value != x[1].value) {
				alert("Please check,the Password and Confirm_Password are Same!!");
				return false;
			}
		}
	</script>





</body>
</html>
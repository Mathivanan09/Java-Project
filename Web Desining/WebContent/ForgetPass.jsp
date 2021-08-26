<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Forget Password</title>
<style type="text/css">
#div-main {
	border: 5px solid fuchsia;
	margin-left: 400px;
	margin-top: 40px;
	width: 350px;
	height: 490px;
}

#msg {
	text-align: center;
	font-family: sans-serif;
	font-variant: small-caps;
	font-size: 30px;
}

#div-msg {
	border-bottom: 4px solid fuchsia;
	padding: 10px;
	background-color: #ffffff;
	color: black;
}

form {
	padding: 10px;
	margin-left: 10px;
	margin-top: 10px;
}

#div-main {
	background-color: #ffffff;
}

#emailName {
	font-size: 20px;
	font-family: cursive;
	font-variant: small-caps;
	border: 2px solid;
	padding: 5px;
	
	color: black;
	border-color: fuchsia;
	border-radius: 5px;
}

#email {
	height: 40px;
	width: 250px;
	border-left: 15px solid fuchsia;
	border-right: 15px solid fuchsia;
	border-top: 3px solid fuchsia;
	border-bottom: 3px solid fuchsia;
	font-size: 20px;
	font-family: cursive;
	border-radius: 5px;
	outline: none;
}

/* #email:hover {
	border-left: 15px solid orange;
	border-right: 15px solid orange;
	border-top: 3px solid orange;
	border-bottom: 3px solid orange;
} */

input[type="submit"] {
	width: 150px;
	height: 40px;
	background-color: white;
	border-radius: 5px;
	font-size: 20px;
	font-family: cursive;
	color: black;
	font-variant: small-caps;
	margin-top: 20px;
	border-color: fuchsia;
}

input[type="submit"]:hover {
	background-color: fuchsia;
	color: black;
}

#back {
	margin-left: 12px;
}

/* #emailName:hover {
	border-color: fuchsia;
	background-color: fuchsia;
	color: black;
} */

body {
	background-color: #008080;
}

#num {
	font-size: 20px;
	font-family: cursive;
	font-variant: small-caps;
	border: 2px solid;
	padding: 5px;
	background-color: white;
	color: black;
	border-color: fuchsia;
	border-radius: 5px;
}

/* #num:hover {
	border-color: yellow;
	background-color: orange;
} */

#number {
	height: 40px;
	width: 250px;
	border-left: 15px solid fuchsia;
	border-right: 15px solid fuchsia;
	border-top: 3px solid fuchsia;
	border-bottom: 3px solid fuchsia;
	font-size: 20px;
	font-family: cursive;
	border-radius: 5px;
	outline: none;
}

/* #number:hover {
	border-left: 15px solid orange;
	border-right: 15px solid orange;
	border-top: 3px solid orange;
	border-bottom: 3px solid orange;
} */
</style>
</head>
<body>
	<div id="div-main">
		<div id="div-msg">
			<label id="msg">Enter Your Email-Id for Changing the Password</label><br>
			<br>
		</div>
		<div id="snd-div">
			<form action="NewWay.jsp" method="post" onsubmit="return validate()">
				<label id="emailName" for="email">Email-Id :</label><br>
				<br> <input type="email" id="email" name="email"
					Placeholder="Enter Your Email Address" required><br>
				<br> <label for="number" id="num">Phone Number :</label><br>
				<br> <input type="text" id="number" name="number"
					placeholder="Registered Number" maxlength="10" required><br>
				<br> <input type="submit" value="Send"><input
					type="submit" value="Back" onclick="location.href='LoginPage.jsp'"
					id="back">
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function validate() {
			pattern2 = /^[6-9][0-9]{9}$/

			var x = document.getElementsByTagName('input');

			if (x[1].value == "") {
				alert("Please, Fill the Mobile Field");
				return false;
			}

			if (!pattern2.test(x[1].value)) {
				alert("Please,Enter Your 10 Digit Mobile Number Correctly");
				return false;
			}

			if (x[1].value.length < 10) {
				alert("Your Mobile Number length is Lessthan 10 Digit");
				return false;
			}
		}
	</script>
</body>
</html>
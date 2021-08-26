<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dataBaseCon.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Response Page</title>
<style type="text/css">
	body
	{
		background-color: hsl(180,50%,30%);
		color: white;
		font-variant: small-caps;
		font-family: courier;
		font-size: 35px;
	}

</style>

</head>
<body onload="frd()">
<% 
 	String email=(String)session.getAttribute("email");
	String pass=(String)request.getParameter("pass");
	DBProcess db=new DBProcess();
	boolean b=db.resetNewWayRes(email, pass);
	if(b==true)
	{
		out.print("<h3>Your Password is Changing Successfully...</h3>");
		
	}
	else
	{
		out.print("Something is Wrong...");
	}
	
%>

		<script type="text/javascript">
			function frd()
			{
				time1=2;
				to=setTimeout("location.reload(true)",time1*1000);
				console.log(window.location.href);
				setTimeout("location.assign('LoginPage.jsp')",time1*1000);
				
			}
			setInterval(page,2000);
			
		</script>


</body>
</html>
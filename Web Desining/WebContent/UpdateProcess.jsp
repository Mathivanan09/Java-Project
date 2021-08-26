<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,dataBaseCon.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Process</title>
<style type="text/css">
body
{
	background-color: #6ac8bc;
}
h3
{
	font-family: cursive;
	color: #003aff;
}

</style>
</head>

<body>

<%

	String email=session.getAttribute("emailPass").toString();
	String pass=session.getAttribute("pass").toString();

	
	DBProcess db=new DBProcess();
	HashMap m=db.login(email, pass);
	
	if(m.get("name")!=null)
	{
	String Mo=(String)m.get("mobile");
	String Na=(String)m.get("name");
	String Em=(String)m.get("email");
	String Passw=(String)m.get("pass");
	
	session.setAttribute("name", Na);
	session.setAttribute("mobile", Mo);
	session.setAttribute("email", Em);
	session.setAttribute("pass", Passw);
	response.sendRedirect("Dashboard.jsp");
	}

	else
	{
		out.print("<h3>Sorry, Your Session was Timeout...</h3><br><h3>Please Login Again...</h3><br>");
		out.print("<input type='submit' value='Login' onclick=location.href='LoginPage.jsp' style='color:white;width:100px;height:35px;font-family:cursive;font-variant:small-caps;background-color:blue;'>");

	}

%>
 



</body>
</html>
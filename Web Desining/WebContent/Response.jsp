<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,dataBaseCon.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Response Page</title>
</head>
<body>

<% 
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");
	
	DBProcess db=new DBProcess();
	HashMap m=db.login(email, pass);
	
	String Mo=(String)m.get("mobile");
	String Na=(String)m.get("name");
	String Em=(String)m.get("email");
	//out.print(m.get("name	"));
	//out.print(m.get("mobile 	"));
	 
%>
<div id="edit-ctrl-div">
	<label>Name : </label><br>
	<input type="text" value=<%= Na %> disabled><br><br>
	<label>Mobile : </label><br>
	<input type="text" value=<%= Mo %> disabled><br><br>
	<label>Email-Id : </label><br>
	<input type="text" value=<%= Em %> disabled><br><br>
</div>
</body>
</html>
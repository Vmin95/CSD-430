<%-- 
File2.jsp
Module 3 assignment
Julia Gonzalez
8/24/25
CSD430
Data display
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Submitted</title>
</head>
<body>
	<h1>Summary</h1>
	
	<%
		String fullName = request.getParameter("fullName");
		String email = request.getParameter("email");
		String role = request.getParameter("role");
		String availability = request.getParameter("availability");
		String coverLetter = request.getParameter("coverLetter");
	%>
	
	<table border="1">
		<tr>
			<th>Field</th>
			<th>Input</th>
		</tr>
		<tr>
			<td>Full Name</td>
			<td><%= fullName %></td>
		</tr>
		<tr>
			<td>Email Address</td>
			<td><%= email %></td>
		</tr>
		<tr>
			<td>Role</td>
			<td><%= role %></td>
		</tr>
		<tr>
			<td>Availability</td>
			<td><%= availability %></td>
		</tr>
		<tr>
			<td>Cover Letter</td>
			<td><%= coverLetter %></td>
		</tr>
	</table>
</body>
</html>
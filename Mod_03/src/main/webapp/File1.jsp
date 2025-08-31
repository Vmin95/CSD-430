<%-- 
File1.jsp
Module 3 assignment
Julia Gonzalez
8/24/25
CSD430
info gather
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Application Form</title>
</head>
<body>
	<h1>Job Application</h1>
	
	<form action="File2.jsp" method="post">
		<fieldset>
			<legend>Information</legend>
			
			<label for="fullName">Full Name:</label>
			<input type="text" name="fullName" id="fullName" required><br><br>
			
			<label for="email">Email Address:</label>
			<input type="email" name="email" id="email" required><br><br>
			
			<label for="role">Role Applied for:</label>
			<select name="role" id="role">
				<option value="HR Manager">HR Manager</option>
				<option value="HR Assistant">HR Assistant</option>
				<option value="Recruiter">Recruiter</option>
			</select><br><br>
			
			<label>Availability:</label>
			<input type="radio" name="availability" value="Full Time" checked> Full Time
			<input type="radio" name="availability" value="Part Time"> Part Time
			<input type="radio" name="availability" value="Contract"> Contract<br><br>
			
			<label for="coverLetter">Cover Letter:</label><br>
			<textarea name="coverLetter" id="coverLetter" rows="5" cols="50"></textarea><br><br>
			<input type="submit" value="Submit">
		</fieldset>
	</form>
	
</body>
</html>
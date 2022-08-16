<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee</title>
</head>
<body>
	<h3>Add New Employee</h3>
	<form action="AddNewEmployeeServlet" method="post">
	
		Employee Id : <input type="text" name="employeeid"> <br>
		
		Name : <input type="text" name="employeename"><br>
		
		Salary : <input type="text" name="salary"><br> 
		
		<input type="submit" value="Add Employee">

	</form>

</body>
</html>
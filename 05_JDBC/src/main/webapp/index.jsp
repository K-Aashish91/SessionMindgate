<%@page import="com.mindgate.pojo.Employee"%>
<%@page import="java.util.List"%>
<%@page import="com.mindgate.repository.EmployeeRepository"%>
<%@page import="com.mindgate.repository.EmployeeRepositoryInterface"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee CRUD</title>
</head>
<body>
	<h3>All Employees</h3>
	<%!EmployeeRepositoryInterface employeeRepositoryInterface = new EmployeeRepository();%>
	<%
	List<Employee> allEmployees = employeeRepositoryInterface.getAllEmployees();
	%>

	<form action="ActionServlet" method="post">
		<table border="1" style="width: 100%">
			<thead>
				<th>EmployeeId</th>
				<th>Name</th>
				<th>Salary</th>
				<th>Action</th>
			</thead>
			<%
			for (Employee employee : allEmployees) {
			%>
			<tr>
				<td><%=employee.getemployee_Id()%></td>
				<td><%=employee.getName()%></td>
				<td><%=employee.getSalary()%></td>
				<td><input type="radio" name="action"
					value="<%=employee.getemployee_Id()%>"></td>
			</tr>
			<%
			}
			%>
		</table>
		<input type="submit" value="Delete" name="operation">
		<input type="submit" value="Update" name="operation">
	</form>
	<br>
	<br>

	<form action="newemployee.jsp">
		<input type="submit" value="Add New">
	</form>
</body>
</html>
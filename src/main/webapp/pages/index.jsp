<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
</head>
<body>
	<h3>Product Details</h3>
	<p> ${msg} </p>
	<form:form action="/product" modelAttribute="product" method="POST">
		<table>
			<tr>
				<td>Name :</td>
				<td><form:input type = "text" path ="name"/></td>
			</tr>
			<tr>
				<td>Price :</td>
				<td><form:input type = "text" path ="price"/></td>
			</tr>
			<tr>
				<td>Quantity :</td>
				<td><form:input type = "text" path ="qty"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="save"/>
				</td>
			
			</tr>
			<tr><td><a href="products">View Products</a>
			</td></tr>
		</table>
	</form:form>
</body>
</html>
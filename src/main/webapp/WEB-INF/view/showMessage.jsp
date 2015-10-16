<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<body>
	<c:url value="/insert" var="insert" />
		<h2>welcome ${firstname} spring configuration</h2>
		<form:form action="${insert}" method="post" commandName="user">
		User  Name
		<form:input type="text" path="userName"/><br/>
		
		User  First Name
		<form:input type="text" path="firstName"/><br/>
		
		User  Last Name
		<form:input type="text" path="lastName"/><br/>
		
		User  Email
		<form:input type="text" path="email"/><br/>
		
		User  Password
		<form:input type="text" path="password"/><br/>
		
		
		<input type="submit" value="Insert"/>
		 
		</form:form>
	</body>
</html>

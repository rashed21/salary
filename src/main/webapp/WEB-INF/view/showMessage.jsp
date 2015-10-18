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
	
	
	
	
	
		<h2>welcome ${userentity.firstname} spring configuration</h2>
		
		
		<c:url value="/insert" var="insert" />
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
		
		
		
		<center>
		<h2>User Info List</h2>
	</center>

	<c:if test="${not empty lists}">

		<center>
			<c:forEach var="listValue" items="${lists}">
				<c:out value="${listValue.firstName}"></c:out>&nbsp;&nbsp;
				
				<c:out value="${listValue.userName}"></c:out>&nbsp;&nbsp;
				
				
				<c:out value="${listValue.lastName}"></c:out>&nbsp;&nbsp;
				<c:out value="${listValue.email}"></c:out>&nbsp;&nbsp;
				
				
				<br />
				<br />
			</c:forEach>
		</center>
	</c:if>
	</body>
</html>

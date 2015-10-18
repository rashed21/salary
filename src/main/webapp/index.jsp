<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<body>
	<h3>Welcome Salary Sheet Spring Mybaties project</h3>
		<c:url value="/show" var="messageUrl" />
		<c:url value="/institute" var="institutionUrl"></c:url>
		
		<c:url value="/salary" var="salaryUrl"></c:url>
		
		
		
		<a href="${messageUrl}">User Info</a> <br/>  <br/>
		<a href="${institutionUrl}">Institution Info</a><br/><br/>
		<a href="${salaryUrl}">Salary Page</a>
		
	</body>
</html>

<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta charset="utf-8">
<title>Welcome</title>
</head>
<body>
	<h2>welcome InstitutionInfo page</h2>
<c:url value="/show" var="messageUrl" />
		
		
		<c:url value="/salary" var="salaryUrl"></c:url>
		
		
		
		<a href="${messageUrl}">User Info</a> <br/>  <br/>
		
		<a href="${salaryUrl}">Salary Page</a>


	<c:url value="/insertPage" var="insert" />
	<form:form action="${insert}" method="post" commandName="institute">
	
	
Institution Name

		<select name="insName">
			<option value="0">Select a project manager</option>

			<c:forEach var="listValue" items="${lists}">
				
					<option><c:out value="${listValue.insName}"/></option>
			</c:forEach>
		</select>
		<br />
		<br />
		 <c:if test="${institute.insId>0}">
                <form:label path="insId">Id  </form:label>
                <form:input path="insId" /><br>
       </c:if>
		institution  Name
		<form:input type="text" path="insName" />
		<br />
		<br />
		
		Location
		<form:input type="text" path="location" />
		<br />
		<br />
<c:if test="${institute.insId>0}">
               <input type="submit" value="Update" />
       </c:if>
		<c:if test="${institute.insId<=0}">
               <input type="submit" value="Insert" />
       </c:if>

	</form:form>



	<center>
		<h2>Institution Info</h2>
	</center>

	<c:if test="${not empty lists}">

		<center>
			<c:forEach var="listValue" items="${lists}">
				<c:out value="${listValue.insId}"></c:out>&nbsp;&nbsp;
				
				<c:out value="${listValue.userId}"></c:out>&nbsp;&nbsp;
				
				
				<c:out value="${listValue.insName}"></c:out>&nbsp;&nbsp;
				<c:out value="${listValue.location}"></c:out>&nbsp;&nbsp;
				
			
				<a href="<c:url value='/delete/${listValue.insId}' />">Remove</a>
				
				<a href="<c:url value='/update/${listValue.insId}' />">Update</a>
				<br />
				<br/>
				
			</c:forEach>
		</center>
	</c:if>
	
	
	
	
	

</body>
</html>
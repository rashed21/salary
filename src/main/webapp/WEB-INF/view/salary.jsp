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
		
		
		
		<c:url value="/institute" var="institutionUrl"></c:url>
		
		<a href="${institutionUrl}">Institution Info</a><br/><br/>
		<a href="${messageUrl}">User Info</a> <br/>  <br/>
		
		


	<c:url value="/addSalary" var="insert" />
	<form:form action="${insert}" method="post" commandName="salary">
	
	


		
	
		Employee  Name
		<form:input type="text" path="empName" />
		<br />
		<br />
		
		Basic
		<form:input type="text" path="bsaic" />
		<br />
		<br />
			House Rent
		<form:input type="text" path="homeRent" />
		<br />
		<br />
		
		Medical
		<form:input type="text" path="medical" />
		<br />
		<br />
			Tiffin
		<form:input type="text" path="tifin" />
		<br />
		<br />
		
		Transport
		<form:input type="text" path="transport" />
		<br />
		<br />
			Education
		<form:input type="text" path="education" />
		<br />
		<br />
		
		Extra
		<form:input type="text" path="extra" />
		<br />
		<br />
			Others
		<form:input type="text" path="others" />
		<br />
		<br />
		
		Pro. Fund
		<form:input type="text" path="proFund" />
		<br />
		<br />

		Loan
		<form:input type="text" path="loan" />
		<br />
		<br />
		
		Others Loan
		<form:input type="text" path="olherLoan" />
		<br />
		<br />
               <input type="submit" value="Insert" />
      

	</form:form>


<center>
		<h2>Institution Info</h2>
	</center>

	<c:if test="${not empty saLists}">

		<center>
			<c:forEach var="listValue" items="${saLists}">
				<c:out value="${listValue.empName}"></c:out>&nbsp;&nbsp;
				
				<c:out value="${listValue.bsaic}"></c:out>&nbsp;&nbsp;
				
				
				<c:out value="${listValue.homeRent}"></c:out>&nbsp;&nbsp;
				<c:out value="${listValue.medical}"></c:out>&nbsp;&nbsp;
					<c:out value="${listValue.tifin}"></c:out>&nbsp;&nbsp;
				
				<c:out value="${listValue.transport}"></c:out>&nbsp;&nbsp;
				
				
				<c:out value="${listValue.education}"></c:out>&nbsp;&nbsp;
				<c:out value="${listValue.extra}"></c:out>&nbsp;&nbsp;
				
			
			
				<c:out value="${listValue.others}"></c:out>&nbsp;&nbsp;
				
				<c:out value="${listValue.proFund}"></c:out>&nbsp;&nbsp;
				
				
				<c:out value="${listValue.loan}"></c:out>&nbsp;&nbsp;
				<c:out value="${listValue.olherLoan}"></c:out>&nbsp;&nbsp;
				
			
				<a href="<c:url value='/deleteSal/${listValue.salId}' />">Remove</a>
				
				
				<br />
				<br/>
				
			</c:forEach>
		</center>
	</c:if>


</body>
</html>
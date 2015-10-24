<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
		  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	</head> 
		<body style="background-color:#193147;">
	
<div class="jumbotron" style="background-color:#193147; color: white;">
<div class="container" style="background-color:#193147;">
  
  <div class="jumbotron" style="background-color:#193147;">
  
    <div class="row">
    <div class="col-md-8">
    <h1>Welcome To Be a Good Friend.....</h1>      
    <p>Just Three step to for first Time To Ready Salary Sheet</p>  
    <p>From Second Time it will Take just some moment to ready Your Salary</p>
     </div>
    <div class="col-md-4">
    
    
     
    <c:if test="${loginVal==10}">
   
    
  <c:url value="/insert" var="insert" />
		<form:form action="${insert}" method="post" commandName="user">
  <div class="form-group">
    <label >User Name</label>
  <form:input type="text" path="userName" class="form-control"  />
  </div>
 
  <div class="form-group">
    <label >Password</label>
    <form:input type="text" path="password" class="form-control"   placeholder="Password"/>
  </div>  
  <button type="submit" class="btn btn-default">Submit</button>
</form:form> 
    </c:if>
    
    
    
    
  <c:if test="${loginVal!=10}">  
    <c:url value="/insert" var="insert" />
		<form:form action="${insert}" method="post" commandName="user">
  <div class="form-group">
    <label >User Name</label>
  <form:input type="text" path="userName" class="form-control"  />
  </div>
  <div class="form-group">
    <label >First Name</label>
   <form:input type="text" path="firstName" class="form-control"  />
    <label >Last Name</label>
   <form:input type="text" path="lastName" class="form-control"  />
  </div>
  <div class="form-group">
    <label >E-mail</label>
   <form:input type="email" path="email" class="form-control" />
    <label >Password</label>
    <form:input type="text" path="password" class="form-control"   placeholder="Password"/>
  </div>
 

  
  <button type="submit" class="btn btn-default">Submit</button>
</form:form>
    
   </c:if>
    
    
     </div>
      </div>
    </div>
</div>		
		
	</body>
           
  </div>

	
	
	
	
	
		
		
		
		
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

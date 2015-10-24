<!DOCTYPE html>

<html lang="en">

<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
		  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
	</head> 
	<body style="background-color:#193147;">
	
<div class="jumbotron" style="background-color:#193147; color: white;">
<div class="container" style="background-color:#193147;">
  
  <div class="jumbotron" style="background-color:#193147;">
  
    <div class="row">
    <div class="col-md-8">
    <h1>My Salary Sheet On website!</h1>      
    <p>Just Three step to for first Time To Ready Salary Sheet</p>  
    <p>From Second Time it will Take just some moment to ready Your Salary</p>
     </div>
    <div class="col-md-4"> 
    
       <c:url value="/insert" var="insert" />
		<form:form action="${insert}" method="post" commandName="login">
  <div class="form-group">
    <label >User Name</label>
  <form:input type="text" path="userNameu" class="form-control"  />
  </div>
 
  <div class="form-group">
    
    <label >Password</label>
    <form:input type="text" path="pass" class="form-control"   placeholder="Password"/>
  </div>
 

  
  <button type="submit" class="btn btn-default">Submit</button>
</form:form>
    
    
  
    
    
     </div>
      </div>
    
    
   
   
   
   
   
   
   
   
           
  </div>

  <div class="row">
    <div class="col-md-3">
    ....
     </div>
    <div class="col-md-3"> 
      <p>
		<c:url value="/show/${10}" var="messageUrl" />
		<c:url value="/show" var="registerUrl" />
		<c:url value="/institute" var="institutionUrl"></c:url>
		
		<c:url value="/salary" var="salaryUrl"></c:url>
		
		<c:url value="/employee" var="employeeUrl"></c:url>
		
		
		
		
		
		<a href="${messageUrl}">Login</a> <br/>  <br/>
		<a href="${registerUrl}">Register</a> <br/>  <br/>
		<a href="${institutionUrl}">Institution Info</a><br/><br/>
		<a href="${salaryUrl}">Salary Page</a>
		
		<a href="${employeeUrl}">Salary Page</a>
		


</p>
    </div>
    <div class="col-md-3"> 
      <p> <button data-toggle="collapse" data-target="#demo">Collapsible</button>

<div id="demo" class="collapse">
....
</div></p>
    </div>
    <div class="col-md-3">
      
    </div>
    <div class="clearfix visible-lg">
    
    
    </div>
  </div>
</div>
</div>		
		
	</body>
</html>
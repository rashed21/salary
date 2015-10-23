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
     <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" rel="stylesheet"/>
        <link href="https://raw.githubusercontent.com/Eonasdan/bootstrap-datetimepicker/master/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet"/>

        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="../resources/css/datepicker.css"/>
        <script src="../resources/js/bootstrap-datepicker.js"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


<script>
            $(document).ready(function () {

                $("#open").click(function () {
                    document.getElementById("demo").className = "show";
                });
       
            });
        </script>

</head>
<body>
	<h2>welcome InstitutionInfo page</h2>
<c:url value="/show" var="messageUrl" />
		
		
		<c:url value="/salary" var="salaryUrl"></c:url>
		
		
		
		<a href="${messageUrl}">User Info</a> <br/>  <br/>
		
		<a href="${salaryUrl}">Salary Page</a>



<div class="container">
    <button type="button" class="btn btn-success" data-toggle="collapse" data-target="#demo" id="open">
      <span class="glyphicon glyphicon-collapse-down"></span> Add Employee
    </button>
  <div id="demo" class="hidden">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
  </div>
</div>


<a class="btn btn-primary" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
  Link with href
</a>
<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
  Button with data-target
</button>
<div class="collapse" id="collapseExample">
  <div class="well">
  Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
  </div>
</div>


	<center><h1>${currentInst.insName}</h1></center>

<c:if test="${not empty currentInst}">


<c:url value="/insertEmp/${currentInst.insId}" var="insert" />
	<form:form action="${insert}" method="post" commandName="employee">
	
		Employee  Name
		<form:input type="text" path="name" />
		
		
		Area
		<form:input type="text" path="area" />
	&nbsp;&nbsp;

	Post  Name
		<form:input type="text" path="post" />
	&nbsp;&nbsp;
		
		Contact No
		<form:input type="text" path="contact" />
		&nbsp;&nbsp;
		<br/><br/>
	Date of Birth
		<form:input type="text" path="dateOfBirth" />
		&nbsp;&nbsp;
		Join Date
		<form:input type="text" path="joinDate" />
		&nbsp;&nbsp;

	Gender
		<form:input type="text" path="gender" />
		&nbsp;&nbsp;
		Subject
		<form:input type="text" path="subject" />
		&nbsp;&nbsp;


               <input type="submit" value="Insert" />


	</form:form>
	
</c:if>
	

<c:url value="/viewEmp" var="view" />
	<form:form action="${view}" method="post" commandName="employee">
	
	
Institution Name
	<form:select path="institute" name="state" onchange="this.form.submit();" >
	 <form:option value="0" label="--Select One--" />
	<c:forEach var="listValue" items="${lists}" varStatus="insSl">
	 <form:option value="${listValue.insId}" label="${listValue.insName}" />
	
	 
	</c:forEach>
 
	</form:select>
</form:form>
	<c:if test="${not empty employeeList}">
 <div class="table-responsive"> 
<table class="table table-bordered ">

    <thead>

        <tr  class="info">
         <th>Sl No.</th>

            <th>Institute Id</th>

            <th>Employee Name</th>

            <th>Basic</th>

            <th>Home Rent</th>
            <th>Medical</th>

            <th>Tiffin</th>

            <th>Transport</th>

            <th>Education</th>
            
            <th>Allowance</th>

            <th>Dholai</th>

            
            <th>Delete</th>

        </tr>

    </thead>

    <tbody>
     <c:forEach var="employee" items="${employeeList}" varStatus="empSl">
    
   
       
         
         <tr class="success">
         <td>${empSl.index+1}</td>
			 <td>${employee.institute}</td>
            <td>${employee.name}</td>

            <td>${employee.area}</td>

          
           <td>${employee.post}</td>
           <td>${employee.contact}</td>
                     
           
           <td>${employee.dateOfBirth}</td>
           
           <td>${employee.joinDate}</td>
           
           <td>${employee.gender}</td>
           
           
           <td>${employee.subject}</td>
           <td><a href="<c:url value='/deleteEmp/${employee.empId},${employee.institute}' />">Remove</a></td>
           
       </tr>      
        
    </c:forEach>
   
        
    

    </tbody>

</table>
</div>
</c:if>
	
</body>
</html>
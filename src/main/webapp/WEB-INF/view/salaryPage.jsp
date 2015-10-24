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
		<form:checkbox path="olherLoan" value="500" />500
                                       <form:checkbox path="olherLoan" value="1000" />1000 
                                       <form:checkbox path="olherLoan" value="3000" />2000
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

//  




<c:url value="/addSalary" var="insert" />
	<form:form action="${insert}" method="post" commandName="salary">
	
	Institution Name
	<form:select path="empId">
			<form:option value="0" label="--Select One--" />
			<c:forEach var="listValue" items="${lists}">
				<form:option value="${listValue.insId}" label="${listValue.insName}" />


			</c:forEach>

		</form:select>

		&nbsp;&nbsp;&nbsp;&nbsp;
	Employee Name
		<form:input type="text" path="empName" />
		&nbsp;&nbsp;
		
		
		Basic
		<form:input type="text" path="bsaic" />
		&nbsp;&nbsp;
		<br />
		<br />
Education&nbsp;&nbsp;&nbsp;&nbsp;
		<form:radiobutton path="education" value="0.00" /> Not Allowed 
		<form:radiobutton path="education" value="200.00" /> One Child 
		<form:radiobutton path="education" value="300.00" />Two Child
		<form:radiobutton path="education" value="0.00" /> More Than Two 
		&nbsp;&nbsp;	
		<br />
		<br />
		<br />
		Post&nbsp;&nbsp;&nbsp;&nbsp;
		<form:radiobutton path="others" value="0.00" /> Head Teacher 
		<form:radiobutton path="others" value="0.00" /> Ass. Teacher 
		<form:radiobutton path="others" value="75.0" /> MLSS
		&nbsp;&nbsp;
		<br />
		<br />
	
		Pro. Fund
		<form:input type="text" path="proFund" />
		&nbsp;&nbsp;

		Loan
		<form:input type="text" path="loan" />
		&nbsp;&nbsp;
		
		Others Loan
		<form:input type="text" path="olherLoan" />

		<br />
		<br />
		<input type="submit" value="Insert" />


	</form:form>
///sheet on a user of salary////////////////////////////


<c:if test="${not empty saLists}">
		<div class="table-responsive">
			<table class="table table-bordered ">

				<thead>

					<tr class="info">
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

						<th>TotalSalary</th>

						<th>Provident Found</th>

						<th>Load</th>

						<th>Extra Loan</th>

						<th>Neat Salary</th>
						<th>Delete</th>

					</tr>

				</thead>

				<tbody>
					<c:forEach var="onGroup" items="${salaryListGroupBy}"
						varStatus="sl">

						<c:forEach var="employee" items="${saLists}" varStatus="empSl">


							<c:if test="${onGroup.empId==employee.empId}">

								<tr class="success">
									<td>${empSl.index+1}</td>
									<td>${employee.empId}</td>
									<td>${employee.empName}</td>

									<td>${employee.bsaic}</td>


									<td>${employee.homeRent}</td>
									<td>${employee.medical}</td>


									<td>${employee.tifin}</td>

									<td>${employee.transport}</td>

									<td>${employee.education}</td>


									<td>${employee.extra}</td>

									<td>${employee.others}</td>

									<td>${employee.bsaic+employee.homeRent+employee.medical+employee.tifin+employee.transport+employee.education+employee.extra+employee.others}</td>

									<td>${employee.proFund}</td>
									<td>${employee.loan}</td>
									<td>${employee.olherLoan}</td>
									<td>${(employee.bsaic+employee.homeRent+employee.medical+employee.tifin+employee.transport+employee.education+employee.extra+employee.others)-(employee.proFund+employee.loan+employee.olherLoan)}</td>
									<td><a
										href="<c:url value='/deleteSal/${employee.salId}' />">Remove</a></td>
								</tr>

							</c:if>



						</c:forEach>



						<tr class="info">
							<td>${sl.index+1}</td>
							<td>${onGroup.empId}</td>
							<td>${onGroup.empName}</td>

							<td>${onGroup.bsaic}</td>


							<td>${onGroup.homeRent}</td>
							<td>${onGroup.medical}</td>


							<td>${onGroup.tifin}</td>

							<td>${onGroup.transport}</td>

							<td>${onGroup.education}</td>


							<td>${onGroup.extra}</td>

							<td>${onGroup.others}</td>

							<td>${onGroup.bsaic+onGroup.homeRent+onGroup.medical+onGroup.tifin+onGroup.transport+onGroup.education+onGroup.extra+onGroup.others}</td>

							<td>${onGroup.proFund}</td>
							<td>${onGroup.loan}</td>
							<td>${onGroup.olherLoan}</td>
							<td>${(onGroup.bsaic+onGroup.homeRent+onGroup.medical+onGroup.tifin+onGroup.transport+onGroup.education+onGroup.extra+onGroup.others)-(onGroup.proFund+onGroup.loan+onGroup.olherLoan)}</td>
							<td></td>
						</tr>

						<tr>
							<td></td>
						</tr>
					</c:forEach>

				</tbody>

			</table>
		</div>
	</c:if>

</body>
</html>








<html lang="en">

<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
    
    
  
    
    
     </div>
      </div>
    
    
   
   
   
   
   
   
   
   
           
  </div>

  <div class="row">
    <div class="col-md-3">
    ....
     </div>
    <div class="col-md-3"> 
      <p>
		<c:url value="/show" var="messageUrl" />
		<c:url value="/institute" var="institutionUrl"></c:url>
		
		<c:url value="/salary" var="salaryUrl"></c:url>
		
		<c:url value="/employee" var="employeeUrl"></c:url>
		
		
		
		
		
		<a href="${messageUrl}">User Info</a> <br/>  <br/>
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
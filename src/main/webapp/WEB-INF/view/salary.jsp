<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta charset="utf-8">
<title>Institution</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<c:url value="/employee" var="employeeUrl"></c:url>
	<c:url value="/salary" var="salaryUrl"></c:url>
	<c:url value="/institute" var="institutionUrl"></c:url>
	<c:url value="/" var="logout"></c:url>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="${salaryUrl}">My Full Sheet</a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="${employeeUrl}">Employee</a></li>
					<li><a href="${institutionUrl}">Institution</a></li>
					<li><a href="#">Report</a></li>
					<li><a href="#">About</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${logout}"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="jumbotron">
	<c:if test="${ not empty emplList}">
			<div class="center-block bg-info">
			<div class="row">
			<div class="col-md-5">
					<h2><br/>
						<center>${currentInst.insName}</center>
					</h2>
					</div>
					<div class="col-md-7"> <h3>Employee Details</h3>
	<p> Name : ${currentEmployee.name}</p>
	<p> Post : ${currentEmployee.post}</p>
	<p>Account :${currentEmployee.contact}</p></div>
			</div>
			</div>
			</c:if>
		<c:url value="/userEmployees" var="insert" />
		<form:form action="${insert}" method="post" commandName="salary"
			class="form-horizontal" role="form">
			<div class="row">
				<div class="col-md-5">

					<br />

					<div class="form-group">
						<label class="control-label col-sm-6">Institution Name :</label>
						<div class="col-sm-6">
							<form:select path="institutionFk" onchange="this.form.submit();"
								class="form-control">
								<form:option value="0" label="--Select One--" />
								<c:forEach var="listValue" items="${lists}">
									<form:option value="${listValue.insId}"
										label="${listValue.insName}" />
								</c:forEach>

							</form:select>
						</div>
					</div>

					<c:if test="${ not empty emplList}">

						<div class="form-group">
							<label class="control-label col-sm-6">Employee Name :</label>
							<div class="col-sm-6">
								<form:select path="empIdfk" onchange="this.form.submit();"
									class="form-control">
									<c:forEach var="empListVal" items="${emplList}">
										<form:option value="${empListVal.empId}"
											label="${empListVal.name}" />


									</c:forEach>
								</form:select>
							</div>
						</div>

					</c:if>
					<div class="form-group">
						<label class="control-label col-sm-6">Basic :</label>
						<div class="col-sm-6">
							<form:input type="text" path="bsaic" class="form-control" />
						</div>
					</div>




					<div class="form-group">
						<label class="control-label col-sm-6">Education :</label>
						<div class="col-sm-6">


							<label class="radio-inline"> <form:radiobutton
									path="education" value="0.00" />Not Allow
							</label> <label class="radio-inline"> <form:radiobutton
									path="education" value="200.00" />One Child
							</label> <label class="radio-inline"> <form:radiobutton
									path="education" value="300.00" />Two Children
							</label> <label class="radio-inline"> <form:radiobutton
									path="education" value="0.00" />More Than Two
							</label>

						</div>
					</div>






				</div>
				<div class="col-md-5">

					<br />






					<div class="form-group">
						<label class="control-label col-sm-4">Post :</label>
						<div class="col-sm-8">


							<label class="radio-inline"> <form:radiobutton
									path="others" value="0.00" />Head Teacher
							</label> <label class="radio-inline"> <form:radiobutton
									path="others" value="00.00" />Assistant
							</label> <label class="radio-inline"> <form:radiobutton
									path="others" value="75.00" />Others
							</label>

						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-4">Profident Found :</label>
						<div class="col-sm-8">
							<form:input type="text" path="proFund" class="form-control" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-4">Loan </label>
						<div class="col-sm-8">
							<form:input type="text" path="loan" class="form-control" />
						</div>
					</div>


					<div class="form-group">
						<label class="control-label col-sm-4">Others Loan :</label>
						<div class="col-sm-8">
							<form:input type="text" path="olherLoan" class="form-control" />
						</div>
					</div>



					<div class="form-group">
						<div class="col-sm-offset-4 col-sm-8">
							<input type="submit" value="Insert" class="btn btn-default"></input>
						</div>
					</div>



				</div>
				<div class="col-md-2"></div>
			</div>
		</form:form>


	</div>



	






	<c:if test="${not empty salaryOnInstitute}">
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


					<c:forEach var="employee" items="${salaryOnInstitute}"
						varStatus="empSl">




						<tr class="success">
							<td>${empSl.index+1}</td>
							<td>${employee.empIdfk}</td>
							<td>${employee.name}</td>

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
							<td><a href="<c:url value='/deleteSal/${employee.salId}' />">Remove</a></td>
						</tr>
					</c:forEach>

				</tbody>

			</table>
		</div>
	</c:if>
	
	
	
	
	
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


							<c:if test="${onGroup.empIdfk==employee.empIdfk}">

								<tr class="success">
									<td>${empSl.index+1}</td>
									<td>${employee.empIdfk}</td>
									<td>${employee.name}</td>

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
							<td>${onGroup.empIdfk}</td>
							<td>Total</td>

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
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



	<c:if test="${not empty currentInst}">



		<div class="jumbotron"
			style="background-color: #193147; color: white;">
			<div class="container" style="background-color: #193147;">
				<div class="row">
					<div class="col-md-8">
						<center>
							<h1>${currentInst.insName}</h1>
						</center>
					</div>
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-8"></div>
							<div class="col-md-4">
								<br />
								<button type="button" class="btn btn-success"
									data-toggle="collapse" data-target="#demo">
									<span class="glyphicon glyphicon-collapse-down"></span> Add
									Employee
								</button>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</c:if>





	<div id="demo" class="collapse">
		<div class="jumbotron">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">


					<c:url value="/insertEmp/${currentInst.insId}" var="insert" />
					<form:form action="${insert}" method="post" commandName="employee"
						class="form-horizontal" role="form">

						<div class="form-group">
							<label class="control-label col-sm-2">Employee Name :</label>
							<div class="col-sm-10">
								<form:input type="text" path="name" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Living Area :</label>
							<div class="col-sm-10">
								<form:input type="text" path="area" class="form-control" />
							</div>
						</div>



						<div class="form-group">
							<label class="control-label col-sm-2">Post :</label>
							<div class="col-sm-10">
								<form:input type="text" path="post" class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2">Contact No :</label>
							<div class="col-sm-10">
								<form:input type="text" path="contact" class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2">Birth Date :</label>
							<div class="col-sm-10">
								<form:input type="text" path="dateOfBirth" class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2">Join Date :</label>
							<div class="col-sm-10">
								<form:input type="text" path="joinDate" class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2">Gender :</label>
							<div class="col-sm-10">
								<form:input type="text" path="gender" class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2">Subject :</label>
							<div class="col-sm-10">
								<form:input type="text" path="subject" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<input type="submit" value="Insert" class="btn btn-default"></input>
							</div>
						</div>
					</form:form>

				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
	</div>















	<div class="container">
		<c:url value="/viewEmp" var="view" />
		<form:form action="${view}" method="post" commandName="employee"
			role="form">
			<div class="form-group">
				<h2>You Have To First Select From List</h2>

				<label for="sel1">Select Institution :</label>
				<form:select path="institute" name="state"
					onchange="this.form.submit();" class="form-control">
					<form:option value="0" label="--Select One--" />
					<c:forEach var="listValue" items="${lists}" varStatus="insSl">
						<form:option value="${listValue.insId}"
							label="${listValue.insName}" />


					</c:forEach>

				</form:select>
			</div>
		</form:form>
	</div>



	<c:if test="${not empty employeeList}">
		<div class="container">
			<div class="table-responsive">
				<table class="table table-bordered ">

					<thead>

						<tr class="info">
							<th>Sl No.</th>

							<th>Institute</th>

							<th>Employee Name</th>

							<th>Address</th>

							<th>Post</th>
							<th>Contact</th>

							<th>Date of Birth</th>

							<th>Join Date</th>

							<th>Gender</th>

							<th>Subject</th>

							<th>Action</th>




						</tr>

					</thead>

					<tbody>
						<c:forEach var="employee" items="${employeeList}"
							varStatus="empSl">




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
								<td><a
									href="<c:url value='/deleteEmp/${employee.empId},${employee.institute}' />">Remove</a></td>

							</tr>

						</c:forEach>




					</tbody>

				</table>
			</div>

		</div>


	</c:if>

</body>
</html>
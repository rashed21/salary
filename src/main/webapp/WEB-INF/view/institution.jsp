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
	<div class="jumbotron" style="background-color: #193147; color: white;">
		<div class="container" style="background-color: #193147;">
			<div class="row">
				<div class="col-md-8"></div>
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

	<div id="demo" class="collapse">
		<div class="jumbotron">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">



					<c:url value="/insertPage" var="insert" />


					<form:form action="${insert}" method="post" commandName="institute"
						class="form-horizontal" role="form">

						<div class="form-group">
							<label class="control-label col-sm-2">Institution Name :</label>
							<div class="col-sm-10">
								<form:input type="text" path="insName" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Location :</label>
							<div class="col-sm-10">
								<form:input type="text" path="location" class="form-control" />
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


	<c:if test="${institute.insId>0}">


		<div id="demo">
			<div class="jumbotron">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">



						<c:url value="/insertPage" var="insert" />


						<form:form action="${insert}" method="post"
							commandName="institute" class="form-horizontal" role="form">

							<div class="form-group">
								<label class="control-label col-sm-2">Institution Name :</label>
								<div class="col-sm-10">
									<form:input type="text" path="insName" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2">Location :</label>
								<div class="col-sm-10">
									<form:input type="text" path="location" class="form-control" />
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<input type="submit" value="Update" class="btn btn-default"></input>
								</div>
							</div>
						</form:form>

					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>
	</c:if>




	<c:if test="${not empty lists}">





		<div class="container">
			<div class="row">
				<div class="center-block bg-info">
					<h1>
						<center>Institution List.</center>
					</h1>
				</div>
				<div class="table-responsive">
					<table class="table table-bordered">
						<thead>
							<tr class="danger">
								<td>SL No.</td>
								<td>Inst. Name</td>
								<td>Location</td>
								<td>Update</td>
								<td>Delete</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="listValue" items="${lists}">
								<tr class="success">
									<td>${listValue.insId}</td>
									<td>${listValue.insName}</td>
									<td>${listValue.location}</td>
									<td><a href="<c:url value='/delete/${listValue.insId}'/>">Remove</a></td>
									<td><a href="<c:url value='/update/${listValue.insId}' />">Update</a></td>
								</tr>

							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
		</div>

	</c:if>








</body>
</html>
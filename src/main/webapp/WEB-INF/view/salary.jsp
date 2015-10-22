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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<h2>welcome InstitutionInfo page</h2>
<c:url value="/show" var="messageUrl" />
		
		
		
		<c:url value="/institute" var="institutionUrl"></c:url>
		
		<a href="${institutionUrl}">Institution Info</a><br/><br/>
		<a href="${messageUrl}">User Info</a> <br/>  <br/>
		
		


	<c:url value="/addSalary" var="insert" />
	<form:form action="${insert}" method="post" commandName="salary">
	
	Institution Name
	<form:select path="insIdfk">
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
		<form:radiobutton path="education" value="0.00"/> Not Allowed 
		<form:radiobutton path="education" value="200.00"/> One Child 
		<form:radiobutton path="education" value="300.00"/>Two Child
		<form:radiobutton path="education" value="0.00"/> More Than Two 
		&nbsp;&nbsp;	
		<br />
		<br />
		<br />
		Post&nbsp;&nbsp;&nbsp;&nbsp;
		<form:radiobutton path="others" value="0.00"/> Head Teacher 
		<form:radiobutton path="others" value="0.00"/> Ass. Teacher 
		<form:radiobutton path="others" value="75.0"/> MLSS
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



<c:if test="${not empty saLists}">
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

            <th>TotalSalary</th>
            
            <th>Provident Found</th>
            
            <th>Load</th>

            <th>Extra Loan</th>

            <th>Neat Salary</th>
            <th>Delete</th>

        </tr>

    </thead>

    <tbody>
    <c:forEach var="onGroup" items="${salaryListGroupBy}" varStatus="sl">
    
    <c:forEach var="employee" items="${saLists}" varStatus="empSl">
    
   
         <c:if test="${onGroup.insIdfk==employee.insIdfk}">
         
         <tr class="success">
         <td>${empSl.index+1}</td>
			 <td>${employee.insIdfk}</td>
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
			<td><a href="<c:url value='/deleteSal/${employee.salId}' />">Remove</a></td>
        </tr>
         
         </c:if>
        
          
        
    </c:forEach>
   
        
        
          <tr  class="info">
         <td>${sl.index+1}</td>
			 <td>${onGroup.insIdfk}</td>
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
      
        <tr><td></td></tr>
    </c:forEach>

    </tbody>

</table>
</div>
</c:if>



	


</body>
</html>
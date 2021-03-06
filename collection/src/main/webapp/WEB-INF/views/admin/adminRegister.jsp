<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>CoCollect</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" media="screen" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/resources/css/myStyle.css">
<link rel="stylesheet" type="text/css" href="/resources/css/nav.css">
<link rel="stylesheet" type="text/css" href="/resources/css/signin.css">
</head>
<body>
<ul>
	<div class="topnav" id="myTopnav">
 		<a href="/">Home</a>
  		<a href="/admin/caseSummary/">Case Summary</a>
  		<a href="/admin/debtorSummary/">Debtors</a>
  		<a href="/admin/clientSummary/">Clients</a>
  		<a class="active" href="/admin/adminOfficers/">Admin</a>
  		
  	<c:url value="/logout" var="logoutUrl"/>
	<form action="${logoutUrl}" method="get">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<a style="float:right"><button type="submit" class="btn">${User.firstname} || Log out</button></a>
	</form>  		
  		
  		<li style="float:right"><a href="/admin/adminDashboard/">Admin Dashboard</a></li>
	</div>
</ul>

<br/><br/><br/><br/>

<div class="container" style="width:450px;">
      <form class="form-signin" action="/admin/adminRegister">
      	<h2 class="form-signin-heading" style="font-size:30px;">Admin Registration</h2>
      	<hr size="10">
  		<h2 style="font-size: 20px;">Contact Details</h2>
        <hr size="10">
        
        <label for="verificationNumber" class="sr-only">Title</label>
        <select name="title" id="inputEmail" class="form-control" required>
         	<option value="" selected>--Title--</option>
  			<option value="Mr">Mr</option>
 			<option value="Mrs">Mrs</option>
  			<option value="Miss">Miss</option>
  			<option value="Ms">Ms</option>
  			<option value="Dr">Dr</option>
		</select>
		        
        <label for="verificationNumber" class="sr-only">First Name</label>
        <input name="firstname" type="text" id="inputEmail" class="form-control" placeholder="First Name" required autofocus>
        
        <label for="inputPassword" class="sr-only">Last Name</label>
        <input name="lastname" type="text" id="inputPassword" class="form-control" placeholder="Last Name" required>
        
        <label for="inputPassword" class="sr-only">Email</label>
        <input name="email" type="text" id="inputPassword" class="form-control" placeholder="Email" required>

        <label for="inputPassword" class="sr-only">Company Name</label>
        <input name="companyName" type="hidden" id="inputPassword" class="form-control" value="${User.companyName}">
        
        <label for="verificationNumber" class="sr-only">Company Type</label>
        <input name="companyType" type="hidden" id="inputPassword" class="form-control" value="${User.companyType}">
        
        <label for="inputPassword" class="sr-only">Address</label>
        <input name="address" type="hidden" id="inputPassword" class="form-control" value="${User.address}">
        
        <label for="inputPassword" class="sr-only">Phone</label>
        <input name="phone" type="text" id="inputPassword" class="form-control" placeholder="Phone" required>
        
        <label for="inputPassword" class="sr-only">Password</label>
        <input name="password" type="text" id="inputPassword" class="form-control" placeholder="Password" required>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
        <button class="btn btn-lg btn-primary btn-block" type="button" onclick="window.location.href='/admin/adminDashboard'">Cancel</button>
        
      </form>
</div> <!-- /container -->
        <br/>
        <br/>

</body>
</html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>

<html lang="en">
<head>
<title>CoCollect</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" media="screen" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/resources/css/myStyle.css">
<link rel="stylesheet" type="text/css" href="/resources/css/starter-template.css">
<link rel="stylesheet" type="text/css" href="/resources/css/table.css">
<link rel="stylesheet" type="text/css" href="/resources/css/nav.css">
<link rel="stylesheet" type="text/css" href="/resources/css/button.css">
<link rel="stylesheet" type="text/css" href="/resources/css/nav.css">
</head>

<body>z
<ul>
	<div class="topnav" id="myTopnav">
 		<a href="/">Home</a>
  		<a href="/admin/caseSummary/">Case Summary</a>
  		<a href="/admin/debtorSummary/">Debtors</a>
  		<a href="/admin/clientSummary/">Clients</a>
  		<a href="/admin/adminOfficers/">Admin</a>
  		
	<c:url value="/logout" var="logoutUrl"/>
		<form action="${logoutUrl}" method="get">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<a style="float:right"><button type="submit" class="btn">${User.firstname} || Log out</button></a>
		</form>   		
		
		<li style="float:right"><a class="active" href=".">Admin Dashboard</a></li>
	</div>
</ul>
<h2>Dashboard</h2>
<p>All access</p>

</body>
</html>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" href="http://www.calstatela.edu/sites/default/files/favicon.ico" />
<title>student survey </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<style type="text/css">
.breadcrumb li {
    display: inline;
}
.breadcrumb li+li:before {
    content:"» ";
}
</style>


</head>
<body>
<center>
<div style="width: 500px; height: 1000%"> 
<table class="table table-condensed">
  <tr><th>First Name</th><th>Last Name</th><th>CIN</th><th>Quarter</th><th>Course</th><th>Date</th></tr>
<c:forEach items="${entries}" var="entry">
  <tr>
    <td>${entry.f_name}</td>
    <td>${entry.l_name}</td>
    <td>${entry.cin}</td>
    <td>${entry.quarter}</td>
    <td>${entry.course}</td>
    <td>${entry.date}</td>
    
  </tr>
</c:forEach>
</table></div></center>
<h4><a href="servey">Back to survey</a></h4>
</body>
</html>
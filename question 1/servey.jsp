<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>

</head>
<body>

<form data-toggle="validator" role="form" action="add" method="post">
  <div class="form-group">
    <label for="inputName" class="control-label">First Name</label>
    <input type="text" class="form-control" name="fname" placeholder="Cina Saffary" required>
  </div>
  
  <div class="form-group">
    <label for="inputName" class="control-label">Last Name</label>
    <input type="text" class="form-control" name="lname" placeholder="Cina Saffary" required>
  </div>
  
 
  <div class="form-group">
    <label for="inputPassword" class="control-label">CIN Number</label>
    <div class="form-inline row">
      <div class="form-group col-sm-6">
        <input  data-length="9" class="form-control"  name="cin"   required>
        <div class="help-block"> 
        must be number</div>
      </div></div></div>
     
  <div class="form-group" class="form-inline row">
  <label for="sel1">Select list:</label>
  <select class="form-control" name="Qurter">
  <option  >Select</option >
    <option  value="Spring">Spring 2016</option>
    <option value="Summer">Summer 2016</option>
  </select>
</div>


  
  <div class="form-group" required>
    <div class="radio" >
      <label>
        <input type="radio" value="cs520" name ="rd" >
        CS520
      </label>
    </div>
    <div class="radio">
      <label>
        <input type="radio" value="cs320" name ="rd">
        CS320
      </label>
    </div>
  </div>
  <div class="form-group">
    
  </div>
  <div class="form-group">
    <button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>
<h4><a href="add">See the results</a></h4>
</body>
</html>

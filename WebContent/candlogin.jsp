<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"
import="java.sql.*,java.sql.SQLException,javax.naming.NamingException,oracle.jdbc.OracleDriver"
 %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-color:#E6E6E6">
<br>
<div>
<maquee><p style="text-align:center;"><img src="logo3.png" height="85px" width="81%" style="align-center"/></p></marquee>
</div>
<div class="container">
<div class="row">
<div class="col-md-3" style="border-right:1px solid black;background-color:black">
<span>
<form method="post" action="login">
<br><br><br><br><br><br><br><br><br><h3 class="text-info">Login:</h3>
 <div class="input-group align-left" style="margin-left:00%" >
 
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="email" type="text" class="form-control input-lg" name="cemail" required placeholder="User ID" style="width:100%" >
    </div>
 <br>
 <div class="input-group" style="margin-left:0%">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control input-lg" name="cpassword" required placeholder="Password" style="width:100%" >
   
</div>
<br><br>
<input type="submit" value="LOGIN" class="btn btn-primary">
<br><br>
<a href="loginn.htm" class="btn btn-primary"style="margin-left:2%">Login As Admin</a> 
</form>
<br><br><br><br><br><br><br><br>
</div>
</span>
<div class="col-md-9" style="background-color:gray">
<br><br><br><br>
<div class="media">
  <div class="media-left">
    <img src="pen-and-paper-clip-art.png" class="media-object" style="width:80px; height:100px;">
  </div>
  <div class="media-body">
   <h3 class="media-heading">John Abel</h3>
    <p><blockquote>&quot;Begin NOW thinking about how you will rejoin civilized society, but at a much higher level than you were when you started up this road, because you will have your CPA license.&quot;</blockquote></p>
  </div>
</div>
<br><br>
<img src="test.png" height="300px" width="800px">
<br><br><br>
</div>
</div>
</div>
</body>
</html>

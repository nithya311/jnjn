<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $("#hide").click(function(){
        $("table").hide();
    });
    $("#show").click(function(){
        $("table").show();
    });
});
</script>
</head>
<body style="background-color:#E6E6E6">
<nav class="navbar navbar-default">
   <div class="container-fluid">
     <div class="navbar-header">
       <a class="navbar-brand" href="#">XYZ Organisation test</a>
     </div>
     <ul class="nav navbar-nav">
       <li class="active"><a href=#>Home</a></li>
      
       <li><a href="studymaterial.html">study material</a></li>
     </ul>
   <ul class="nav navbar-nav navbar-right">
      
       <li><a href="index.html"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
     </ul>
     
  </div>
</nav>
<div class="container">
<div class="row">
<div class="col-md-3" style="border-right:1px solid black;background-color:teal">
<br>
<br>
<h4 class="text-Primary" style="color:yellow">CANDIDATE DETAILS:</h4>
<br>
<h6 class="text-Primary" style="color:white">NAME:<%out.println(request.getParameter("cemail")); %></h6><br>
<h6 class="text-Primary" style="color:white">CANDIDATE ID:03</h6><br>
<h6 class="text-Primary" style="color:white">DOMAIN NAME:JAVA<br></h6>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

</div>
<div class="col-md-9" style="background-color:gray">
<br><br>
<a href="table.html" class="btn btn-primary"style="margin-left:25%">Available Test</a>
<a href="completed.html" id="hide" class="btn btn-primary"style="margin-left:0%">Completed Test</a>
<a href="enrolledtest.html" class="btn btn-primary"style="margin-left:0%">Enrolled Test</a>

<br>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>
</div>
</div>
</body>
</html>
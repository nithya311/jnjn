<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@page import="oracle.jdbc.driver.OracleDriver" %>
    <%@page import="organization_test.Doa" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.content { display:none }
</style>
<script src="jquery.js"></script>
<script>
$(function() {
  $(".but").on("click",function(e) {
    e.preventDefault();
    $(".content").hide();
    $("#"+this.id+"div").show();
  });
});

$("#domain_dropdown").change(function(){
    var x=$(this).val();
});
</script>
</head>
<script type="text/javascript">
function alertName(){
alert("Question Added Successfully!!");
} 
</script>
<body style="background-color:gray">
<nav class="navbar navbar-default">
   <div class="container-fluid">
     <div class="navbar-header">
       <a class="navbar-brand" href="#">XYZ Organisation test</a>
     </div>
     <ul class="nav navbar-nav">
       <li><a href="a1.html">Home</a></li>
   
     </ul>
      <ul class="nav navbar-nav navbar-right">
      
       <li><a href="loginn.htm"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
     </ul>
  </div>
</nav>
<div class="container">
<div class="row">
<div class="col-md-3" style="border-right:1px solid black;background-color:teal">
<br>
<br>
<h4 class="text-Primary" style="color:yellow">Admin DETAILS:</h4>
<br>
<h6 class="text-Primary" style="color:white">ADMIN</h6><br>
<h6 class="text-Primary" style="color:white">Admin ID:<% out.print(request.getAttribute("admin_id")); %></h6><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>
<div class="navigation col-md-9" style="background-color:gray">
<br><br>
    <button class="but btn btn-primary" type="button" id="assigntest">Assign Test</button>
    <button class="but btn btn-primary" type="button" id="addquestion">Add Question</button>
    <button class="but btn btn-primary" type="button" id="viewresult">view result</button>
    <button class="but btn btn-primary" type="button" id="createtest">create test</button>
    <button class="but btn btn-primary" type="button" id="testrequests">test requests</button>
    <br>
<div id="assigntestdiv" class="content">
    <h2>Assign test</h2>
    <form ...>
 <table style="border:1px solid black;padding-left:2cm;background-color:white;">
<thead>
<tr>
<th style="border:1px solid black;padding-left:1cm;padding-right:2cm;padding-top:5px;padding-bottom:5px;">  S.NO  </th><th style="border:1px solid black;padding-left:1cm">DESCRIPTION</th><th style="border:1px solid black;padding-left:1cm">REMARKS</th><th style="border:1px solid black;padding-left:1cm">SET</th>
<tr><td style="border:1px solid black;padding-left:1cm;padding-right:2cm;padding-top:5px;padding-bottom:5px;">  1  </td><td style="border:1px solid black;padding-left:1cm">cowboy</td><td style="border:1px solid black;padding-left:1cm">
<div class="dropdown">
   <button class="btn btn-success dropdown-toggle" type="button" data-toggle="dropdown">Domain
   <span class="caret"></span></button>
   <ul class="dropdown-menu">
    <li><a href="#">JAVA</a></li>
     <li><a href="#">CPP</a></li>
     <li><a href="#">SERVLETS</a></li>
   </ul>
</div></td><td style="border:1px solid black;padding-left:1cm;padding-right:1cm"><div class="dropdown">
   <button class="btn btn-success  dropdown-toggle" type="button" data-toggle="dropdown">SET
   <span class="caret"></span></button>
   <ul class="dropdown-menu">
    <li><a href="#">SET-A</a></li>
     <li><a href="#">SET-B</a></li>
     <li><a href="#">SET-C</a></li>
   </ul>
</div></td></tr>
<tr><td style="border:1px solid black;padding-left:1cm;padding-right:2cm;padding-top:5px;padding-bottom:5px;">  2  </td><td style="border:1px solid black;padding-left:1cm">Jake</td><td style="border:1px solid black;padding-left:1cm"><div class="dropdown">
   <button class="btn btn-success dropdown-toggle" type="button" data-toggle="dropdown">Domain
   <span class="caret"></span></button>
   <ul class="dropdown-menu">
    <li><a href="#">JAVA</a></li>
     <li><a href="#">CPP</a></li>
     <li><a href="#">SERVLETS</a></li>
   </ul>
</div></td><td style="border:1px solid black;padding-left:1cm;padding-right:1cm"><div class="dropdown">
   <button class="btn btn-success dropdown-toggle" type="button" data-toggle="dropdown">SET
   <span class="caret"></span></button>
   <ul class="dropdown-menu">
    <li><a href="#">SET-A</a></li>
     <li><a href="#">SET-B</a></li>
     <li><a href="#">SET-C</a></li>
   </ul>
</div></td></tr>
<tr><td style="border:1px solid black;padding-left:1cm;padding-right:2cm;padding-top:5px;padding-bottom:5px;">  3  </td><td style="border:1px solid black;padding-left:1cm">Addison</td><td style="border:1px solid black;padding-left:1cm"><div class="dropdown">
   <button class="btn btn-success dropdown-toggle" type="button" data-toggle="dropdown">Domain
   <span class="caret"></span></button>
   <ul class="dropdown-menu">
    <li><a href="#">JAVA</a></li>
     <li><a href="#">CPP</a></li>
     <li><a href="#">SERVLETS</a></li>
   </ul>
</div></td><td style="border:1px solid black;padding-left:1cm;padding-right:1cm"><div class="dropdown">
   <button class="btn btn-success dropdown-toggle" type="button" data-toggle="dropdown">SET
   <span class="caret"></span></button>
   <ul class="dropdown-menu">
    <li><a href="#">SET-A</a></li>
     <li><a href="#">SET-B</a></li>
     <li><a href="#">SET-C</a></li>
   </ul>
</div></td></tr>
<tr><td style="border:1px solid black;padding-left:1cm;padding-right:2cm;padding-top:5px;padding-bottom:5px;">  4  </td><td style="border:1px solid black;padding-left:1cm">Antony</td><td style="border:1px solid black;padding-left:1cm"><div class="dropdown">
   <button class="btn btn-success dropdown-toggle" type="button" data-toggle="dropdown">Domain
   <span class="caret"></span></button>
   <ul class="dropdown-menu">
    <li><a href="#">JAVA</a></li>
     <li><a href="#">CPP</a></li>
     <li><a href="#">SERVLETS</a></li>
   </ul>
</div></td><td style="border:1px solid black;padding-left:1cm;padding-right:1cm"><div class="dropdown">
   <button class="btn btn-success dropdown-toggle" type="button" data-toggle="dropdown">SET
   <span class="caret"></span></button>
   <ul class="dropdown-menu">
    <li><a href="#">SET-A</a></li>
     <li><a href="#">SET-B</a></li>
     <li><a href="#">SET-C</a></li>
   </ul>
</div></td></tr>
</table>
 
    </form>
</div>

<div id="createtestdiv" class="content">
    <h2>create test</h2>
    <form method="post" action="CreateTestServlet">
    
    <h4>enter the test id: </h4> <input type="number" name="test_id"/>
    <h4>select the domain</h4>
    <select style="width:140px;">
 <option value="none" name="domain_list">select</option>
 <%
 try
 {
  Connection con=Doa.getCon();
  PreparedStatement p=con.prepareStatement("select domain_name from domain");
  ResultSet r = p.executeQuery();
  while(r.next())
  {
	  //System.out.println(r.getString("domain_name"));
	  out.println("<option value='+ " + r.getString("domain_name") + " +'>" + r.getString("domain_name") + "</option>");
  }
 } catch(Exception e) {
	 System.out.println("couldn't fetch domains");
 }
%>
  </select>
  <h4>enter name of the test: </h4><input type="text" name="test_name"/><br><br>
  
  <div>
  <div class="col-md-8">
  <h3>List of questions:</h3>
  <% 
  try
  {
   Connection con=Doa.getCon();
   PreparedStatement p=con.prepareStatement("select question_id, question from questions");// where domain_id=(select domain_id from domain where domain_name='java')");
   ResultSet r = p.executeQuery();
   //out.print("<h1>helllo2</h1>");
   out.print("<div style='border:2px; background-color:white;'>");
   out.print("<ul>");
   while(r.next())
   {
 	  out.print("<li><h5>"+r.getInt("question_id")+ ": " + r.getString("question") + "</h5></li>");
   }  
  out.print("</ul>");
  out.print("</div>");
    
  out.print("</div>");
  out.print("<div class='col-md-4'>");
 ResultSet r2 = p.executeQuery();
 out.print("<select data-placeholder='questions of test' multiple class='chosen-select' tabindex='8'>");
 out.print("<option value=''></option>");
 while(r2.next()) {
            out.print("<option>" + r2.getInt("question_id") + "</option>");
 }
          out.print("</select>");
          
  		  out.print("</div>");
  } catch(Exception e) {
	 	 System.out.println("couldn't fetch questions");
	  }
  %>
  </div>
  <input type="submit" class="btn btn-warning" value="create"/>
    </form>
    
    </div>

<div id="viewresultdiv" class="content">
    <h2>view result</h2>
    
 <%
 out.println("<table style='background-color:white; border:1px solid black;padding-left:1cm;padding-right:2cm;padding-top:5px;padding-bottom:5px;'>");
 out.println("<tr>");
 out.println("<th style='border:1px solid black;padding-left:1cm;padding-right:2cm;padding-top:5px;padding-bottom:5px;'>Candidate Id</th>");
 out.println("<th style='border:1px solid black;padding-left:1cm;padding-right:2cm;padding-top:5px;padding-bottom:5px;'>Domain Id</th>"); 
 out.println("<th style='border:1px solid black;padding-left:1cm;padding-right:2cm;padding-top:5px;padding-bottom:5px;'>Score</th>");
 out.println("<th style='border:1px solid black;padding-left:1cm;padding-right:2cm;padding-top:5px;padding-bottom:5px;'>Verdict</th>");
 out.println("</tr>");
 try
 {
  Connection con=Doa.getCon();
  System.out.println("connected");
  PreparedStatement p=con.prepareStatement("select * from test_result");
  ResultSet r = p.executeQuery();
  int cid=0, did=0, score=0;
  String verdict = null;
  while(r.next())
  {
    cid = r.getInt(1);
    did=r.getInt(2);
    score=r.getInt(3);
    verdict=r.getString(4);
    System.out.println("fetched 1 row");     
    System.out.println(cid+" "+" "+did+" "+score+" "+verdict);

   out.println("<tr>");
  out.println("<td style='border:1px solid black;padding-left:1cm;padding-right:2cm;padding-top:5px;padding-bottom:5px;'>" + cid + "</td>");
  out.println("<td style='border:1px solid black;padding-left:1cm;padding-right:2cm;padding-top:5px;padding-bottom:5px;'>" + did + "</td>");
  out.println("<td style='border:1px solid black;padding-left:1cm;padding-right:2cm;padding-top:5px;padding-bottom:5px;'>" + score + "</td>");
  out.println("<td style='border:1px solid black;padding-left:1cm;padding-right:2cm;padding-top:5px;padding-bottom:5px;'>" + verdict + "</td>");
  out.println("</tr>");
  }} catch(Exception e) {
	  System.out.println("nothing to say");
  }
  out.println("</table>");
  %>
</div>
<div id="addquestiondiv" class="content">
    <form method="post" action="AddQueServlet">
<div class="container">
<div class="row">
<div class="col-md-0"></div>
<div class="col-md-10">
<h2>Enter the question:</h2>
<textarea name="questionString" rows="5" cols="50" placeholder="Enter the question" style="border-style:solid; width:70%"></textarea>
<br><br><br>
</div>
</div>
<div class="col">
<div class="col-md-0"></div>
<div class="col-md-10">
<div class="col-md-3"><h5>option a)</h5><br><input type="text" name="option1"/></div>
<div class="col-md-3"><h5>option b)</h5><br><input type="text" name="option2"/></div>
<div class="col-md-3"><h5>option c)</h5><br><input type="text" name="option3"/></div>
<div class="col-md-3"><h5>option d)</h5><br><input type="text" name="option4"/></div>
</div>
<br>
<br>
<br>
<br>
<br>
<div class="col">
<div class="col-md-4"><h4>correct answer: &nbsp;</h4> 
  <select style="width:140px;">
 <option value="none">select</option>
    <option value="option a">option a</option>
    <option value="option b">option b</option>
    <option value="option c">option c</option>
    <option value="option d">option d</option>
  </select>
  
</div>
</div>
<br><br>
<div class="row">
<div class="col-md-8"></div>
<div class="col-md-2"><button type="submit" class="btn btn-primary" onclick="alertName()">add question</button></div>
<div class="col-md-2"></div>
</div>
</div>
</div>
</div>
</div>
</form>
</div>

</div>
</div>
</div>
</div>
</body>
</html>
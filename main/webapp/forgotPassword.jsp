<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ForgotPassword</title>
<link rel="stylesheet" href="css/signup-style.css">
</head>
<body>
<div id='container'>
  <div class='signup'>
  <h1> Green Bunny </h1><p> Reset Your Password</p>
  
     <form action="forgotPasswordAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter email" required>
     <input type="number" name="mobileNumber" placeholder="Enter mobile number" required>
     
     <input type="password" name="newPassword" placeholder="Enter new password" required>
     <input type="submit" value="save">
     </form>
      <h2><a href="index.jsp">Continue</a></h2>
  </div>
  <div class='whyforgotPassword'>
   
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h1>Password Changed Successfully!</h1>
<%} %>

<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

   </div>
</div>
</body>
</html>
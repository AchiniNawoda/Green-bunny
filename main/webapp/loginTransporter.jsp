<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - Transporter</title>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>

<div id="container">
<div class="signup">
<h1>Welcome Back to GB - Transporters </h1><p>Login To Continue</p>

<form action="loginTransporterAction.jsp" method="post">

<input type="email" name="email" placeholder="Email" required>
<input type="password" name="password" placeholder="Password" required>

<input type="submit" value="Login">

</form>
<h4>Don't have an Account ? <br>
<a href="signupTransporter.jsp">SignUp Here</a></h4>
<h5><a href="forgotPassword.jsp">Forgot Password?</a></h5> <!-- forgotPasswordFarmers -->


</div>
</div>

<%
String msg = request.getParameter("msg");
if("notexist".equals(msg))
{
%>
<br><h2>Incorrect email or password. Please try again. </h2>
<%} %>

<%
if("invalid".equals(msg))
{
%>
<h1>Please try again</h1>
<%} %>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" href="css/loginstyle.css">
<title>Registration - Farmer</title>


</head>
<body>

<div class="container">
<form action="signupAction.jsp" method="post">
<br><h1>Login</h1>

<p>Enter your personal details to use all of site features</p>

<input type="text" name="firstname" placeholder="First Name" required>
<input type="text" name="lastname" placeholder="Last Name" required>
<input type="email" name="email" placeholder="Email" required>

<input type="password" name="password" placeholder="Password" required>

<input type="text" name="mobileNumber" placeholder="Mobile Number" required>
<input type="text" name="address" placeholder="Address" required>
<input type="text" name="city" placeholder="City" required>
                

                
<a href="login.jsp"><button type="submit">Sign Up</button></a><br>

</form>
</div>

<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<br><h2>Successfully Registered </h2>

<%} %> 

<%
if("invalid".equals(msg))
{
%>
<br><h2>Please Try Again</h2>
<%} %>

<!-- <div class="form-container sign-in">
            <form>
                <h1>Sign In</h1>
                
                <span>or use your email password</span>
                <input type="email" placeholder="Email">
                <input type="password" placeholder="Password">
                <a href="#">Forget Your Password?</a>
                <button>Sign In</button>
            </form>
</div>
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h1>Welcome Back!</h1>
                    <p>Enter your personal details to use all of site features</p>
                    <button class="hidden" id="login">Log In</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h1>Hello, Friend!</h1>
                    <p>Register with your personal details to use all of site features</p>
                    <button class="hidden" id="register">Sign Up</button>
                </div>
            </div>
        </div>
 -->
<script src="js/signupscript.js"></script>

</body>
</html>
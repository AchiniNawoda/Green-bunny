<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" href="css/signupstyle.css">
<title>Registration - </title>

<script>
function validateForm() {
    var firstname = document.forms["registrationForm"]["firstname"].value;
    var lastname = document.forms["registrationForm"]["lastname"].value;
    var email = document.forms["registrationForm"]["email"].value;
    var password = document.forms["registrationForm"]["password"].value;
    var mobileNumber = document.forms["registrationForm"]["mobileNumber"].value;
    var address = document.forms["registrationForm"]["address"].value;
    var city = document.forms["registrationForm"]["city"].value;

    // Simple validation for each field
    if (firstname.trim() === "") {
        alert("Please enter your first name.");
        return false;
    }
    if (lastname.trim() === "") {
        alert("Please enter your last name.");
        return false;
    }
    if (email.trim() === "") {
        alert("Please enter your email address.");
        return false;
    }
    if (password.trim() === "") {
        alert("Please enter a password.");
        return false;
    }
    if (mobileNumber.trim() === "") {
        alert("Please enter your mobile number.");
        return false;
    }
    if (address.trim() === "") {
        alert("Please enter your address.");
        return false;
    }
    if (city.trim() === "") {
        alert("Please enter your city.");
        return false;
    }

    return true;
}
</script>

</head>
<body>

<div class="container" id="container">
<div class="form-container sign-up">

<form action="signupAction.jsp" name="registrationForm" method="post" onsubmit="return validateForm()">
<h1>Create Account</h1>
                
<input type="text" name="firstname" placeholder="First Name" required>
<input type="text" name="lastname" placeholder="Last Name" required>
<input type="email" name="email" placeholder="Email" required>

<input type="password" name="password" placeholder="Password" required>

<input type="text" name="mobileNumber" placeholder="Mobile Number" required>
<input type="text" name="address" placeholder="Address" required>
<input type="text" name="city" placeholder="City" required>
                

                
<a href="index.jsp"><button type="submit">Sign Up</button></a>
                
</form>
</div>
        
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h2>Registered</h2><p>Please go ahead to login</p>
<%} %> 

<%
if("invalid".equals(msg))
{
%>
<h2>Please Try Again</h2>
<%} %>
        

        
        <div class="form-container sign-in">
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
    </div>

    <script src="js/signupscript.js"></script>


</body>
</html>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Sign up</title>

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
<div id='container'>
  <div class='signup'>
  <h1>Welcome to The GreenBunny Farmers Community</h1>
  <p></p>
  
           <form action="signupActionFarmer.jsp" name="registrationForm" method="post" onsubmit="return validateForm()">
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
      <h4>Already have an account? <br><a href="loginFarmer.jsp"> Login </a></h4>
      
      <p>Have trouble logging in? Call us on 011233200</p>  
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
<h1>Please Try Again</h1>
<%} %>

  </div>
</div>

</body>
</html>
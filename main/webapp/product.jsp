<%@page errorPage="error.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/product.css">
</head>
<body>

<!-- navbar start -->
    <header>
        <nav class="navbar">
            <span class="hamburger-btn material-symbols-rounded">menu</span>
            <a href="#" class="logo">
                <img src="images/bunny2.png" alt="logo">
                <h2>GreenBunny</h2>
            </a>
            <ul class="links">
                <span class="close-btn material-symbols-rounded">close</span>
                <li><a href="#">Home</a></li>
                <li><a href="#">Market</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="messageUs.jsp">Message Us</a></li>
            </ul>
            <a href="logout.jsp">
            <button class="login-btn">LOG OUT</button>
            </a>
        </nav>
    </header> <br><br><br>
    <!-- navbar end -->


<%
String msg = request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3>Product added</h3>
<%} %>

<%
if("invalid".equals(msg))
{
%>
<h3 style="text-align:center; color:grey;">Something went wrong. Please try again.</h3>
<%} %>

<div class="container">
<div class="message-heading">Add Product</div>

<form action="productAction.jsp" method="post">

<label for="productName" style="display: inline-block; width: 140px; text-align: center; margin-right: 10px;">Product:</label>
<input class="input-style" name="subject" type="text" style="display: inline-block; width: 200px; margin-left: 10px;" placeholder="Product Name" required>
<!-- 
<label for="productName">Product Name:</label>
<input class="input-style" name="subject" type="text" placeholder="Product Name" required> -->

<br><br><label for="productName" style="display: inline-block; width: 140px; text-align: center; margin-right: 10px;">Price:</label>
<input class="input-style" name="subject" type="text" style="display: inline-block; width: 200px; margin-left: 10px;" placeholder="Price in Rs/KG" required>

<br><br><label for="productName" style="display: inline-block; width: 140px; text-align: center; margin-right: 10px;">Quantity:</label>
<input class="input-style" name="subject" type="text" style="display: inline-block; width: 200px; margin-left: 10px;" placeholder="Quantity in KG" required>

<br><br><label for="productName" style="display: inline-block; width: 140px; text-align: center; margin-right: 10px;">Address:</label>
<input class="input-style" name="subject" type="text" style="display: inline-block; width: 200px; margin-left: 10px;" placeholder="Pick Up Location" required>

<br><br><label for="productName" style="display: inline-block; width: 140px; text-align: center; margin-right: 10px;">City:</label>
<input class="input-style" name="subject" type="text" style="display: inline-block; width: 200px; margin-left: 10px;" placeholder="City" required>

<br><br><label for="productName" style="display: inline-block; width: 140px; text-align: center; margin-right: 10px;">Mobile Number:</label>
<input class="input-style" name="subject" type="text" style="display: inline-block; width: 200px; margin-left: 10px;" placeholder="Contact Info" required>


<!-- <br><br>
<input class="input-style" name="subject" type="text" placeholder="Price" required>
<br><br><br>
<textarea class="input-style" name="body" placeholder="Message" required></textarea>
<br><br> -->
<br><br><br><br><button class="button" type="submit">Send</button>

</form>
<!-- <a href="#"><button class="button" type="submit">Home</button></a> -->

</div>
</div>

</body>
</html>
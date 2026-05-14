<%@page errorPage="error.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message Us</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/messageUs.css">
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
                <li><a href="farmerHome.jsp">Home</a></li>
                <li><a href="market.jsp">Market</a></li>
                <li><a href="aboutus.jsp">About Us</a></li>
                <li><a href="messageUs.jsp">Message Us</a></li>
            </ul>
            <a href="logout.jsp">
            <button class="login-btn">LOG OUT</button>
            </a>
        </nav>
    </header> <br><br>
<!-- navbar end -->


<%
String msg = request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 style="text-align:center; color:grey;">Message Sent. Thank you</h3>
<%} %>

<%
if("invalid".equals(msg))
{
%>
<h3 style="text-align:center; color:grey;">Something went wrong. Please try again.</h3>
<%} %>

<div class="container">
<div class="message-heading">Message Us</div>

<form action="messageUsAction.jsp" method="post">
<input class="input-style" name="subject" type="text" placeholder="Subject" required>
<br><br><br>
<textarea class="input-style" name="body" placeholder="Message" required></textarea>
<br><br>
<button class="button" type="submit">Send</button>

</form>
<!-- <a href="#"><button class="button" type="submit">Home</button></a> -->

</div>
</div>

</body>
</html>
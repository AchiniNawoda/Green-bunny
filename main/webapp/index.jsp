<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Landing Page</title>
<link rel="stylesheet" href="css/landingstyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<section class="showcase">
        <header>
            <img src="images/bunny2.png" class="logo">
            <!-- <h1 class="logo">GreenBunny</h1> -->
            <div class="toggle"></div>
        </header>

        <video src="images/video2.mp4" muted loop autoplay></video>


        <div class="showcase2">
        <div class="text">

            <h3>Welcome</h3><br>
            <h2> Here At <span style="color: rgb(42, 187, 37); font-weight: bold;">GreenBunny</span>,</h2><br>
            <center><p> We thrive to <span style="color: rgb(42, 187, 37); font-weight: bold;">CONNECT</span> 
                Farmers, Buyers, and Transporters in a seamless ecosystem, 
                revolutionizing the way agricultural products are bought and sold. </p></center><br>

                <p>Join Us & be a part of the future of agriculture.</p><br>
    
            <a href="loginFarmer.jsp">Farmer</a>
            <a href="loginBuyer.jsp">Buyer</a>
            <a href="loginTransporter.jsp">Transporter</a>
                
        </div>
    </div>


</section>


    <div class="menu">
        <ul>
            <li><i class="fa-solid fa-caret-right" style="color: white; font-size: 24px;"></i> <a href="#"> Register Now</a></li>
            <li><i class="fa-solid fa-caret-right" style="color: white; font-size: 24px;"></i> <a href="#"> Farmer</a></li>
            <li><i class="fa-solid fa-caret-right" style="color: white; font-size: 24px;"></i> <a href="#"> Buyer</a></li>
            <li><i class="fa-solid fa-caret-right" style="color: white; font-size: 24px;"></i> <a href="#"> Transporter</a></li>
            <li><i class="fa-solid fa-caret-right" style="color: white; font-size: 24px;"></i> <a href="#"> About Us</a></li>
        </ul>
    </div>

    <script>
        const menuToggle = document.querySelector('.toggle')
        const showcase = document.querySelector('.showcase')

            menuToggle.addEventListener('click', () => {
            menuToggle.classList.toggle('active')
            showcase.classList.toggle('active')
        })
    </script>



</body>
</html>
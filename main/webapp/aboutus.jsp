<%@ page errorPage="error.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<link rel="stylesheet" href="css/aboutus.css">
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
                <li><a href="market.jsp">Market</a></li>
                <li><a href="aboutus.jsp">About Us</a></li>
                <li><a href="messageUs.jsp">Message Us</a></li>
            </ul>
            <a href="logout.jsp">
            <button class="login-btn">LOG OUT</button>
            </a>
        </nav>
    </header>
    <!-- navbar end -->
<br>
    <section class="about">
      <h3>About Us</h3>
       <!-- background -->
      <h1> Welcome to Green Bunny Digital Platform</h1>
      <p> We're all about making farming better using digital tools. 
        Farmers, Buyers, and Transporters come together here to make farming more efficient and fruitful. 
        We care about sustainability and using technology to create a greener world. 
        Join us in shaping the future of agriculture!</p>

   </section><br><br>

  <!-- <section class="images"> 

    <div class="grid-items">
        <img src="./assets/p.jpg" alt="images" width="350" height="250"/>
        <img src="./assets/q.png" alt="images" />
        <img src="./assets/r.jpg" alt="images" width="350" height="250"/>
        <img src="./assets/s.jpg" alt="images"width="350" height="250" />
        <img src="./assets/t.jpg" alt="images"width="350" height="250" />
    </div>

  </section> -->

  <!-- mission -->
 <section class="mission-vision">
  <center><h1>Mission</h1><br>
  <h2>
      Cultivating Sustainable Connections, Harvesting Prosperity for All
  </h2><br>
  <p> 
    Our goal at Green Bunny is to connect traditional farming with modern technology, 
    helping farmers use new digital tools. We aim to bring communities together, 
    promote sustainable practices, and create success for everyone involved. 
    Let's work together to make farming greener and more efficient, step by step with digital solutions.
  </p><br><br>
  <!-- <div class="buttons">
      <button class="button-new">Read More</button>
  </div> -->

<!-- vision -->

  <h1>Vision</h1><br>
  <h2>
      Pioneering a Digital Revolution in Agriculture for a Sustainable, Connected Future
  </h2><br>
  <p> 
    At Green Bunny, we imagine a future where farming and technology work hand in hand. 
    We want every farmer to reach a global market and for sustainable practices to be standard. 
    Our goal is to change agriculture for the better, creating a world where there's plenty, 
    things work well, and we take care of the environment.
  </p></center>
  <!-- <div class="buttons1">
      <button class="button-new1">Read More</button>
  </div> -->
</section>


<!-- FAQ -->
  <!-- team-data-cards -->
  <section class="data-cards">
    
    <div class="card-container">
      <div class="card">
        <img
          src="./assets/out-team-images (1).png"
          class="card-img"
          alt="team-data-cards"
        />
        <div class="card-data">
          <h2>Contact Customer Support</h2>
          <p>If you need help or have feedback, reach out to our customer support team:</p>
            <ul>
              <li>Email: greenbunnysupport@gmail.com</li>
              <li>Phone: +94 11 200 2020</li>
            </ul>
          <p>We're here to make your experience with Green Bunny smooth, enjoyable, and productive.</p>
        </div>
      </div>

      <div class="card">
        <img
          src="./assets/out-team-images (2).png"
          class="card-img"
          alt="team-data-cards"
        />
        <div class="card-data">
          <h2>FAQs:</h2>
          <div class="faq">
            <div class="question">
              <h4>Can I track my order?</h4>

              <svg width="15" height="10" viewBox="0 0 42 25">
                <path d="M3 3L21 21L39 3" stroke="white" stroke-width="7" stroke-linecap="round"/>
              </svg>
            </div>
            <div class="answer">
              <p>
                This feature is not currently available. But will be available in the future updates.
              </p>
            </div>
          </div>

          <div class="faq">
            <div class="question">
              <h4>What payment options are available?</h4>

              <svg width="15" height="10" viewBox="0 0 42 25">
                <path d="M3 3L21 21L39 3" stroke="white" stroke-width="7" stroke-linecap="round"/>
              </svg>
            </div>
            <div class="answer">
              <p>
                We do not provide payment options in the current update. The method of payment you use is not 
                considered as a responsibily of the platform.  
              </p>
            </div>
          </div>

          <div class="faq">
            <div class="question">
              <h4>Can I purchase any amount of fresh produce?</h4>

              <svg width="15" height="10" viewBox="0 0 42 25">
                <path d="M3 3L21 21L39 3" stroke="white" stroke-width="7" stroke-linecap="round"/>
              </svg>
            </div>
            <div class="answer">
              <p>
                The amount of fresh produce you can order is entirely upto the farmer you get in
                contact with. 
              </p>
            </div>
          </div>

          <div class="faq">
            <div class="question">
              <h4>How do I know if my order is confirmed?</h4>

              <svg width="15" height="10" viewBox="0 0 42 25">
                <path d="M3 3L21 21L39 3" stroke="white" stroke-width="7" stroke-linecap="round"/>
              </svg>
            </div>
            <div class="answer">
              <p>
                You will receive an order confirmation from the farmer or buyer you get in contact with. Confirmations
                via emails will be available in the future updates. 
              </p>
            </div>
          </div>

          <div class="faq">
            <div class="question">
              <h4>Can I change my order once placed?</h4>

              <svg width="15" height="10" viewBox="0 0 42 25">
                <path d="M3 3L21 21L39 3" stroke="white" stroke-width="7" stroke-linecap="round"/>
              </svg>
            </div>
            <div class="answer">
              <p>
                Yes you can change your order by contacting the farmer or buyer you placed your order with.
              </p>
            </div>
          </div>

        </div>

      </div>
      <div class="card">
        <img
          src="./assets/out-team-images (3).png"
          class="card-img"
          alt="team-data-cards" />

        <div class="card-data">
          <h2>Terms and conditions</h2>
          <p>
            For more details about our rules and how we handle your information, 
            check out the terms and privacy sections on our website. 
            We're dedicated to keeping your data safe and making sure everyone using Green Bunny 
            feels secure and informed.
          </p>
        </div>
      </div>
    </div>
  </section>


<script src="js/aboutus.js"></script>
</body>
</html>
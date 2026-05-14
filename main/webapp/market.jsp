<%@ page errorPage="error.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.tomcat.jakartaee.commons.compress.utils.IOUtils" %>
<%@ page import="org.apache.tomcat.util.codec.binary.Base64" %>



<%@ page import="project.ConnectionProvider" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <!-- <link rel="stylesheet" href="css/all.min.css"> -->
    <link rel="stylesheet" href="css/marketstyle.css">
    <title>Market</title>
</head>

<body>
    <header>
        <nav class="navbar">
            <span class="hamburger-btn material-symbols-rounded">menu</span>
            <a href="#" class="logo">
                <img src="images/bunny2.png" alt="logo">
                <h2>GB Market</h2>
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
    </header><br><br><br><br><br>
            

    <div class="heading">
        <h1>Our Products</h1>
    </div>
    <div class="container">
    
    <%
                // Retrieve user data from the database based on session information
                Connection conn = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;

                try {
                    conn = ConnectionProvider.getConnection(); // Get database connection
                    String query = "SELECT productName, price, quantity, address, mobileNumber, photoName, photoData FROM product"; // SQL query to retrieve product data
                    pstmt = conn.prepareStatement(query);

                    rs = pstmt.executeQuery();

                    while (rs.next()) {
                        // Retrieve user data from the result set
                        /* String email = rs.getString("email"); */
            			String productName = rs.getString("productName");
            			double price =rs.getDouble("price");
            			int quantity = rs.getInt("quantity");
            			String address = rs.getString("address");
            			String mobileNumber = rs.getString("mobileNumber");
            			String photoName = rs.getString("photoName");
            			
            			InputStream photoData = rs.getBinaryStream("photoData");
            			String photo = "";
            			
                    	if(photoData!= null)
                    	{
                    		byte[] imageBytes = IOUtils.toByteArray(photoData);
                    		

                            photo = Base64.encodeBase64String(imageBytes); 
                    	}
           /*  System.out.println(photo); */
            %>
	    
		   <div class="box">
		        <img src="data:image/jpeg;base64,<%=photo%>">
		        <h2><%= productName %></h2>
		        <p><%= address %></p>
		        <span>Rs. <%= price %></span>
		        <span><%= quantity %> KG</span>
		        <div class="options">
		            <a href="#">Place an Order</a>
		        </div>
		    </div>
		    
		     <%
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                } finally {
                    // Close resources
                    try { if (rs != null) rs.close(); } catch (SQLException e) {}
                    try { if (pstmt != null) pstmt.close(); } catch (SQLException e) {}
                    try { if (conn != null) conn.close(); } catch (SQLException e) {}
                }
            %>
	    
    </div>
</body>
</html>

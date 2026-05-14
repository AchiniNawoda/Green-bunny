<%@ page errorPage="error.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%@ page import="project.ConnectionProvider" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Profile </title>
        <link rel="stylesheet" href="css/profile.css"> 

</head>
<body>
    <div class="container">
        <h1>My Profile</h1>
        <div class="profile-info">
        
            <%
                // Retrieve user data from the database based on session information
                Connection conn = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;

                try {
                    conn = ConnectionProvider.getConnection(); // Get database connection
                    String query = "SELECT * FROM transporters WHERE email = ?"; // SQL query to retrieve user data
                    pstmt = conn.prepareStatement(query);
                    pstmt.setString(1, (String) session.getAttribute("email")); // Get user email from session
                    rs = pstmt.executeQuery();

                    if (rs.next()) {
                        // Retrieve user data from the result set
                        String firstName = rs.getString("firstName");
                        String lastName = rs.getString("lastName");
                        String email = rs.getString("email");
                        String mobileNumber = rs.getString("mobileNumber");
                        String address = rs.getString("address");
                        String city = rs.getString("city");

                        // Display user data in HTML format
            %>
        
            <label for="firstName">First Name:</label>
            <p id="firstName"><%= rs.getString(1) %></p><br>

            <label for="lastName">Last Name:</label>
            <p id="lastName"><%= rs.getString(2) %></p><br>

            <label for="email">Email:</label>
            <p id="email"><%=  rs.getString(3) %></p><br>
            
            <%-- <label for="password">Password:</label>
            <p id="password"><%=  rs.getString(4) %></p> --%>

            <label for="mobileNumber">Mobile Number:</label>
            <p id="mobileNumber"><%= rs.getString(5) %></p><br>

            <label for="address">Address:</label>
            <p id="address"><%= rs.getString(6) %></p><br>

            <label for="city">City:</label>
            <p id="city"><%= rs.getString(7) %></p>
            
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
            
</body>
</html>
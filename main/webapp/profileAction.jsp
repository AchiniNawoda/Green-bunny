<%@ page import="java.sql.*" %>
<%@ page import="project.ConnectionProvider" %>

<%-- Retrieve user data from the database --%>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        conn = ConnectionProvider.getConnection(); // Assuming you have a method to get the database connection
        String query = "SELECT * FROM farmers WHERE email = ?"; // Assuming 'email' is the unique identifier
        pstmt = conn.prepareStatement(query);
        pstmt.setString(1, (String) session.getAttribute("userEmail")); // Retrieve email from session
        rs = pstmt.executeQuery();

        if (rs.next()) {
            // Retrieve user data from the result set
            String firstName = rs.getString("firstName");
            String lastName = rs.getString("lastName");
            String email = rs.getString("email");
            String mobileNumber = rs.getString("mobileNumber");
            String address = rs.getString("address");
            String city = rs.getString("city");

            // Set user data as request attributes to be used in the HTML
            request.setAttribute("firstName", firstName);
            request.setAttribute("lastName", lastName);
            request.setAttribute("email", email);
            request.setAttribute("mobileNumber", mobileNumber);
            request.setAttribute("address", address);
            request.setAttribute("city", city);
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


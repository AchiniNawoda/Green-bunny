<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*" %>


<%
String email = session.getAttribute("email").toString();
String productName = request.getParameter("productName");
String price = request.getParameter("price");
String quantity = request.getParameter("quantity");
String address = request.getParameter("address");
String city = request.getParameter("city");
String mobileNumber = request.getParameter("mobileNumber");

try
{
	Connection con = ConnectionProvider.getConnection();
	PreparedStatement ps = con.prepareStatement("INSERT INTO goods(email, productName, price, quantity, address, city, mobileNumber) VALUES (?, ?, ?, ?, ?, ?, ?)");

	
	ps.setString(1, email);
	ps.setString(2, productName);
	ps.setString(3, price);
	ps.setString(4, quantity);
	ps.setString(5, address);
	ps.setString(6, city);
	ps.setString(7, mobileNumber);
	
	ps.executeUpdate();
	response.sendRedirect("product.jsp?msg=valid"); //market 
	
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("product.jsp?msg=invalid");
}

%>
</body>
</html>
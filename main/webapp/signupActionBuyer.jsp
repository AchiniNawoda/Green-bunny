<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%@ page import="java.util.regex.Pattern" %>
<%@ page import="java.util.regex.Matcher" %>

<%
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String email = request.getParameter("email");
String mobileNumber = request.getParameter("mobileNumber");
String address = request.getParameter("address");
String city = request.getParameter("city");
String password = request.getParameter("password");


//Simple validation for email format using regular expression
String emailPattern = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
Pattern pattern = Pattern.compile(emailPattern);
Matcher matcher = pattern.matcher(email);

if (firstname.trim().equals("")) {
    out.println("Please enter your first name.");
} else if (lastname.trim().equals("")) {
    out.println("Please enter your last name.");
} else if (email.trim().equals("")) {
    out.println("Please enter your email address.");
} else if (!matcher.matches()) {
    out.println("Please enter a valid email address.");
} else if (password.trim().equals("")) {
    out.println("Please enter a password.");
} else if (mobileNumber.trim().equals("")) {
    out.println("Please enter your mobile number.");
} else if (address.trim().equals("")) {
    out.println("Please enter your address.");
} else if (city.trim().equals("")) {
    out.println("Please enter your city.");
} else {
    // Proceed with form submission or further processing
    try
{
	Connection con = ConnectionProvider.getConnection();
	PreparedStatement ps = con.prepareStatement("insert into buyers values(?,?,?,?,?,?,?)");
	
	ps.setString(1, firstname);
	ps.setString(2, lastname);
	ps.setString(3, email);
	ps.setString(4, password);
	ps.setString(5, mobileNumber);
	ps.setString(6, address);
	ps.setString(7, city);
	
	
	ps.executeUpdate();
	response.sendRedirect("loginBuyer.jsp?msg=valid");
	
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("signupBuyer.jsp?msg=invalid");
}
}

%>
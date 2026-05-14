<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*" %>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");

if("greenbunnyAdmin@gmail.com".equals(email) && "admin".equals(password))
{
	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");
}
else
{
	int z=0;
	try
	{
		Connection con=ConnectionProvider.getConnection();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from farmers where email='"+email+"' and password='"+password+"'"); 
		while(rs.next())
		{
			z=1;
			session.setAttribute("email", email);
			response.sendRedirect("farmerHome.jsp");
		}
		if(z==0)
		{
			response.sendRedirect("loginFarmer.jsp?msg=notexist");
		}
	}
	catch(Exception e)
	{
		System.out.println(e);
		response.sendRedirect("loginFarmer.jsp?msg=invalid");
	}
}

%>
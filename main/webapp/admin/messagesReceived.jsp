<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MessagesReceived</title>
<link rel="stylesheet" href="css/adminHome.css">
<style>
  /* CSS styles for the table */
  table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
  }
  th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
  }
  th {
    background-color: #f2f2f2;
  }
  tr:nth-child(even) {
    background-color: #f9f9f9;
  }
</style>
</head>
<body>
<br><br>
<div style="color: black; text-align: center; font-size: 30px;"> Messages Received </div><br><br>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Email</th>
            <th scope="col">Subject</th>
            <th scope="col">Body</th>
          </tr>
        </thead>
        <tbody>
       <%
       try
       {
    	   Connection con=ConnectionProvider.getConnection();
    	   Statement st=con.createStatement();
    	   ResultSet rs=st.executeQuery("select * from message");
    	   while(rs.next())
    	   {
       %>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
          </tr>
         <%
    	   }
       }
       catch(Exception e)
       {
    	   System.out.println(e);
       }
         %>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>
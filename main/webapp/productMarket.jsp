<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%-- <%@include file="admin/adminHeader.jsp"%> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Market</title>
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
  /* CSS styles for the card-like appearance */
  .card {
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 10px;
    margin-bottom: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    background-color: #fff;
  }
</style>
</head>
<body>
<br><br>
<div style="color: black; text-align: center; font-size: 30px;"> Market Place </div><br><br>
<div class="card">
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Email</th>
            <th scope="col">Product</th>
            <th scope="col">Price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Address</th>
            <th scope="col">City</th>
            <th scope="col">Mobile Number</th>
          </tr>
        </thead>
        <tbody>   
    
    <%
       try
       {
    	   Connection con=ConnectionProvider.getConnection();
    	   Statement st=con.createStatement();
    	   ResultSet rs=st.executeQuery("select * from products");
    	   while(rs.next())
    	   {
       %>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
            <td><%=rs.getString(6) %></td>
            <td><%=rs.getString(7) %></td>
            <td><%=rs.getString(8) %></td>
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
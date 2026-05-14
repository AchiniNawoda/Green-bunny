<%@ page errorPage="error.jsp" %>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<html>
<head>
<link rel="stylesheet" href="css/addproduct.css">
<title>Add New Product</title>
</head>
<body>

<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Product Added Successfully!</h3>
<%} %>

<%
if("wrong".equals(msg))
{
%>
<h3>Something went wrong! Try Again!</h3>
<%} %>

<%-- <%

int productId=1;

try
{
	Connection con=ConnectionProvider.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(id) from products");
	while(rs.next())
	{
		productId = rs.getInt(1);
		productId = productId+1;
	}
}
catch(Exception e)
{
	System.out.println(e); 
}
%> --%>

<div class="container">
<form action="addNewProductAction.jsp" method="post" enctype="multipart/form-data">
<br><h1>Add Product</h1>

<%-- <p></p>

<h3 style="color: grey;">Product ID: <%out.println(productId); %> </h3>
<input type="hidden" name="productId" value="<%out.println(productId); %> "><br>
<input type="hidden" name="productId" value="<%=productId%>"> --%>

<p>Product Name</p>
<input type="text" name="productName" placeholder="Product Name" required><br>

<p>Price (per KG)</p>
<input type="text" name="price" placeholder="Price in Rs per KG" required><br>

<p>Quantity (KG)</p>
<input type="text" name="quantity" placeholder="Quantity in KG" required><br>

<p>Address</p>
<input type="text" name="address" placeholder="Pickup Location" required><br>

<p>City</p>
<input type="text" name="city" placeholder="City" required><br>

<p>Mobile Number</p>
<input type="text" name="mobileNumber" placeholder="Contact Number" required><br>
<br>

<p>Picture</p>
<input type="file" name="photoName" accept="image/*">
                
          
<!-- <a href="#"> --><center><button type="submit">Add Product</button></center><!-- </a><br> -->

</form>
</div>

</body>
</html>


<%-- <form action="addNewProductAction.jsp" method="post">

<h3 style="color: grey;">Product ID: <%out.println(id); %> </h3>
<input type="hidden" name="id" value="<%out.println(id); %> ">

<div class="left-div">
 <h3>Enter Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter name" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
 <input class="input-style" type="text" name="category" placeholder="Enter category" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
 <input class="input-style" type="number" name="price" placeholder="Enter price" required>
<hr>
</div>

<div class="right-div">
<h3>Active</h3>
 <select class="input-style" name="active">
 <option value="Yes">Yes</option>
 <option value="No">No</option>
 </select>
<hr>
</div>



 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>

</form>
</body>
<br><br><br> --%>

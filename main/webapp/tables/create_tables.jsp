<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*" %>

<%
try
{
	Connection con = ConnectionProvider.getConnection();
	Statement st = con.createStatement();
	
	//String q1 = "create table farmers(firstName varchar(200), lastName varchar(200), email varchar(100) primary key, password varchar(50), mobileNumber bigint, address varchar(200), city varchar(200))";
	//String q2 = "create table buyers(firstName varchar(200), lastName varchar(200), email varchar(100) primary key, password varchar(50), mobileNumber bigint, address varchar(200), city varchar(200))";
	//String q3 = "create table transporters(firstName varchar(200), lastName varchar(200), email varchar(100) primary key, password varchar(50), mobileNumber bigint, address varchar(200), city varchar(200))";
	String q4 = "create table product(id int AUTO_INCREMENT PRIMARY KEY, email varchar(255), productName varchar(255) NOT NULL, price DECIMAL(10, 2) NOT NULL, quantity INT NOT NULL, address VARCHAR(255) NOT NULL, mobileNumber VARCHAR(20) NOT NULL, photoName VARCHAR(255) NOT NULL, photoData MEDIUMBLOB)"; 
	//String q5 = "create table message(id int AUTO_INCREMENT PRIMARY KEY, email varchar(100), subject varchar(200), body varchar(500))";
	//String q6 = "CREATE TABLE goods (id INT AUTO_INCREMENT PRIMARY KEY, email VARCHAR(100), productName VARCHAR(100), price DECIMAL(10,2), quantity INT, address VARCHAR(200), city VARCHAR(50), mobileNumber BIGINT)";
	//String q7 = "create table products2(id int AUTO_INCREMENT PRIMARY KEY, email varchar(100), productName varchar(100), price int, quantity int, address varchar(200), mobileNumber bigint, photoName varchar(500))"; //

	
	
	//System.out.println("q1");
	//System.out.println("q2");
	//System.out.println("q3");
	System.out.println("q4");
	//System.out.println("q5");
	//System.out.println("q6");
	
	//st.execute(q1);
	//st.execute(q2);
	//st.execute(q3); 
	st.execute(q4); 
	//st.execute(q5);
	//st.execute(q6);
	
	 
	System.out.println("Table created");
	con.close();
	
}
catch(Exception e)
{
	System.out.println(e);
}

%>

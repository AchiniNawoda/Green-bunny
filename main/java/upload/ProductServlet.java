package upload;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import project.ConnectionProvider;

import org.apache.tomcat.jakartaee.commons.compress.utils.IOUtils;
import org.apache.tomcat.util.codec.binary.Base64;
//import org.json.JSONArray;
//import org.json.JSONObject;





@WebServlet("/ProductServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
                 maxFileSize = 1024 * 1024 * 10,      // 10MB
                 maxRequestSize = 1024 * 1024 * 50)   // 50MB
public class ProductServlet extends HttpServlet {
	private final Logger logger = Logger.getLogger(this.getClass().getName());
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
    	String productName = request.getParameter("productName");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String address = request.getParameter("address");
        String mobileNumber = request.getParameter("mobileNumber");
        
        // Get the file part
        Part photoPart = request.getPart("photo");
        

        // Insert data into the database
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = ConnectionProvider.getConnection();
            
            String sql = "INSERT INTO product (productName, price, quantity, address, mobileNumber, photoName, photoData) VALUES (?, ?, ?, ?, ?, ?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, productName);
            pstmt.setDouble(2, price);
            pstmt.setInt(3, quantity);
            pstmt.setString(4, address);
            pstmt.setString(5, mobileNumber);
            
            
         // Set the photo data as a blob
            if (photoPart != null) {
            	pstmt.setString(6,  photoPart.getSubmittedFileName());
                InputStream inputStream = photoPart.getInputStream();
                pstmt.setBinaryStream(7, inputStream, (int) photoPart.getSize());
            } else {
            	pstmt.setString(6, "");
                pstmt.setNull(7, java.sql.Types.BLOB);
            }
            pstmt.executeUpdate();
            response.sendRedirect("market.jsp"); // Redirect to the market page
        } catch (SQLException e) {
        	logger.log(Level.SEVERE,"Sql Exception occured",e);
            response.sendRedirect("error.jsp"); // Redirect to an error page
        } finally {
            // Close resources
            try { if (pstmt != null) pstmt.close(); } catch (SQLException e) {}
            try { if (conn != null) conn.close(); } catch (SQLException e) {}
        }
    }
    
    
    
    
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//    	
//        Connection conn = null;
//        PreparedStatement pstmt = null;
//        ResultSet rs = null;
//        try {
//            conn = ConnectionProvider.getConnection();
//            
//            String sql = "SELECT productName, price, quantity, address, mobileNumber, photoName, photoData FROM product";
//            pstmt = conn.prepareStatement(sql);
//            rs =pstmt.executeQuery();
//            
//            List<Product> productList = new ArrayList<>();
//            JSONArray jsonArray = new JSONArray();
//            
//            
//            while(rs.next()) {
//            	JSONObject object = new JSONObject();
//            	object.put("id",  rs.getInt("id"));
//            	object.put("email",  rs.getString("email"));
//            	object.put("productName",  rs.getString("productName"));
//            	object.put("price",  rs.getDouble("price"));
//            	object.put("quantity",  rs.getInt("quantity"));
//            	object.put("address",  rs.getString("address"));
//            	object.put("mobileNumber",  rs.getString("mobileNumber"));
//            	object.put("photoName",  rs.getString("photoName"));
//            	
//            	InputStream photo = rs.getBinaryStream("photoData");
//            	if(photo!= null)
//            	{
//            		byte[] imageBytes = IOUtils.toByteArray(photo);
//            		
//
//                    object.put("photoBase64", Base64.encodeBase64String(imageBytes)); 
//            	}
//            	
//            	
////            	String email = rs.getString("email");
////            	String productName = rs.getString("productName");
////            	double price =rs.getDouble("price");
////            	int quantity = rs.getInt("quantity");
////            	String address = rs.getString("address");
////            	String mobileNumber = rs.getString("mobileNumber");
////            	String photoName = rs.getString("photoName");
////            	InputStream photoData = rs.getBinaryStream("photoData");
////            	
////            	Product product = new Product(id,email,productName,price,quantity,address,mobileNumber,photoName,photoData);
////            	productList.add(product);
//            	
//            	jsonArray.put(object);
//            }
//
//        	String jsonResponse = jsonArray.toString();
//        	response.setContentType("application/json");
//        	response.setCharacterEncoding("UTF-8");
//        	
//        	response.getWriter().write(jsonResponse);
//            
//        } catch (SQLException e) {
//        	logger.log(Level.SEVERE,"Sql Exception occured",e);
//            response.sendRedirect("error.jsp"); // Redirect to an error page
//        } finally {
//            // Close resources
//            try { if (pstmt != null) pstmt.close(); } catch (SQLException e) {}
//            try { if (conn != null) conn.close(); } catch (SQLException e) {}
//        }  
//    }
           
    
}

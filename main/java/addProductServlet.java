

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/addProduct")

@MultipartConfig
public class addProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("productName");
        float price = Float.parseFloat(request.getParameter("price"));
        float quantity = Float.parseFloat(request.getParameter("quantity"));
        String address = request.getParameter("address");
        long mobileNumber = Long.parseLong(request.getParameter("mobileNumber"));
        Part photoPart = request.getPart("photo");
        String photoName = "";
        if (photoPart != null) {
            photoName = System.currentTimeMillis() + "_" + photoPart.getSubmittedFileName();
            String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }
            photoPart.write(uploadPath + File.separator + photoName);
        }

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gb01", "root", "")) {
            String query = "INSERT INTO products (productName, price, quantity, address, mobileNumber, photo) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement pstmt = conn.prepareStatement(query)) {
                pstmt.setString(2, productName);
                pstmt.setFloat(3, price);
                pstmt.setFloat(4, quantity);
                pstmt.setString(5, address);
                pstmt.setLong(6, mobileNumber);
                pstmt.setString(7, photoName);
                pstmt.executeUpdate();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        response.sendRedirect("farmer.jsp"); // Redirect back to the landing page
    }
}
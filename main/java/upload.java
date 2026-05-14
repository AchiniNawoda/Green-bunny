import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;

/**
 * Servlet implementation class upload
 */
@WebServlet("/upload")
@MultipartConfig
public class upload extends HttpServlet {
	
    private static final long serialVersionUID = 1L;

    protected void doPost1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        Part filePart = request.getPart("image");
        // Save the image to the desired location or process it as needed
        // You can access the uploaded image using filePart.getInputStream()
        // Save the description and image details to the database
        // Redirect the user to a confirmation page or the homepage
        response.sendRedirect("confirmation.jsp");
    }
}

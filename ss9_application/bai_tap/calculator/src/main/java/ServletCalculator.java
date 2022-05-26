import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletCalculator", urlPatterns = "/value")
public class ServletCalculator extends javax.servlet.http.HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        int percent = Integer.parseInt(request.getParameter("percent"));

        float amount = (float) (price * percent * 0.01);
        float discount_price = price - amount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Product Description: " +description);
        writer.println("<h1>Product Price: " + price );
        writer.println("<h1>Product Discount Percent: " + percent);
        writer.println("<h1>Product Amout: " +amount);
        writer.println("<h1>Product Discount_price: " + discount_price);
        writer.println("</html>");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

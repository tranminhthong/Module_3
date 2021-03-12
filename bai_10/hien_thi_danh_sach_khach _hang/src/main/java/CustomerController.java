import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerController", value = "/CustomerController")
public class CustomerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        List<Customer> customers = new ArrayList<>();
        customers.add(new Customer("Mai Công Sơn", "1990", "Hà Nội", "https://ca.slack-edge.com/T4AQ8L79A-U010RU92MGE-086d9c603851-512"));
        customers.add(new Customer("Thai Vo", "1993", "Nghệ An", "https://ca.slack-edge.com/T4AQ8L79A-U01FY87A4PN-91c5746c585a-512"));
        customers.add(new Customer("Tiến Hoàng", "1996", "Thái Nguyên", "https://ca.slack-edge.com/T4AQ8L79A-U01GFGX6EE4-be96dde7c7cb-512"));
        customers.add(new Customer("Vũ Anh Tú", "1995", "Hà Nội", "https://ca.slack-edge.com/T4AQ8L79A-U01F4SCLNGP-75b8b64ff4f9-512"));
        request.setAttribute("customers", customers);
        request.getRequestDispatcher("list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}

package controller;

import model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controller.DsaCustomerServlet", urlPatterns ="/customer")
public class DsaCustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Customer[] customers = new Customer[5];
        customers[0]= new Customer("Duy Trung","18-07-2003","Quảng Nam","img/av1.jpg");
        customers[1]= new Customer("Mạnh Cường","21-05-1997","Quảng Trị","img/av2.jpg");
        customers[2]= new Customer("Hoàng hảo","08-07-1999","Đà Nẵng","img/av3.jpg");
        customers[3]= new Customer("Nhật Hoàng","24-03-1996","Đà Nẵng","img/av4.jpg");
        customers[4]= new Customer("Thảo Uyên","03-07-1999","Sài gòn","img/av2.jpg");

        request.setAttribute("listCustomer",customers);
        request.getRequestDispatcher("list_customer.jsp").forward(request,response);
    }


}

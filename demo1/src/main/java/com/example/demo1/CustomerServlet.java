package com.example.demo1;
import customer.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "customerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customerList = new ArrayList<>();
    static {
        customerList.add(new Customer("Mai Văn Hoàn","1983-08-20","Hà Nội"));
        customerList.add(new Customer("Nguyễn Văn Nam","1983-08-20","Hà Nội"));
        customerList.add(new Customer("Nguyễn Thái Hòa","1983-08-20","Hà Nội"));
        customerList.add(new Customer("Trần Đăng Khoa","1983-08-20","Hà Nội"));
        customerList.add(new Customer("Nguyễn Đình Thi","1983-08-20","Hà Nội"));
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.setAttribute("customerList",customerList);
            request.getRequestDispatcher("/a/list.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

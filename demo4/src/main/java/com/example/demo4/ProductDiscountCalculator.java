package com.example.demo4;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "ConverterServlet", value = "/display-discount")
public class ProductDiscountCalculator extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product = request.getParameter("product");
        Float price = Float.parseFloat(request.getParameter("price"));
        Float percent = Float.parseFloat(request.getParameter("percent"));
        Float discountAmount = price * percent * 0.01f;
        Float discountPrice = price * discountAmount;
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<h3> Product : "+product+"<h3>");
        out.println("<h3> price : "+price+"<h3>");
        out.println("<h3> percent : "+percent+"<h3>");
        out.println("<h3> discountAmount : " +discountAmount+"<h3>");
        out.println("<h3> discountPrice : " +discountPrice+"<h3>");
        out.println("</html>");
    }
}

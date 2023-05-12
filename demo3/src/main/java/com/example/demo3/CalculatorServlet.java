package com.example.demo3;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet", value = "/calculate")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         double firstNum = Double.parseDouble(request.getParameter("first"));
        double SecondNum = Double.parseDouble(request.getParameter("second"));
         char operand = request.getParameter("option").charAt(0);

        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");
        printWriter.println("<h2>Result : </h2>");
        try{
            double result = Caculator.calculate(firstNum,SecondNum,operand);
            printWriter.println(firstNum +" "+operand+" "+SecondNum +" = " +result);
        }catch (Exception e){
            printWriter.println("Error : "+e.getMessage());
        }
        printWriter.println("</html>");
    }
}

package codegymvn.controller;

import codegymvn.service.loai_dich_vuImplement;
import codegymvn.service.loai_dich_vuImterface;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Servlet", value = {"/l"})
public class Servlet extends HttpServlet {
    private loai_dich_vuImterface loai_dich_vuImterface = new loai_dich_vuImplement();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("l",loai_dich_vuImterface.Find_all());
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

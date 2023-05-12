package com.example.demo5.controller;

import com.example.demo5.model.student.student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Servlet", urlPatterns = "/a")
public class StudentServlet extends HttpServlet {
    private static List<student> studentlist;
    static {
        studentlist = new ArrayList<student>();
        studentlist.add(new student(1,"a",1,45,"avatar_1.jpg"));
        studentlist.add(new student(2,"b",0,95,"avatar_2.jpg"));
        studentlist.add(new student(3,"c",0,65,"avatar_3.jpg"));
        studentlist.add(new student(4,"d",1,75,"avatar_4.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("studentlist",studentlist);
        request.getRequestDispatcher("/com/example/demo5/model/student/display.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

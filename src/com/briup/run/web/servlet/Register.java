package com.briup.run.web.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;

import java.io.PrintWriter;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@SuppressWarnings("serial")
public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest Request, HttpServletResponse Response) throws ServletException, IOException {
        doGet(Request, Response);
    }

    protected void doGet(HttpServletRequest Request, HttpServletResponse Response) throws ServletException, IOException {

            Response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = Response.getWriter();
            String name = Request.getParameter("name");
            DB dao=new DB();
            ResultSet rs=dao.exequery("select * from memberinfo where name='"+name+"'");
            System.out.println(name);
            try {
				if(rs.next()){
					System.out.println("0");
					out.println("0");
				}
				else{
					System.out.println("1");
					out.println("1");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
          

        }
}

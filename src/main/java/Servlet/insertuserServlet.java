package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.usersdao;
@WebServlet("/jsp/insertuser")
public class insertuserServlet extends HttpServlet{
	usersdao dao = new usersdao();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    request.setCharacterEncoding("utf-8");
			String username = request.getParameter("name");
	        String sex = request.getParameter("gender");
	        if (sex.equals("1")) {
	        	sex="男";
		       }
		       if(sex.equals("0")){
		    	   sex="女";
		       }
	        String phone = request.getParameter("phone");
	        String Status = request.getParameter("status");
	        int status = Integer.parseInt(Status);
	        String account = request.getParameter("account");
	        String password = request.getParameter("password");
	        String isAdmin = request.getParameter("isadmin");
	        int isadmin=0;
	        if (isAdmin.equals("flase")) {
	    	   isadmin=0;
	       }
	       if(isAdmin.equals("true")){
	    	   isadmin=1;
	       }
	       dao.insertuser(username, sex, phone, status, account, password, isadmin);
	}
}

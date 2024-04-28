package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.usersdao;
import entity.orders;
import entity.users;


/**
 * Servlet implementation class DenluServlet
 */
@WebServlet("/jsp/DenluServlet")
public class DenluServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setCharacterEncoding("UTF-8");
		 response.setContentType("text/html;charset=UTF-8");
		String pass=request.getParameter("pass");
		String zhan=request.getParameter("zhan");
		usersdao usersdao = new usersdao();
		HttpSession session=request.getSession();
	    List<users> userList = usersdao.executeQuery(zhan, pass);
	    if (userList != null && !userList.isEmpty()) {
            users currentUser = userList.get(0);
            if (currentUser.getUser_identity() == 1) {
                request.setAttribute("list", userList);
                request.getRequestDispatcher("admin.jsp").forward(request, response);
            } else {
            	
                 session.setAttribute("list",userList);
                request.getRequestDispatcher("/jsp/xiala").forward(request, response);
            }
        }else {

			response.sendRedirect("Denlushibai");

		}
	}
	

}

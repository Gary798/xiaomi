package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.usersdao;
import entity.images;
import entity.products;
@WebServlet("/jsp/xiala")
public class XialaServlet extends HttpServlet{
	usersdao  dao = new usersdao();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	    List<products> listsp = dao.selectxiala2();
	    List<images> listtp = new ArrayList<>();
	    
	    for (products p : listsp) {
	        List<images> imagesList = dao.xialatp(p.getPro_id());
	        listtp.addAll(imagesList);
	        System.out.println(imagesList);
	    }
	    
	    // 在此处迭代 listtp 并进行相关操作
	    for (images l : listtp) {
	        System.out.println(l+"666");
	    }

	    request.setAttribute("listsp", listsp);
	    request.setAttribute("listtp", listtp);
	    request.getRequestDispatcher("shouye.jsp").forward(request, response);
	}

}

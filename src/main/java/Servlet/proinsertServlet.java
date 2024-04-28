package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.categoryDAO;
import dao.productDAO;
import entity.category;
@WebServlet("/jsp/insertpro")
public class proinsertServlet extends HttpServlet{
	productDAO dao = new productDAO();
	categoryDAO catedao = new categoryDAO();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    request.setCharacterEncoding("utf-8");
		    String proName = request.getParameter("pro_name");
	        String proDes = request.getParameter("pro_des");
	        int cate_id = Integer.parseInt(request.getParameter("cateco"));
	        int pro_state = Integer.parseInt(request.getParameter("proinsstate"));
	        dao.insertpro(proName, proDes, cate_id, pro_state);
	        int id = (int) dao.selectproid();
	        dao.insertimg(id);
	        dao.insertadvimg(id);
		    //类别数据
		    List<category> prolist = catedao.queryall();  
		    request.setAttribute("prolist", prolist);
		    
		    
	}
}

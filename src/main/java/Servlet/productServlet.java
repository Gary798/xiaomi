package Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.categoryDAO;
import dao.productDAO;
import entity.category;
import entity.products;

import java.io.IOException;
import java.util.List;
import java.util.Map;
@WebServlet(urlPatterns = "/jsp/profy")
public class productServlet extends HttpServlet {
	productDAO dao = new productDAO();
	categoryDAO prodao = new categoryDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        String curpagestring =  request.getParameter("curpage");
        String pagesizestring =  request.getParameter("pagesize");
        if(curpagestring==null||pagesizestring==null) {
        	curpagestring="1";
        	pagesizestring="8";
        }
        int curpage = Integer.parseInt(curpagestring);
        int pagesize = Integer.parseInt(pagesizestring);
       
        //搜索值
        // 获取前端发送的表单数据
        String name = request.getParameter("pname");
        String cate = request.getParameter("cate");
        String pstate = request.getParameter("pstate");
        String pro_time = request.getParameter("pro_time");
        int Pstate=3;
        if (pstate==null) {
        	Pstate=3;
		}else {
			Pstate=Integer.parseInt(pstate);
		}
        List<category> prolist = prodao.queryall();  
		Map<String ,Object> map = dao.queryByPage(name,cate,Pstate,pro_time,curpage, pagesize);
        List<products> list = (List<products>) map.get("list");
         request.setAttribute("name", name);
         request.setAttribute("cate", cate);
         request.setAttribute("pstate", Pstate);
         request.setAttribute("pro_time", pro_time);
         
    	 request.setAttribute("curpage", curpage);
    	 request.setAttribute("list", list);
    	 request.setAttribute("prolist", prolist);
    	 request.setAttribute("total",  map.get("total"));
    	 request.getRequestDispatcher("product.jsp").forward(request, response);
    }
}

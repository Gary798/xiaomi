package Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.categoryDAO;
import dao.ordersDAO;
import dao.productDAO;
import entity.category;
import entity.orders;
import entity.products;

import java.io.IOException;
import java.util.List;
import java.util.Map;
@WebServlet(urlPatterns = "/jsp/orderpage")
public class orderselServlet extends HttpServlet {
	ordersDAO dao = new ordersDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        String curpagestring =  request.getParameter("curpage");
        String pagesizestring =  request.getParameter("pagesize");
        if(curpagestring==null||pagesizestring==null) {
        	curpagestring="1";
        	pagesizestring="5";
        }
        int curpage = Integer.parseInt(curpagestring);
        int pagesize = Integer.parseInt(pagesizestring);
       
        //搜索值
        // 获取前端发送的表单数据
        String num = request.getParameter("ordnum");
        String state = request.getParameter("ordstate");
        String time = request.getParameter("ord_time");
        int State=0;
        if (state==null) {
        	State=0;
		}else {
			State=Integer.parseInt(state);
		}
        
        
		Map<String ,Object> map =  dao.pagewhereord(num,State,time,curpage, pagesize);
        List<orders> list = (List<orders>) map.get("list");
         request.setAttribute("num", num);
         request.setAttribute("state", State);
         request.setAttribute("time", time);
         
    	 request.setAttribute("curpage", curpage);
    	 request.setAttribute("orderlist", list);
    	 request.setAttribute("total",  map.get("total"));
    	 request.getRequestDispatcher("order.jsp").forward(request, response);
    }
}

package Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.pricomdao;
import entity.price_combinations;
import entity.products;

import java.io.IOException;
import java.util.List;
import java.util.Map;
@WebServlet(urlPatterns = "/jsp/pricompage")
public class pricompageServlet extends HttpServlet {
	pricomdao dao = new pricomdao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        String curpagestring =  request.getParameter("curpage");
        String pagesizestring =  request.getParameter("pagesize");
        if(curpagestring==null||pagesizestring==null) {
        	curpagestring="1";
        	pagesizestring="10";
        }
        int curpage = Integer.parseInt(curpagestring);
        int pagesize = Integer.parseInt(pagesizestring);
       
        //搜索值
        // 获取前端发送的表单数据
        String name = request.getParameter("pname");
        String cun = request.getParameter("spname");
        String price = request.getParameter("price");
        
        
        List<products> productslist = dao.selectproname();
		Map<String ,Object> map = dao.pricecompage(name,cun,price,curpage, pagesize);
        List<price_combinations> list = (List<price_combinations>) map.get("list");
        request.setAttribute("name", name);
         request.setAttribute("cun", cun);
         request.setAttribute("price", price);
         
    	 request.setAttribute("curpage", curpage);
    	 request.setAttribute("proname", productslist);
    	 request.setAttribute("pricomlist", list);
    	 request.setAttribute("total",  map.get("total"));
    	 request.getRequestDispatcher("speci.jsp").forward(request, response);
    }
}

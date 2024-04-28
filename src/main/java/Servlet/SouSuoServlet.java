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

/**
 * Servlet implementation class SouSuoServlet
 */
@WebServlet("/jsp/SouSuoServlet")
public class SouSuoServlet extends HttpServlet {
	usersdao dao = new usersdao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	    
	    int curpage = 1; // 默认为第一页
	    int pagesize = 8; // 每页显示的条目数量
	    //从请求参数中获取到当前搜索值
	    
	    // 从请求参数中获取当前页码
	    String curpageStr = request.getParameter("curpage");
	    if (curpageStr != null && !curpageStr.isEmpty()) {
	        try {
	            curpage = Integer.parseInt(curpageStr);
	        } catch (NumberFormatException e) {
	            // 如果参数不是有效的数字，则保持默认值
	            e.printStackTrace();
	        }
	    }
	    //判断是否从点击分类进来的
	    Integer fl=-1;
	    String fls = request.getParameter("fenlei");
	    if (fls==null) {
			fl=-1;
		}else {
			 fl = Integer.parseInt(fls);
		}
	    
	    String name = request.getParameter("ssz");
	    String flname = request.getParameter("flname");
	 // 先检查是否为 null
	    if (flname == null || flname.isEmpty()) {
	        flname = "全部";
	    }
	    Map<String, Object> listsp = dao.selectsousuo(name,fl, curpage, pagesize);
		List<products> listzsp =(List<products>) listsp.get("list");
		List<images> listtp = new ArrayList<>();
		List<products> listGg = new ArrayList<>();
		List<products> listCo = new ArrayList<>();
		populateLists(listsp, listtp, listGg, listCo);
		 request.setAttribute("flname", flname);
		 request.setAttribute("fl", fl);
		 request.setAttribute("name", name);
		 request.setAttribute("curpage", curpage);
		 request.setAttribute("listsp", listzsp);
		 request.setAttribute("total", listsp.get("total"));
	     request.setAttribute("listtp", listtp);
		 request.setAttribute("listGg", listGg);
	     request.setAttribute("listCo", listCo);
	     request.getRequestDispatcher("sousuo.jsp").forward(request, response);
	}

	private void populateLists(Map<String, Object> listsp, List<images> imagesList, List<products> ggList,
			List<products> coList) {
				// 从 map 中提取产品列表和总数
		List<products> productsList = (List<products>) listsp.get("list");

		for (products p : productsList) {
			List<images> imagesListTemp = dao.xialatp(p.getPro_id());
			List<products> ggListTemp = dao.selectGg(p.getPro_id());
			List<products> coListTemp = dao.selectCo(p.getPro_id());
			imagesList.addAll(imagesListTemp);
			ggList.addAll(ggListTemp);
			coList.addAll(coListTemp);
		}
	}

}

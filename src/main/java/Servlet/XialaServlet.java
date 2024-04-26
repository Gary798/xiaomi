package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import dao.usersdao;
import entity.category;
import entity.images;
import entity.products;
import entity.shopping_cart;
import entity.users;

@WebServlet("/jsp/xiala")
public class XialaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private usersdao dao = new usersdao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
     // 获取 userList 属性值
        HttpSession sessions = request.getSession();
        List<users> userList = (List<users>) sessions.getAttribute("list");
        if (userList != null && !userList.isEmpty()) {
        	 // 如果 userList 不为空，则获取第一个用户的 id 值
            
            users currentUser = userList.get(0);
            users name =userList.get(0);
            int userId = currentUser.getUser_id();
            String userName =currentUser.getUser_name();
             // 在控制台打印用户 id 值
            System.out.println("User ID: " + userId);
            System.out.println(userName);
         List<shopping_cart> listcount =dao.Gwcsl(userId);
         List<category> listFL = dao.FenLei();
         List<List<products>> listsp = new ArrayList<List<products>>();
         for (category category : listFL) {
             int categoryId = category.getCate_id();
             listsp.add(dao.selectxiala2(categoryId, 0, 6));
         }
        List<List<images>> listtp = new ArrayList<>();
        List< List<products>> listGg = new ArrayList<>();
        List<List<products>> listCo = new ArrayList<>();
        
         //热度
         List<products> listrdsp =dao.selecrm(0, 8);
         List<images> listtprm = new ArrayList<>();
         List<products> listGgrm = new ArrayList<>();
         List<products> listCorm = new ArrayList<>();
         
         //最新上架
         List<products> listspsj =dao.selecsj(0, 8);
         List<images> listtpsj = new ArrayList<>();
         List<products> listGgsj = new ArrayList<>();
         List<products> listCosj = new ArrayList<>();
         
         //热议商品
         List<products> listspRAND =dao.selectRAND(0, 24);
         List<images> listtpRAND = new ArrayList<>();
         List<products> listGgRAND = new ArrayList<>();
         List<products> listCoRAND = new ArrayList<>();
         
         //价格↑
         List<products> listspJGG =dao.selectJGG(0, 24);
         System.out.println(listspJGG);
         List<images> listtpJGG = new ArrayList<>();
         List<products> listGgJGG = new ArrayList<>();
         List<products> listCoJGG = new ArrayList<>();
         
         populateLists(listspJGG, listtpJGG, listGgJGG, listCoJGG); 
         populateLists(listspRAND, listtpRAND, listGgRAND, listCoRAND); 
         populateLists(listrdsp, listtprm, listGgrm, listCorm);
         populateLists(listspsj, listtpsj, listGgsj, listCosj);
         populateListss(listsp, listtp, listGg, listCo);
         // 将数据存入 session
         HttpSession session = request.getSession();
         
         //存储用户id
         session.setAttribute("userId", userId);
         session.setAttribute("userName", userName);
         // 商品主页展示
         request.setAttribute("listsp", listsp);
         request.setAttribute("listtp", listtp);
         request.setAttribute("listGg", listGg);
         request.setAttribute("listCo", listCo);
         //热卖商品
         request.setAttribute("listrdsp", listrdsp);
         request.setAttribute("listtprm", listtprm);
         request.setAttribute("listGgrm", listGgrm);
         request.setAttribute("listCorm", listCorm);
         //购物车数量
         request.setAttribute("listcount", listcount);
         //最新上架
         request.setAttribute("listspsj", listspsj);
         request.setAttribute("listtpsj", listtpsj);
         request.setAttribute("listGgsj", listGgsj);
         request.setAttribute("listCosj", listCosj);
         //推荐商品
         request.setAttribute("listspRAND", listspRAND);
         request.setAttribute("listtpRAND", listtpRAND);
         request.setAttribute("listGgRAND", listGgRAND);
         request.setAttribute("listCoRAND", listCoRAND);
         //价格↑
         request.setAttribute("listspJGG", listspJGG);
         request.setAttribute("listtpJGG", listtpJGG);
         request.setAttribute("listGgJGG", listGgJGG);
         request.setAttribute("listCoJGG", listCoJGG);
         //分类
         request.setAttribute("listFL", listFL);
         request.getRequestDispatcher("shouye.jsp").forward(request, response);
		}else {
		 request.getRequestDispatcher("Denlu.jsp").forward(request, response);
		}	
       
    }
    
    private void populateLists(List<products> productsList, List<images> imagesList,
            List<products> ggList, List<products> coList) {
        for (products p : productsList) {
            List<images> imagesListTemp = dao.xialatp(p.getPro_id());
            List<products> ggListTemp = dao.selectGg(p.getPro_id());
            List<products> coListTemp = dao.selectCo(p.getPro_id());
            imagesList.addAll(imagesListTemp);
            ggList.addAll(ggListTemp);
            coList.addAll(coListTemp);
        }
    }

	private void populateListss(List<List<products>> productsList, List<List<images>> imagesList,
			List<List<products>> ggList, List<List<products>> coList) {
		for (List<products> p : productsList) {
			// 创建临时的图片列表、gg列表和co列表
			List<images> imagesListTemp = new ArrayList<>();
			List<products> ggListTemp = new ArrayList<>();
			List<products> coListTemp = new ArrayList<>();

			// 查询与当前产品相关的图片列表
			for (products product : p) {
				imagesListTemp.addAll(dao.xialatp(product.getPro_id()));
			}

			// 查询与当前产品相关的gg列表
			for (products product : p) {
				ggListTemp.addAll(dao.selectGg(product.getPro_id()));
			}
			
			// 查询与当前产品相关的co列表
			for (products product : p) {
				coListTemp.addAll(dao.selectCo(product.getPro_id()));
			}

			// 将查询结果添加到对应的列表中
			imagesList.add(imagesListTemp);
			ggList.add(ggListTemp);
			coList.add(coListTemp);
		}
	}

}

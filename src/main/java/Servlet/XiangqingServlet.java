package Servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.usersdao;
import entity.advertisements;
import entity.category;
import entity.images;
import entity.products;
import entity.products_specification;
import entity.shopping_cart;
import entity.users;

@WebServlet("/jsp/xq")
public class XiangqingServlet extends HttpServlet {
    private usersdao dao = new usersdao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //测试用户数据
        // 获取 userList 属性值
        HttpSession session = request.getSession();  
        Integer userId = (Integer) session.getAttribute("userId");
        List<shopping_cart> listcount =dao.Gwcsl(userId);
        // 获取价格
        String Jg = request.getParameter("Jg");
        BigDecimal jg = new BigDecimal(Jg);

        // 获取商品id
        String ids = request.getParameter("id");
        Integer id = Integer.parseInt(ids);

        // 获取版本id和颜色id
        String ys = request.getParameter("Co");
        Integer Co = Integer.parseInt(ys);
        String Ggs = request.getParameter("Gg");
        Integer Gg = Integer.parseInt(Ggs);
        
      //获取全部手机分类
        List<category> listFL =dao.FenLei();
       
        // 查询商品信息
        List<products> listspxx = dao.selectProducts(id);

        // 查询规格信息
        List<products_specification> listCC = dao.selecteChuCun(id, Gg);
        List<products_specification> listCo = dao.selecteChuCun(id, Co);

        // 查询商品详情图片信息
        List<advertisements> listxqimg = dao.selectXQimg(id);

        // 查询相关商品（下拉）
        
        List<List<products>> listsp1 = new ArrayList<List<products>>();
        for (category category : listFL) {
            int categoryId = category.getCate_id();
            listsp1.add(dao.selectxiala2(categoryId, 0, 6));
        }
       List<List<images>> listtp1 = new ArrayList<>();
       List< List<products>> listGg1 = new ArrayList<>();
       List<List<products>> listCo1 = new ArrayList<>();
       populateListss(listsp1, listtp1, listGg1, listCo1);
        // 设置请求属性
        request.setAttribute("listsp1", listsp1);
        request.setAttribute("listtp1", listtp1);
        request.setAttribute("listGg1", listGg1);
        request.setAttribute("listCo1", listCo1);
        request.setAttribute("Jg", jg);
        request.setAttribute("ID", id); 
        
        request.setAttribute("listcount", listcount);
        
        
        request.setAttribute("listxqimg", listxqimg);
        request.setAttribute("listCC", listCC);
        request.setAttribute("listCo", listCo);
        request.setAttribute("listspxx", listspxx);
        
        //分类
        request.setAttribute("listFL", listFL);
        // 转发到详情页
        request.getRequestDispatcher("xiangqing.jsp").forward(request, response);
    }

    private void populateLists(List<products> productsList, List<images> imagesList,
                               List<products> ggList, List<products> coList) {
        for (products p : productsList) {
            List<images> imagesListTemp = dao.xialatp(p.getPro_id());
            List<products> listGgs = dao.selectGg(p.getPro_id());
            List<products> listCos = dao.selectCo(p.getPro_id());
            imagesList.addAll(imagesListTemp);
            ggList.addAll(listGgs);
            coList.addAll(listCos);
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

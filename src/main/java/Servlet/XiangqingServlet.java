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

import dao.usersdao;
import entity.advertisements;
import entity.images;
import entity.products;
import entity.products_specification;

@WebServlet("/jsp/xq")
public class XiangqingServlet extends HttpServlet {
    private usersdao dao = new usersdao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

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
        
        //获取商品规格
       
        // 查询商品信息
        List<products> listspxx = dao.selectProducts(id);

        // 查询规格信息
        List<products_specification> listCC = dao.selecteChuCun(id, Gg);
        List<products_specification> listCo = dao.selecteChuCun(id, Co);

        // 查询商品详情图片信息
        List<advertisements> listxqimg = dao.selectXQimg(id);

        // 查询相关商品（下拉）
        List<products> listsp1 = dao.selectxiala1(0, 6);
        List<images> listtp1 = new ArrayList<>();
        List<products> listGg1 = new ArrayList<>();
        List<products> listCo1 = new ArrayList<>();
        populateLists(listsp1, listtp1, listGg1, listCo1);

        // 查询相关商品（其他）
        List<products> listsp = dao.selectxiala2(0, 6);
        List<images> listtp = new ArrayList<>();
        List<products> listGga = new ArrayList<>();
        List<products> listCoa = new ArrayList<>();
        populateLists(listsp, listtp, listGga, listCoa);

        // 设置请求属性
        request.setAttribute("listsp1", listsp1);
        request.setAttribute("listtp1", listtp1);
        request.setAttribute("listGg1", listGg1);
        request.setAttribute("listCo1", listCo1);
        request.setAttribute("Jg", jg);
        request.setAttribute("ID", id);
        request.setAttribute("listxqimg", listxqimg);
        request.setAttribute("listsp", listsp);
        request.setAttribute("listtp", listtp);
        request.setAttribute("listGg", listGga);
        request.setAttribute("listCos", listCoa);
        request.setAttribute("listCC", listCC);
        request.setAttribute("listCo", listCo);
        request.setAttribute("listspxx", listspxx);

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
}

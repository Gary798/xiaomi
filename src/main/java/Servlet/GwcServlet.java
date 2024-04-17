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
import javax.servlet.http.HttpSession; // 导入 HttpSession 类

import dao.usersdao;
import entity.images;
import entity.products;
import entity.shopping_cart;

/**
 * Servlet implementation class DemoServlet
 */
@WebServlet("/jsp/DemoServlet")
public class GwcServlet extends HttpServlet {
    usersdao dao = new usersdao();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Color = request.getParameter("Color");
        String Gg = request.getParameter("Gg");
        System.out.println(Gg);
        String ids = request.getParameter("id");
        Integer id = Integer.parseInt(ids);
        String jg = request.getParameter("jg");
        BigDecimal Jg =new BigDecimal(jg);
        System.out.println(Jg);
        //获取name
        List<products> spmz = dao.selectPName(id);
        StringBuilder stringBuilder = new StringBuilder();
        for (products product : spmz) {
            stringBuilder.append(product.getPro_name()); // 仅获取 pro_name 字段
        }
        String names = stringBuilder.toString(); // 获取不带逗号的字符串
        System.out.println(names);
        String name =names+" - "+Gg+" - "+Color;
        System.out.println(name);
        //获取img路径
        List<images> listtp = dao.xialatp(id);
        StringBuilder tpBu = new StringBuilder();
        for (images images : listtp) {
            tpBu.append(images.getImg_url()); // 仅获取 getImg_url 字段
        }
        String img = tpBu.toString(); // 获取不带逗号的字符串
        
        System.out.println(img);
        //数量默认1
        Integer number=1;
        //测试数据用户id为1
        Integer Yhid =1;
        dao.Insertgwc(id, img, name, Jg, Yhid);
        
     // 将数据存入 session
        HttpSession session = request.getSession();
        
        session.setAttribute("Yhid", Yhid);
     // 重定向到 GwServlet
        response.sendRedirect(request.getContextPath() + "/jsp/GwServlet");

    }
}

package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.usersdao;
import entity.products;

/**
 * Servlet implementation class ShuaServlet
 */
@WebServlet("/jsp/ShuaServlet")
public class ShuaServlet extends HttpServlet {
	usersdao dao = new usersdao();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取前端传递过来的参数
        String pro_id = request.getParameter("pro_id");
        Integer id = Integer.parseInt(pro_id);
        List<products> spmz = dao.selectPName(id);
        StringBuilder stringBuilder = new StringBuilder();
        for (products product : spmz) {
            stringBuilder.append(product.getPro_name()); // 仅获取 pro_name 字段
        }
        String names = stringBuilder.toString(); // 获取不带逗号的字符串
        
        String spe_det = request.getParameter("spe_det");
       
        List<products> sxjg = dao.selectSxjg(names,id,spe_det);
        
        StringBuilder stringBuilders = new StringBuilder();
        for (products product : sxjg) {
            stringBuilders.append(product.getPri_name()); // 仅获取价格 字段
        }
        String JG = stringBuilders.toString(); // 获取不带逗号的字符串
        // 设置响应内容类型
        response.setContentType("text/html");

        // 获取响应输出流
        PrintWriter out = response.getWriter();
        
        // 将价格信息写入响应
        out.print(JG);

        // 关闭输出流
        out.close();
	}

}

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
import entity.shopping_cart;
@WebServlet("/jsp/UPServlet")
public class UPServlet extends HttpServlet{
	usersdao dao = new usersdao();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置响应内容类型
        response.setContentType("text/html");

        // 获取请求参数
        String carId = request.getParameter("carId");
        System.out.println(carId);
        String quantityStr = request.getParameter("quantity");
        
        int carid =Integer.parseInt(carId);
        int quantity = Integer.parseInt(quantityStr);
        int xgsl =dao.UPnumber(quantity, carid);
        // 返回响应
        PrintWriter out = response.getWriter();
        
        out.print(xgsl);
        
        // 关闭输出流
        out.close();
	}
}

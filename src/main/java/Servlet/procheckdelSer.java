package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.productDAO;
@WebServlet("/jsp/procheckdelSer")
public class procheckdelSer extends HttpServlet{
	productDAO dao = new productDAO();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
		  // 获取发送过来的用户ID数组
		  String[] proIds = request.getParameterValues("proIds[]");
			// 打印出来被删除的用户ID
		    for (String Ids : proIds) {
		    	Integer id = Integer.parseInt(Ids);
		    	 dao.deleteprospe(id);
			     dao.deleteproimg(id);
			     dao.deleteproadv(id);
			     dao.deletepro(id);
		    }
	}
}

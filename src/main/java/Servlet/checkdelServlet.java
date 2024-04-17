package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.usersDAO;
@WebServlet("/jsp/checkdelSer")
public class checkdelServlet extends HttpServlet{
	usersDAO dao = new usersDAO();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
		  // 获取发送过来的用户ID数组
		  String[] userIds = request.getParameterValues("userIds[]");
			// 打印出来被删除的用户ID
		    for (String userId : userIds) {
		    	Integer id = Integer.parseInt(userId);
		    	dao.deleteuser(id);
		    }
	}
}

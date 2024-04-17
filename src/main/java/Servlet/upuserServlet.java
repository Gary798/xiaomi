package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.usersDAO;
@WebServlet("/jsp/upbtnSer")
public class upuserServlet extends HttpServlet{
	usersDAO dao = new usersDAO();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
		  int uid = Integer.parseInt(request.getParameter("uid"));
		  String upname = request.getParameter("upname");
	      String upphone = request.getParameter("upphone");
	      String upisadmin = request.getParameter("upisadmin");
	      int upgender= Integer.parseInt(request.getParameter("upgender"));
	      int upstatus= Integer.parseInt(request.getParameter("upstatus"));
	      int isadmin=0;
	      if (upisadmin!=null) {
	           isadmin=1;
	      }
	      String upsex=upgender==1?"男":"女";
	      // 在控制台输出接收到的数据，方便调试
	      dao.updateuser(upname, upphone, upsex, upstatus, isadmin, uid);
	}
}

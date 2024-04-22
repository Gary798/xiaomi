package Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.usersDAO;
import entity.users;
import java.io.IOException;
import java.util.List;
import java.util.Map;
@WebServlet(urlPatterns = "/jsp/fy")
public class userServlet extends HttpServlet {
	usersDAO dao = new usersDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        String curpagestring =  request.getParameter("curpage");
        String pagesizestring =  request.getParameter("pagesize");
        if(curpagestring==null||pagesizestring==null) {
        	curpagestring="1";
        	pagesizestring="8";
        }
        int curpage = Integer.parseInt(curpagestring);
        int pagesize = Integer.parseInt(pagesizestring);
       
        //搜索值
        // 获取前端发送的表单数据
        String name = request.getParameter("uname");
        String account = request.getParameter("uaccount");
        String state = request.getParameter("ustate");
        String creatTime = request.getParameter("creat_time");
        int State=3;
        if (state==null) {
        	 State=3;
		}else {
			 State=Integer.parseInt(state);
		}
     
		Map<String ,Object> map = dao.queryByPage(name,account,State,creatTime,curpage, pagesize);
        List<users> list = (List<users>) map.get("list");
        request.setAttribute("name", name);
        request.setAttribute("account", account);
        request.setAttribute("state", State);
        request.setAttribute("creatTime", creatTime);
        
    	 request.setAttribute("curpage", curpage);
    	 request.setAttribute("list", list);
    	 request.setAttribute("total",  map.get("total"));
    	 request.getRequestDispatcher("user.jsp").forward(request, response);
    }
}

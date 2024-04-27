package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Demo
 */
@WebServlet("/jsp/Xiugaichengon")
public class Xiugaichengon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		 response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
	
	        // 页面重定向到另一个页面
		   	out.println("<html>");
	        out.println("<head>");
	        out.println("<title>Servlet Output</title>");
	        out.println("</head>");
	        out.println("<body>");
			out.print("<script>");
  			
  			out.print("setTimeout(function() {\r\n"
  					+ "        window.location.href = \"Denlu.jsp\";\r\n"
  					+ "    }, 3000);");
  		out.print("</script>");
  		out.print("修改成功，3秒后返回登录");
	       out.println("</body>");
	        out.println("</html>");
	    
		
		
	}

}

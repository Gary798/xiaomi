package Servlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import entity.products;
@WebServlet(urlPatterns = "/limit/li")
public class limitServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    request.setCharacterEncoding("utf-8");
	    int curpage = Integer.parseInt(request.getParameter("curpage"));
	    int pagesize = Integer.parseInt(request.getParameter("pagesize"));
	    String name = request.getParameter("name"); 
	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingcart?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8", "root", "123456");
	        String sql = "SELECT * FROM products ";
	        String countSql = "SELECT COUNT(*) FROM products ";
	        if (name != null && !name.isEmpty()) {
	            sql += "WHERE pname LIKE '%" + name + "%' ";
	            countSql += "WHERE pname LIKE '%" + name + "%' ";
	        }
	        sql += "LIMIT ?, ?";
	        PreparedStatement stmt = conn.prepareStatement(sql);
	        stmt.setInt(1, (curpage - 1) * pagesize);
	        stmt.setInt(2, pagesize);
	        ResultSet rs = stmt.executeQuery();
	        List<products> list = new ArrayList<>();
	        while(rs.next()) {
	            list.add(new products(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getInt(4)));
	        }
	        PreparedStatement countStmt = conn.prepareStatement(countSql);
	        ResultSet rs2 = countStmt.executeQuery();
	        rs2.next();
	        int total = rs2.getInt(1);
	        request.setAttribute("list", list);
	        request.setAttribute("total", total);
	        request.setAttribute("name", name);
	        stmt.close();
	        countStmt.close();
	        conn.close();
	    } catch (ClassNotFoundException e) {
	        e.printStackTrace();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    request.getRequestDispatcher("li.jsp").forward(request, response);
	}

}

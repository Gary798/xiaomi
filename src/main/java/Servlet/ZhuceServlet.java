package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ZhuceServlet
 */
@WebServlet("/jsp/ZhuceServlet")
public class ZhuceServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String pass=request.getParameter("pass");
		String zhan=request.getParameter("zhan");
		String name=request.getParameter("name");
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xm_phone	?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8","root","123456");
		String spl="select * from users where user_account=?";
		PreparedStatement stmt1 = conn.prepareStatement(spl);
		stmt1.setString(1, zhan);
		ResultSet re = stmt1.executeQuery();
		if(re.next()) {
			request.getRequestDispatcher("Denlu.jsp").forward(request, response);
		}else {
		String sql="insert into users(user_name,user_account,user_password,createtime,user_sex) value(?,?,?,now(),'男')";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, name);
		stmt.setString(2, zhan);
		stmt.setString(3, pass);
		stmt.executeUpdate();
		stmt.close();
		conn.close();
		request.getRequestDispatcher("Denlu.jsp").forward(request, response);
		}
		re.close();
		stmt1.close();
		conn.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

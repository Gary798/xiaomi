package Servlet;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.usersdao;

/**
 * Servlet implementation class XiugaiServlet
 */
@MultipartConfig     
@WebServlet("/jsp/XiugaiServlet")
public class XiugaiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		Part part = request.getPart("photo"); //选择上传的name
        
		String s = part.getHeader("content-disposition");
        String s1= s.split(";")[2].split("=")[1].replaceAll("\"","");
        
        int pos = s1.lastIndexOf('.');
        String ext = s1.substring(pos);
        
        
        
        String root = this.getServletContext().getRealPath("");
        File img = new File(root,"img");
        if (!img.exists()) {
            img.mkdir();
        }
        String  photo = root+"/img/"+ext;
        part.write(photo);
        String zhao = s1;
        
        
        
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String tele=request.getParameter("tele");
		String id=request.getParameter("id");
		
		usersdao usersdao = new usersdao();
		usersdao.Xiugai(zhao, name, sex, tele, id);
        request.getRequestDispatcher("Xiugai.jsp?tupian="+zhao).forward(request, response);
		
	}

}

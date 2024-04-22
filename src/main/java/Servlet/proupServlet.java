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

import dao.productDAO;

@WebServlet("/jsp/proupbtnSer")
@MultipartConfig
public class proupServlet extends HttpServlet {
    productDAO dao = new productDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
        // 获取通过 AJAX 发送的数据
        int proid = Integer.parseInt(request.getParameter("proid"));
        String proname = request.getParameter("proname");
        String prodes = request.getParameter("prodes");
        int prostate = Integer.parseInt(request.getParameter("prostate"));
        String img_url = request.getParameter("proimg");
        Part part = request.getPart("pimg");
        String txname = null;
        if (part != null && part.getSize() > 0) {
        	String dis = part.getHeader("content-disposition");
            String filename = dis.split(";")[2].split("=")[1].replaceAll("\"", "");
            int pos = filename.lastIndexOf(".");
            String ext = filename.substring(pos);// 后缀
            String rndname = UUID.randomUUID().toString().toUpperCase();// 随机名
            String root = this.getServletContext().getRealPath("");// 路径
            File images = new File(root, "images");
            if (!images.exists()) {
                images.mkdirs();
            }
            String photo = root + "/images/" + rndname + ext;
            part.write(photo);
            txname = "../images/"+rndname+ext;
       } else {
    	   txname=img_url;
       }
        
        dao.proupimg(txname,proid );
        dao.proup(proname, prodes, prostate, proid);
        
    }
}

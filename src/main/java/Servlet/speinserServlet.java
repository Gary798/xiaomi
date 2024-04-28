package Servlet;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.pricedao;
import dao.pricomdao;
import dao.pro_spedao;
import dao.spe_detdao;
import entity.products_specification;
@WebServlet("/jsp/insertspe")
public class speinserServlet  extends HttpServlet{
	pricomdao dao = new pricomdao();
	pro_spedao dao2 = new pro_spedao();
	spe_detdao dao3 = new spe_detdao();
	pricedao dao4 = new pricedao();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    request.setCharacterEncoding("utf-8");
		    int proid = Integer.parseInt(request.getParameter("prname"));
	        String phcolor = request.getParameter("phcolor");
	        String ncun = request.getParameter("ncun");
	        String inprice = request.getParameter("inprice");
	        BigDecimal Price =new BigDecimal(inprice);
			
	        dao.insertprospe(proid);
	        List<products_specification> speidlist = dao2.selectproname(proid);
	        for (products_specification spec : speidlist) {
	            if (spec.getSpe_id() % 2 == 0) {
	                dao.insertspedetcun(ncun, spec.getSpe_id());
	            } else {
	                dao.insertspedetcolor(phcolor, spec.getSpe_id());
	            }
	        }
	        dao.insertprice(Price);
	        int speid= dao3.selectspeid();
	        int priid= dao4.selectpriceid();
	        dao.insertpricom(priid, speid);
	}
}

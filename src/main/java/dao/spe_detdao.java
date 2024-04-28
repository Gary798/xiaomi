package dao;

import BaseDAO.BaseDAO;

public class spe_detdao extends BaseDAO{
	public  int selectspeid() {
		 String sql="SELECT sp_de_id FROM specification_detail ORDER BY sp_de_id DESC LIMIT 0,1";
		 Object obj = this.singleObject(sql);
		 return (int) obj;
	}
}

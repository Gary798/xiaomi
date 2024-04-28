package dao;

import BaseDAO.BaseDAO;

public class pricedao extends BaseDAO{
	public  int selectpriceid() {
		 String sql="SELECT pri_id FROM price ORDER BY pri_id DESC LIMIT 0,1";
		 Object obj = this.singleObject(sql);
		 return (int) obj;
	}
}

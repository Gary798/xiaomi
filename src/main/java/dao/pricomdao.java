package dao;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import BaseDAO.BaseDAO;
import BaseDAO.Mapper;
import entity.price_combinations;
import entity.products;

public class pricomdao extends BaseDAO{
	//条件分页
	public Map<String, Object> pricecompage(String name, String cun,String price, int curpage, int pagesize) {
	    String sql = "SELECT \r\n"
	    		+ "    pc.com_id AS '价格组合ID', "
	    		+ "    p.pro_name AS '商品名称', "
	    		+ "    sd.spe_det AS '规格详情', "
	    		+ "    pri.pri_name AS '价格' "
	    		+ "FROM "
	    		+ "    price_combinations pc "
	    		+ "JOIN "
	    		+ "    specification_detail sd ON pc.sp_de_id = sd.sp_de_id "
	    		+ "JOIN "
	    		+ "    products_specification ps ON sd.spe_id = ps.spe_id "
	    		+ "JOIN "
	    		+ "    products p ON ps.pro_id = p.pro_id "
	    		+ "JOIN "
	    		+ "    price pri ON pc.pri_id = pri.pri_id "
	    		+ "WHERE 1=1 ";
	    String sql2 = "SELECT "
	    		+ "    COUNT(*) AS '记录数'"
	    		+ "FROM ("
	    		+ "    SELECT "
	    		+ "        pc.com_id AS '价格组合ID',"
	    		+ "        p.pro_name AS '商品名称',"
	    		+ "        sd.spe_det AS '规格详情',"
	    		+ "        pri.pri_name AS '价格'"
	    		+ "    FROM "
	    		+ "        price_combinations pc "
	    		+ "    JOIN "
	    		+ "        specification_detail sd ON pc.sp_de_id = sd.sp_de_id "
	    		+ "    JOIN "
	    		+ "        products_specification ps ON sd.spe_id = ps.spe_id "
	    		+ "    JOIN "
	    		+ "        products p ON ps.pro_id = p.pro_id "
	    		+ "    JOIN "
	    		+ "        price pri ON pc.pri_id = pri.pri_id "
	    		+ " WHERE 1=1 ";
	    
	    // 添加条件（如果条件不为空）
	    if (name != null && !name.isEmpty()) {
	        sql += "AND pro_name LIKE '%" + name + "%'";
	        sql2 += "AND pro_name LIKE '%" + name + "%'";
	    }
	    if (cun != null && !cun.isEmpty()) {
	        sql += " AND sd.spe_det LIKE '%" + cun + "%'";
	        sql2 += " AND sd.spe_det LIKE '%" + cun + "%'";
	    }
	    if (price != null && !price.isEmpty()) {
	        sql += " AND pri_name = '" + price + "'";
	        sql2 += " AND pri_name = '" + price + "'";
	    }
	    
	    sql += " ORDER BY pc.com_id DESC LIMIT ?, ?";
	    sql2+=" ) AS s";
	    List<price_combinations> list = this.executeQuery(sql, new Mapper<price_combinations>() {
	        @Override
	        public List<price_combinations> map(ResultSet rs) throws SQLException {
	            List<price_combinations> list = new ArrayList<price_combinations>();
	            while (rs.next()) {
	            	price_combinations saying = new price_combinations(
	                        rs.getInt(1),
	                        rs.getString(2),
	                        rs.getString(3),
	                        rs.getString(4)
	                );
	                list.add(saying);
	            }
	            return list;
	        }
	    }, (curpage - 1) * pagesize, pagesize);
	    Object obj = this.singleObject(sql2);
	    Map<String, Object> map = new HashMap<String, Object>();
	    map.put("list", list);
	    map.put("total", obj);
	    return map;
	}
	
	public List<products> selectproname(){
		String sql = "select pro_id,pro_name from products order by pro_id desc";
		return this.executeQuery(sql,new Mapper<products>() {
			@Override
			public List<products> map(ResultSet rs){
				List<products> list = new ArrayList<>();
				try {
					while(rs.next()) {
						products users = new products(
								 rs.getInt(1),
			                        rs.getString(2));
						list.add(users);
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return list;
			}
		});
	}
	
	
			//新增规格
			public int insertprospe(int id) {
				String sql = "INSERT INTO products_specification VALUES "
						+ "(NULL,'颜色',?),"
						+ "(NULL,'版本',?)";
				return this.execute(sql,id,id);
			}
			//新增规格详情
			public int insertspedetcolor(String color,int id) {
				String sql = "INSERT INTO specification_detail "
						+ "VALUES(NULL,?,?)";
				return this.execute(sql,id, color);
			}
			public int insertspedetcun(String cun,int id) {
				String sql = "INSERT INTO specification_detail "
						+ "VALUES(NULL,?,?)";
				return this.execute(sql,id, cun);
			}
			//新增价格
			public int insertprice(BigDecimal price) {
				String sql = "INSERT INTO price VALUES"
						+ "(NULL,?)";
				return this.execute(sql,price);
			}
			//新增价格组合
			public int insertpricom(int priid,int sppeid) {
				String sql = "INSERT INTO price_combinations(pri_id,sp_de_id) VALUES"
						+ "(?,?)";
				return this.execute(sql,priid,sppeid);
			}
			//删除规格
			public int deletespe(int id) {
				String sql = "DELETE FROM price_combinations WHERE com_id=?;";
				return this.execute(sql,id);
			}
	
}

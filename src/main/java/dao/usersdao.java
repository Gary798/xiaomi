package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import BaseDAO.BaseDAO;
import BaseDAO.Mapper;
import entity.images;
import entity.products;

public class usersdao extends BaseDAO{
	public Map<String, Object> selectxiala(int curpage, int pagesize) {
		String sql ="SELECT p.pro_id,p.pro_name AS 商品名称,MIN(pr.pri_name) AS 最低价格 FROM products AS p JOIN products_specification AS ps ON p.pro_id=ps.pro_id JOIN specification_detail AS sd ON ps.spe_id=sd.spe_id JOIN price_combinations AS pc ON sd.sp_de_id=pc.sp_de_id JOIN price AS pr ON pc.pri_id=pr.pri_id WHERE p.cate_id=4 GROUP BY p.pro_id,p.pro_name ORDER BY MIN(pr.pri_name) DESC limit ?,?";
			
	List<products> list = this.executeQuery(sql, new Mapper<products>() {

		@Override
		public List<products> map(ResultSet rs) throws SQLException {
			List<products> list =new ArrayList<>();
			while (rs.next()) {
				products sp=new products(rs.getInt(1),rs.getString(2), rs.getBigDecimal(3));
				list.add(sp);
			}
			return list;
		}
		
	}, (curpage - 1) * pagesize, pagesize);
	
	String sql2 = "SELECT COUNT(*) AS 总条数 FROM (    SELECT        p.pro_name AS 商品名称,        MIN(pr.pri_name) AS 最低价格    FROM        products AS p    JOIN        products_specification AS ps ON p.pro_id = ps.pro_id    JOIN        specification_detail AS sd ON ps.spe_id = sd.spe_id    JOIN       price_combinations AS pc ON sd.sp_de_id = pc.sp_de_id    JOIN        price AS pr ON pc.pri_id = pr.pri_id    WHERE       p.cate_id = 4    GROUP BY       p.pro_name) AS subquery;";
	Object obj = this.singleObject(sql2);
	Map<String, Object>map = new HashMap<>();
	map.put("list", list);
	map.put("total", obj);
	return map;
	}
	public List<products> selectxiala2() {
		String sql ="SELECT p.pro_id,p.pro_name AS 商品名称,MIN(pr.pri_name) AS 最低价格 FROM products AS p JOIN products_specification AS ps ON p.pro_id=ps.pro_id JOIN specification_detail AS sd ON ps.spe_id=sd.spe_id JOIN price_combinations AS pc ON sd.sp_de_id=pc.sp_de_id JOIN price AS pr ON pc.pri_id=pr.pri_id WHERE p.cate_id=4 GROUP BY p.pro_id,p.pro_name ORDER BY MIN(pr.pri_name) DESC";
			
		return this.executeQuery(sql, new Mapper<products>() {

		@Override
		public List<products> map(ResultSet rs) throws SQLException {
			List<products> list =new ArrayList<>();
			while (rs.next()) {
				products sp=new products(rs.getInt(1),rs.getString(2), rs.getBigDecimal(3));
				list.add(sp);
			}
			return list;
		}
		
	});
	}
	public List<images> xialatp(Integer tp){
		String sql ="SELECT i.img_url FROM products p JOIN images i ON p.pro_id = i.pro_id WHERE p.pro_id = "+tp+"";
		return this.executeQuery(sql, new Mapper<images>() {

			@Override
			public List<images> map(ResultSet rs) throws SQLException {
				List<images> list = new ArrayList<>();
				while(rs.next()) {
					images images = new images(
							rs.getString(1));
					list.add(images);
				}
				return list;
			}
		});
	}
	public static void main(String[] args) {
		usersdao dao = new usersdao();
		Map<String, Object> map =dao.selectxiala(1, 2);
		System.out.println(map.get("list"));
		System.out.println(map.get("total"));
		System.out.println(dao.xialatp(1));
		System.out.println(dao.selectxiala2());
	}
}

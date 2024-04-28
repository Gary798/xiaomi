package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import BaseDAO.BaseDAO;
import BaseDAO.Mapper;
import entity.category;
import entity.products;
import entity.users;

public class productDAO extends BaseDAO{
	//条件分页
		public Map<String, Object> queryByPage(String name, String cate, int state, String createTime, int curpage, int pagesize) {
		    String sql = "SELECT DISTINCT p.pro_id,p.pro_name,p.pro_description,p.pro_sales, p.pro_time,p.pro_statue,c.cate_name,i.img_url FROM products p INNER JOIN category c ON p.cate_id = c.cate_id JOIN images i ON p.pro_id = i.pro_id"
		    		+ " WHERE 1=1 ";
		    String sql2 = "SELECT COUNT(*)FROM (SELECT DISTINCT p.pro_id, p.pro_name, p.pro_description, p.pro_sales, p.pro_time, p.pro_statue, c.cate_name, i.img_url FROM products p INNER JOIN category c ON p.cate_id = c.cate_id JOIN images i ON p.pro_id = i.pro_id WHERE 1=1 ";
		    
		    // 添加条件（如果条件不为空）
		    if (name != null && !name.isEmpty()) {
		        sql += "AND pro_name LIKE '%" + name + "%'";
		        sql2 += "AND pro_name LIKE '%" + name + "%'";
		    }
		    if (cate != null && !cate.isEmpty()) {
		        sql += " AND cate_name = '" + cate + "'";
		        sql2 += " AND cate_name = '" + cate + "'";
		    }
		    if (state == 0 || state == 1|| state == 2) { // 使用逻辑或
		        sql += " AND pro_statue = '" + state + "'";
		        sql2 += " AND pro_statue = '" + state + "'";
		    }
		    if (createTime != null && !createTime.isEmpty()) {
		        sql += " AND pro_time LIKE '%" + createTime + "%'";
		        sql2 += " AND pro_time LIKE '%" + createTime + "%'";
		    }
		    
		    sql += " ORDER BY pro_id DESC LIMIT ?, ?";
		    sql2+=") AS c";
		    
		    List<products> list = this.executeQuery(sql, new Mapper<products>() {
		        @Override
		        public List<products> map(ResultSet rs) throws SQLException {
		            List<products> list = new ArrayList<products>();
		            while (rs.next()) {
		            	products saying = new products(
		                        rs.getInt(1),
		                        rs.getString(2),
		                        rs.getString(3),
		                        rs.getInt(4),
		                        rs.getTimestamp(5),
		                        rs.getInt(6),
		                        rs.getString(7),
		                        rs.getString(8)
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
		//删除
		public int deleteprospe(int id) {
			String sql = "DELETE FROM products_specification WHERE pro_id=?;";
			return this.execute(sql,id);
		}
		public int deleteproimg(int id) {
			String sql = "DELETE FROM images WHERE pro_id=?;";
			return this.execute(sql,id);
		}
		public int deleteproadv(int id) {
			String sql = "DELETE FROM advertisements WHERE pro_id=?;";
			return this.execute(sql,id);
		}
		public int deletepro(int id) {
			String sql = "DELETE FROM products WHERE pro_id=?;";
			return this.execute(sql,id);
		}
		
		//修改商品信息
		public int proup(String pname,String prodes,int prostate,int id) {
			String sql = "UPDATE products SET pro_name=?,pro_description=?,pro_statue=? WHERE pro_id=?";
			return this.execute(sql,pname,prodes,prostate,id);
		}
		//修改商品图片
		public int proupimg(String img_url,int id) {
			String sql = "UPDATE images SET img_url=? WHERE pro_id=?";
			return this.execute(sql,img_url,id);
		}
		//新增
		public int insertpro(String name, String pro_des,int cate_id,int pro_statue) {
			String sql = "INSERT INTO products (pro_name, pro_description, cate_id, pro_sales, pro_time, pro_statue)"
					+ "VALUES (?, ?, ?, 0, now(), ?);";
			return this.execute(sql, name,pro_des,cate_id,pro_statue);
		}
		//新增图片
		public int insertimg(int pro_id) {
			 String sql = "INSERT INTO images VALUES"
			 		+ "(NULL,'../img/ayou.png',?)";
			 return this.execute(sql, pro_id);
		 }
		//查询商品id
		public Object selectproid(){
			String sql = "select pro_id from products order by pro_id desc";
			Object obj = this.singleObject(sql);
			return obj;
		}
		//新增详情图片
				public int insertadvimg(int pro_id) {
					 String sql = "INSERT INTO advertisements (ad_url, ad_display, pro_id)VALUES\r\n"
					 		+ "('../img/ayou.png', 1, ?),";
					 return this.execute(sql, pro_id);
				 }
				//修改商品图片
				public int proupadvimg(String img_url,int id) {
					String sql = "UPDATE advertisements SET ad_url=? WHERE pro_id=?";
					return this.execute(sql,img_url,id);
				}
}

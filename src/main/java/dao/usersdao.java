package dao;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import entity.advertisements;
import entity.images;
import entity.products;
import entity.products_specification;
import entity.shopping_cart;
import BaseDAO.BaseDAO;
import BaseDAO.Mapper;
import entity.users;
	

public class usersdao extends BaseDAO{
	/**
	 * 分页查询 
	 * @param curpage
	 * @param pagesize
	 * @return
	 */
	//条件分页
	public Map<String, Object> adminqueryByPage(String name, String account, int state, String createTime, int curpage, int pagesize) {
	    String sql = "SELECT * FROM users WHERE 1=1 ";
	    String sql2 = "SELECT COUNT(*) AS c FROM users WHERE 1=1 ";
	    
	    // 添加条件（如果条件不为空）
	    if (name != null && !name.isEmpty()) {
	        sql += "AND user_name LIKE '%" + name + "%'";
	        sql2 += "AND user_name LIKE '%" + name + "%'";
	    }
	    if (account != null && !account.isEmpty()) {
	        sql += " AND user_account = '" + account + "'";
	        sql2 += " AND user_account = '" + account + "'";
	    }
	    if (state == 0 || state == 1) { // 使用逻辑或
	        sql += " AND user_state = '" + state + "'";
	        sql2 += " AND user_state = '" + state + "'";
	    }
	    if (createTime != null && !createTime.isEmpty()) {
	        sql += " AND createtime LIKE '%" + createTime + "%'";
	        sql2 += " AND createtime LIKE '%" + createTime + "%'";
	    }
	    
	    sql += " ORDER BY user_id DESC LIMIT ?, ?";
	    
	    List<users> list = this.executeQuery(sql, new Mapper<users>() {
	        @Override
	        public List<users> map(ResultSet rs) throws SQLException {
	            List<users> list = new ArrayList<users>();
	            while (rs.next()) {
	                users saying = new users(
	                        rs.getInt(1),
	                        rs.getString(2),
	                        rs.getString(3),
	                        rs.getString(4),
	                        rs.getString(5),
	                        rs.getString(6),
	                        rs.getString(7),
	                        rs.getInt(8),
	                        rs.getInt(9),
	                        rs.getInt(10),
	                        rs.getTimestamp(11)
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
	//新增
	public int admininsertuser(String name, String sex,String phone,int status,String account,String password,int isadmin) {
		String sql = "INSERT INTO users (user_name, user_sex, user_account, user_password, user_tele, img_url, user_integral, user_state, user_identity, createtime)  VALUES"
				+ "(?, ?, ?, ?, ?, '/images/zhangsan.jpg', 0, ?, ?, NOW())";
		return this.execute(sql, name,sex,account,password,phone,status,isadmin);
	}
	//删除
	public int admindeleteuser(int id) {
		String sql = "DELETE FROM users WHERE user_id=?;";
		return this.execute(sql,id);
	}
	//修改
	public int adminupdateuser(String upname,String upphone,String upgender, int upstatus,int isadmin,int id) {
		String sql = "UPDATE users SET user_name=?,user_tele=?,user_sex=?,user_state=?,user_identity=? WHERE user_id=?";
		return this.execute(sql,upname,upphone,upgender,upstatus,isadmin,id);
	}

	public List<users> executeQuery(String sname,String spass){
		String sql = "select * from users where user_account=? and user_password=?";
		return this.executeQuery(sql,new Mapper<users>() {
			@Override
			public List<users> map(ResultSet rs){
				List<users> list = new ArrayList<>();
				try {
					while(rs.next()) {
						users users = new users(
								rs.getInt(1),
								rs.getString(2),
								rs.getString(3),
								rs.getString(4),
								rs.getString(5),
								rs.getString(6),
								rs.getString(7),
								rs.getInt(8),
								rs.getInt(9),
								rs.getInt(10),
								rs.getTimestamp(11));
						list.add(users);
					}
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return list;
			}
		},sname,spass);
	}
	
	public int Xiugai(String tupian,String name,String sex,String tele,String id) {
		String sql = "UPDATE users SET img_url=?,user_name=?,user_sex=?,user_tele=? WHERE user_id=?";
		return this.execute(sql, tupian,name,sex,tele,id);
	}
	public int MimaXiugai(String id,String pass) {
		String sql = "UPDATE users SET user_password=? WHERE user_id=?";
		return this.execute(sql, pass,id);
	}
	public Map<String, Object> queryByPage(int curpage, int pagesize){
		String sql = "select * from users order by user_id desc "
				+ "limit ?,?";
		List<users> list = this.executeQuery(sql, new Mapper<users>() {
			@Override
			public List<users> map(ResultSet rs) throws SQLException {
				List<users> list = new ArrayList<>();
				while(rs.next()) {
					users saying =new users(
							rs.getInt(1),
	                        rs.getString(2),
	                        rs.getString(3),
	                        rs.getString(4),
	                        rs.getString(5),
	                        rs.getString(6),
	                        rs.getString(7),
	                        rs.getInt(8),
	                        rs.getInt(9),
	                        rs.getInt(10),
	                        rs.getTimestamp(11)
							);
					list.add(saying);
				}
				return list;
			}
		}, (curpage - 1) * pagesize, pagesize);
		
		String sql2 = "select count(*) c from users";
		Object obj = this.singleObject(sql2);
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("total", obj);
		return map;
	}
	//条件分页
	public Map<String, Object> queryByPage(String name, String account, int state, String createTime, int curpage, int pagesize) {
	    String sql = "SELECT * FROM users WHERE 1=1 ";
	    String sql2 = "SELECT COUNT(*) AS c FROM users WHERE 1=1 ";
	    
	    // 添加条件（如果条件不为空）
	    if (name != null && !name.isEmpty()) {
	        sql += "AND user_name LIKE '%" + name + "%'";
	        sql2 += "AND user_name LIKE '%" + name + "%'";
	    }
	    if (account != null && !account.isEmpty()) {
	        sql += " AND user_account = '" + account + "'";
	        sql2 += " AND user_account = '" + account + "'";
	    }
	    if (state == 0 || state == 1) { // 使用逻辑或
	        sql += " AND user_state = '" + state + "'";
	        sql2 += " AND user_state = '" + state + "'";
	    }
	    if (createTime != null && !createTime.isEmpty()) {
	        sql += " AND createtime LIKE '%" + createTime + "%'";
	        sql2 += " AND createtime LIKE '%" + createTime + "%'";
	    }
	    
	    sql += " ORDER BY user_id DESC LIMIT ?, ?";
	    
	    List<users> list = this.executeQuery(sql, new Mapper<users>() {
	        @Override
	        public List<users> map(ResultSet rs) throws SQLException {
	            List<users> list = new ArrayList<>();
	            while (rs.next()) {
	                users saying = new users(
	                        rs.getInt(1),
	                        rs.getString(2),
	                        rs.getString(3),
	                        rs.getString(4),
	                        rs.getString(5),
	                        rs.getString(6),
	                        rs.getString(7),
	                        rs.getInt(8),
	                        rs.getInt(9),
	                        rs.getInt(10),
	                        rs.getTimestamp(11)
	                );
	                list.add(saying);
	            }
	            return list;
	        }
	    }, (curpage - 1) * pagesize, pagesize);
	    
//	    System.out.println(sql);
//	    System.out.println(sql2);
	    
	    Object obj = this.singleObject(sql2);
	    
	    Map<String, Object> map = new HashMap<>();
	    map.put("list", list);
	    map.put("total", obj);
	    
	    return map;
	}

	public int insertuser(String name, String sex,String phone,int status,String account,String password,int isadmin) {
		String sql = "INSERT INTO users (user_name, user_sex, user_account, user_password, user_tele, img_url, user_integral, user_state, user_identity, createtime)  VALUES"
				+ "(?, ?, ?, ?, ?, '/images/zhangsan.jpg', 0, ?, ?, NOW())";
		return this.execute(sql, name,sex,account,password,phone,status,isadmin);
	}
	
	public int deleteuser(int id) {
		String sql = "DELETE FROM users WHERE user_id=?;";
		return this.execute(sql,id);
	}
	
	public int updateuser(String upname,String upphone,String upgender, int upstatus,int isadmin,int id) {
		String sql = "UPDATE users SET user_name=?,user_tele=?,user_sex=?,user_state=?,user_identity=? WHERE user_id=?";
		return this.execute(sql,upname,upphone,upgender,upstatus,isadmin,id);
	}
		
		
		
	//查询并且分页
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
	//查询类别为4最低价格
	public List<products> selectxiala2(Integer s,Integer l) {
		String sql ="SELECT p.pro_id,p.pro_name AS 商品名称,p.pro_description,MIN(pr.pri_name) AS 最低价格 FROM products AS p JOIN products_specification AS ps ON p.pro_id=ps.pro_id JOIN specification_detail AS sd ON ps.spe_id=sd.spe_id JOIN price_combinations AS pc ON sd.sp_de_id=pc.sp_de_id JOIN price AS pr ON pc.pri_id=pr.pri_id WHERE p.cate_id=4 GROUP BY p.pro_id,p.pro_name ORDER BY MIN(pr.pri_name) DESC limit ?,?";
			
		return this.executeQuery(sql, new Mapper<products>() {

		@Override
		public List<products> map(ResultSet rs) throws SQLException {
			List<products> list =new ArrayList<>();
			while (rs.next()) {
				products sp=new products(rs.getInt(1),rs.getString(2),rs.getString(3), rs.getBigDecimal(4));
				list.add(sp);
			}
			return list;
		}
		
	},s,l);
	}
	//查询类别为1最低价格
		public List<products> selectxiala1(Integer s,Integer l) {
			String sql ="SELECT p.pro_id,p.pro_name AS 商品名称,p.pro_description,MIN(pr.pri_name) AS 最低价格 FROM products AS p JOIN products_specification AS ps ON p.pro_id=ps.pro_id JOIN specification_detail AS sd ON ps.spe_id=sd.spe_id JOIN price_combinations AS pc ON sd.sp_de_id=pc.sp_de_id JOIN price AS pr ON pc.pri_id=pr.pri_id WHERE p.cate_id=1 GROUP BY p.pro_id,p.pro_name ORDER BY MIN(pr.pri_name) DESC limit ?,?";
				
			return this.executeQuery(sql, new Mapper<products>() {

			@Override
			public List<products> map(ResultSet rs) throws SQLException {
				List<products> list =new ArrayList<>();
				while (rs.next()) {
					products sp=new products(rs.getInt(1),rs.getString(2),rs.getString(3), rs.getBigDecimal(4));
					list.add(sp);
				}
				return list;
			}
			
		},s,l);
	}
	public List<shopping_cart> Gwcsl(Integer yhid) {
		String sql = "SELECT COUNT(*) AS total_items FROM shopping_cart WHERE user_id=?";
		return this.executeQuery(sql, new Mapper<shopping_cart>() {

			@Override
			public List<shopping_cart> map(ResultSet rs) throws SQLException {
				List<shopping_cart> list = new ArrayList<shopping_cart>();
				while (rs.next()) {
					shopping_cart sc = new shopping_cart(rs.getInt(1));
					list.add(sc);
				}
				return list;
			}
		},yhid);
	}
	//主页展示8条数据根据商品上架时间
		public List<products> selecsj(Integer s,Integer l) {
			String sql ="SELECT p.pro_id,\n"
					+ "       p.pro_name AS 商品名称,\n"
					+ "       p.pro_description,\n"
					+ "       MIN(pr.pri_name) AS 最低价格\n"
					+ "FROM products p\n"
					+ "JOIN products_specification ps ON p.pro_id = ps.pro_id\n"
					+ "JOIN specification_detail sd ON ps.spe_id = sd.spe_id\n"
					+ "JOIN price_combinations pc ON sd.sp_de_id = pc.sp_de_id\n"
					+ "JOIN price pr ON pc.pri_id = pr.pri_id\n"
					+ "GROUP BY p.pro_id, p.pro_name, p.pro_description\n"
					+ "ORDER BY p.pro_time DESC LIMIT ?,?;";
				
			return this.executeQuery(sql, new Mapper<products>() {

			@Override
			public List<products> map(ResultSet rs) throws SQLException {
				List<products> list =new ArrayList<>();
				while (rs.next()) {
					products sp=new products(rs.getInt(1),rs.getString(2),rs.getString(3), rs.getBigDecimal(4));
					list.add(sp);
				}
				return list;
			}
			
		},s,l);
	}
		
	//主页展示8条数据根据商品热度的高的
		public List<products> selecrm(Integer s,Integer l) {
			String sql ="SELECT p.pro_id,\n"
					+ "       p.pro_name AS 商品名称,\n"
					+ "       p.pro_description,\n"
					+ "       MIN(pr.pri_name) AS 最低价格\n"
					+ "FROM products p\n"
					+ "JOIN products_specification ps ON p.pro_id = ps.pro_id\n"
					+ "JOIN specification_detail sd ON ps.spe_id = sd.spe_id\n"
					+ "JOIN price_combinations pc ON sd.sp_de_id = pc.sp_de_id\n"
					+ "JOIN price pr ON pc.pri_id = pr.pri_id\n"
					+ "GROUP BY p.pro_id, p.pro_name, p.pro_description\n"
					+ "ORDER BY p.pro_sales DESC LIMIT ?,?;";
				
			return this.executeQuery(sql, new Mapper<products>() {

			@Override
			public List<products> map(ResultSet rs) throws SQLException {
				List<products> list =new ArrayList<>();
				while (rs.next()) {
					products sp=new products(rs.getInt(1),rs.getString(2),rs.getString(3), rs.getBigDecimal(4));
					list.add(sp);
				}
				return list;
			}
			
		},s,l);
	}
	
	//查询商品图片
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
	//查询商品所有信息
	public List<products> selectProducts(Integer id) {
		String sql="SELECT * FROM products where pro_id="+id+"";
		return this.executeQuery(sql, new Mapper<products>() {

			@Override
			public List<products> map(ResultSet rs) throws SQLException {
				List<products> list = new ArrayList<>();
				while (rs.next()) {
				products sp = new products(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4));
				list.add(sp);
				}
				return list;
			}
		});
	}
	//详情图片查询
		public List<advertisements> selectXQimg(Integer id) {
			String sql="SELECT ad_url FROM advertisements WHERE pro_id="+id+";";
			return this.executeQuery(sql, new Mapper<advertisements>() {

				@Override
				public List<advertisements> map(ResultSet rs) throws SQLException {
					List<advertisements> list = new ArrayList<>();
					while (rs.next()) {
					advertisements img = new advertisements(rs.getString(1));
					list.add(img);
					}
					return list;
				}
			});
		}
	//查询商品存储
	public List<products> selectGg(Integer id) {
		String sql = "SELECT p.pro_id, ps.spe_id\n"
				+ "FROM products p\n"
				+ "INNER JOIN products_specification ps ON p.pro_id = ps.pro_id\n"
				+ "WHERE ps.spe_name = '版本' AND p.`pro_id`="+id+";";
		return this.executeQuery(sql, new Mapper<products>() {

			@Override
			public List<products> map(ResultSet rs) throws SQLException {
				List<products> list = new ArrayList<>();
				while (rs.next()) {
				products sp = new products(rs.getInt(1),rs.getInt(2));
				list.add(sp);
				}
				return list;
			}
		});
	}
	//修改
	public int UPnumber(Integer sl,Integer gwid) {
		String sql="UPDATE shopping_cart SET car_count= ? WHERE car_id= ?;";
		return this.execute(sql, sl,gwid);
	}
	//删除
		public int Delelenumber(Integer sl) {
			String sql="DELETE FROM shopping_cart WHERE car_id = ?;";
			return this.execute(sql, sl);
		}
	
	//新增
		public int Insertgwc(Integer pro_id, String img_url, String pro_name, BigDecimal car_jg, Integer user_id) {
		    // 先检查购物车中是否已经存在相同的商品
		    String checkSql = "SELECT * FROM shopping_cart WHERE pro_id = ? AND user_id = ?";
		    List<Map<String, Object>> result = this.executeQuery(checkSql, new Mapper<Map<String, Object>>() {
		        @Override
		        public List<Map<String, Object>> map(ResultSet rs) throws SQLException {
		            List<Map<String, Object>> list = new ArrayList<>();
		            while (rs.next()) {
		                Map<String, Object> row = new HashMap<>();
		                row.put("car_id", rs.getInt("car_id"));
		                row.put("pro_id", rs.getInt("pro_id"));
		                row.put("img_url", rs.getString("img_url"));
		                row.put("pro_name", rs.getString("pro_name"));
		                row.put("car_jg", rs.getBigDecimal("car_jg"));
		                row.put("car_count", rs.getInt("car_count"));
		                row.put("user_id", rs.getInt("user_id"));
		                list.add(row);
		            }
		            return list;
		        }
		    }, pro_id, user_id);

		    if (!result.isEmpty()) {
		        // 遍历结果集，检查是否存在相同的商品
		        for (Map<String, Object> row : result) {
		            if (row.get("img_url").equals(img_url) &&
		                row.get("pro_name").equals(pro_name) &&
		                ((BigDecimal)row.get("car_jg")).compareTo(car_jg) == 0) {
		                // 如果购物车中已经存在相同的商品，则执行更新操作将数量加一，但是数量不能超过50
		                Integer car_count = (Integer) row.get("car_count");
		                if (car_count < 50) {
		                    Integer car_id = (Integer) row.get("car_id");
		                    String updateSql = "UPDATE shopping_cart SET car_count = ? WHERE car_id = ?";
		                    return this.execute(updateSql, car_count + 1, car_id);
		                } else {
		                    
		                    return 0;
		                }
		            }
		        }
		    }
		    
		    // 如果购物车中不存在相同的商品，则执行插入操作插入新的记录，但是数量不能超过50
		    String insertSql = "INSERT INTO shopping_cart (pro_id, img_url, pro_name, car_jg, car_count, user_id, car_time) " +
		            "VALUES (?, ?, ?, ?, ?, ?, NOW())";
		    return this.execute(insertSql, pro_id, img_url, pro_name, car_jg, 1, user_id);
		}



	
	//查询商品颜色
	public List<products> selectCo(Integer id) {
		String sql = "SELECT p.pro_id, ps.spe_id\n"
				+ "FROM products p\n"
				+ "INNER JOIN products_specification ps ON p.pro_id = ps.pro_id\n"
				+ "WHERE ps.spe_name = '颜色' AND p.`pro_id`="+id+";";
		return this.executeQuery(sql, new Mapper<products>() {

			@Override
			public List<products> map(ResultSet rs) throws SQLException {
				List<products> list = new ArrayList<>();
				while (rs.next()) {
				products sp = new products(rs.getInt(1),rs.getInt(2));
				list.add(sp);
				}
				return list;
			}
		});
	}
	
	//查询商品名字
	public List<products> selectPName(Integer id) {
		String sql = "SELECT pro_name FROM products WHERE pro_id="+id+";";
		return this.executeQuery(sql, new Mapper<products>() {

			@Override
			public List<products> map(ResultSet rs) throws SQLException {
				List<products> list = new ArrayList<>();
				while (rs.next()) {
				products sp = new products(rs.getString(1));
				list.add(sp);
				}
				return list;
			}
		});
	}
	//根据用户id查询购物车表
	//查询商品名字
		public List<shopping_cart> selectgwc(Integer id) {
			String sql = "SELECT * FROM shopping_cart WHERE user_id = "+id+";";
			return this.executeQuery(sql, new Mapper<shopping_cart>() {
				@Override
				public List<shopping_cart> map(ResultSet rs) throws SQLException {
					List<shopping_cart> list = new ArrayList<>();
					while (rs.next()) {
						shopping_cart sp = new shopping_cart(rs.getInt(1),rs.getInt(2),
								rs.getString(3),
								rs.getString(4),
								rs.getBigDecimal(5),
								rs.getInt(6),
								rs.getInt(7),
								rs.getTimestamp(8)
							);
					list.add(sp);
					}
					return list;
				}
			});
		}
	//查询商品价格
	public List<products> selectSxjg(String name,Integer spID,String bb) {
		String sql = "SELECT pr.pri_name\n"
				+ "FROM products p\n"
				+ "JOIN products_specification ps ON p.pro_id = ps.pro_id\n"
				+ "JOIN specification_detail sd ON ps.spe_id = sd.spe_id\n"
				+ "JOIN price_combinations pc ON sd.sp_de_id = pc.sp_de_id\n"
				+ "JOIN price pr ON pc.pri_id = pr.pri_id\n"
				+ "WHERE p.pro_name = '"+name+"'\n"
				+ "AND p.pro_id = "+spID+"\n"
				+ "AND sd.spe_det = '"+bb+"';\n";
		return this.executeQuery(sql, new Mapper<products>() {

			@Override
			public List<products> map(ResultSet rs) throws SQLException {
				List<products> list = new ArrayList<>();
				while (rs.next()) {
				products sp = new products(rs.getBigDecimal(1));
				list.add(sp);
				}
				return list;
			}
		});
	}
	//查询商品对应的版本
	public List<products_specification> selecteChuCun(Integer pro_id, Integer spe_id) {
	    String sql ="SELECT ps.spe_id, ps.spe_name, sd.spe_det\n"
	    		+ "FROM products_specification ps\n"
	    		+ "INNER JOIN specification_detail sd ON ps.spe_id = sd.spe_id\n"
	    		+ "WHERE ps.pro_id = "+pro_id+" AND sd.spe_id = "+spe_id+";";
	    return this.executeQuery(sql, new Mapper<products_specification>() {

	        @Override
	        public List<products_specification> map(ResultSet rs) throws SQLException {
	            List<products_specification> list = new ArrayList<>();
	            while (rs.next()) {
	                products_specification Pr_sp = new products_specification(
	                        rs.getInt(1), // spe_id
	                        rs.getString(2), // spe_name
	                        rs.getString(3) // spe_det
	                );
	                list.add(Pr_sp);
	            }
	            return list;
	        }
	    });
	}
	
	public static void main(String[] args) {
		usersdao dao = new usersdao();
		System.out.println(dao.selectxiala2(0, 6));
	}
}

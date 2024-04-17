package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import BaseDAO.BaseDAO;
import BaseDAO.Mapper;
import entity.users;


public class usersdao extends BaseDAO{
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
}

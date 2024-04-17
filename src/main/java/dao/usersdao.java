package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
}

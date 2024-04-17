package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BaseDAO.BaseDAO;
import BaseDAO.Mapper;
import entity.category;

public class categoryDAO extends BaseDAO{
	public List<category> queryall(){
		String sql = "select * from category";
		List<category> list = this.executeQuery(sql, new Mapper<category>() {
			public List<category> map(ResultSet rs) throws SQLException {
				List<category> list = new ArrayList(); 
				while (rs.next()) {
					list.add(new category(rs.getInt("cate_id"),rs.getString("cate_name")));
				}
				return list;
			}
		});
		return list;
	}
}

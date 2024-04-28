package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BaseDAO.BaseDAO;
import BaseDAO.Mapper;
import entity.products_specification;

public class pro_spedao extends BaseDAO{
	public List< products_specification> selectproname(int pro_id){
		String sql = "SELECT * FROM products_specification WHERE pro_id="+pro_id;
		return this.executeQuery(sql,new Mapper< products_specification>() {
			@Override
			public List< products_specification> map(ResultSet rs){
				List<products_specification> list = new ArrayList<>();
				try {
					while(rs.next()) {
						products_specification users = new  products_specification(
								    rs.getInt(1),
			                        rs.getString(2),
			                        rs.getInt(3)   
								 );
						list.add(users);
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return list;
			}
		});
	}
}

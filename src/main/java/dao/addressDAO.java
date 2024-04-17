package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BaseDAO.BaseDAO;
import BaseDAO.Mapper;
import entity.address;
import entity.users;

public class addressDAO extends BaseDAO{
	public int selectDizhi(String name,String tele,String dizhi) {
		String sql = "INSERT INTO address VALUES(null,?,?,?)";
		return this.execute(sql, name,tele,dizhi);
	}
	public List<address> executeDizhi(){
		String sql = "select * from address";
		return this.executeQuery(sql,new Mapper<address>() {
			@Override
			public List<address> map(ResultSet rs){
				List<address> list = new ArrayList<>();
				try {
					while(rs.next()) {
						address address = new address(
								rs.getString(1),
								rs.getString(2),
								rs.getString(3),
								rs.getString(4));
						list.add(address);
					}
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return list;
			}
		});
	}
	public int shanchu(String id) {
		String sql = "DELETE FROM address WHERE add_id=?";
		return this.execute(sql, id);
	}
}

package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mysql.cj.exceptions.RSAException;

import BaseDAO.BaseDAO;
import BaseDAO.Mapper;
import entity.orders;
import entity.orders_details;

public class orders_detailsDAO extends BaseDAO{	
	
	public List<Map<String, Object>> selectiid(Integer id){
		String sql = "SELECT"
				+ "    CASE"
				+ "        WHEN o.or_state = 1 THEN '待支付' "
				+ "        WHEN o.or_state = 2 THEN '待收货' "
				+ "        WHEN o.or_state = 3 THEN '已完成' "
				+ "        ELSE '未知状态'"
				+ "    END AS order_status,"
				+ "    o.or_time,"
				+ "    u.user_name,"
				+ "    o.or_id"
				+ " 	FROM"
				+ "    orders o"
				+ " 	JOIN"
				+ "    users u ON o.user_id = u.user_id"
				+ " 	WHERE"
				+ "    o.user_id = ?";
		List<orders> orderes = this.executeQuery(sql,new Mapper<orders>() {
			@Override
			public List<orders> map(ResultSet rs) throws SQLException {
				List<orders> list = new ArrayList<>();
				while(rs.next()) {
					orders orders = new orders(
							rs.getString(1),
							rs.getTimestamp(2),
							rs.getString(3),
							rs.getInt(4)
							);
					list.add(orders);
				}
				return list;
			}
			
		},id);
		
		System.out.println(orderes);
		
		List<Map<String, Object>> dMaps = new ArrayList<>();
		for(orders o: orderes) {
			Map<String, Object> map = new HashMap<>();
			map.put("order", o);
			map.put("details", this.selectXiangqin(o.getOr_id()));
			dMaps.add(map);
		}
		
		return dMaps;
	}
	
	public List<Map<String, Object>> selectxianqin(Integer id){
		String sql = "SELECT"
				+ "    CASE"
				+ "        WHEN o.or_state = 1 THEN '待支付' "
				+ "        WHEN o.or_state = 2 THEN '待收货' "
				+ "        WHEN o.or_state = 3 THEN '已完成' "
				+ "        ELSE '未知状态'"
				+ "    END AS order_status,"
				+ "     o.or_number,"
				+ "    o.or_address,"
				+ "    u.user_name,"
				+ "    o.or_id"
				+ " 	FROM"
				+ "    orders o"
				+ " 	JOIN"
				+ "    users u ON o.user_id = u.user_id"
				+ " 	WHERE"
				+ "    o.or_id = ?";
		List<orders> orderes = this.executeQuery(sql,new Mapper<orders>() {
			@Override
			public List<orders> map(ResultSet rs) throws SQLException {
				List<orders> list = new ArrayList<>();
				while(rs.next()) {
					orders orders = new orders(
							rs.getString(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							rs.getInt(5)
							);
					list.add(orders);
				}
				return list;
			}
			
		},id);
		
		System.out.println(orderes);
		
		List<Map<String, Object>> dMaps = new ArrayList<>();
		for(orders o: orderes) {
			Map<String, Object> map = new HashMap<>();
			map.put("order", o);
			map.put("details", this.selectXiangqin(o.getOr_id()));
			dMaps.add(map);
		}
		
		return dMaps;
	}
	
	
	
	public List<orders_details> selectXiangqin(Integer id){
		String sql ="SELECT img_url,pro_name,car_jg,car_count,car_zon FROM orders_details WHERE or_id=?";
			return this.executeQuery(sql,new Mapper<orders_details>() {
				@Override
				public List<orders_details> map(ResultSet rs) {
					List<orders_details> list = new ArrayList<>();
					try {
						while (rs.next()) {
							orders_details orders_details = new orders_details(
									rs.getString(1),
									rs.getString(2),
									rs.getInt(3),
									rs.getInt(4),
									rs.getDouble(5)
									);
							list.add(orders_details);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return list;
				}
			},id);
	}
	
	
	public int shanchu1(Integer id) {
		String sql ="DELETE FROM orders_details WHERE or_id=?";
		return this.execute(sql, id);
	}
	public int shanchu2(Integer id) {
		String sql ="DELETE FROM orders WHERE or_id=?";
		return this.execute(sql, id);
	}
}

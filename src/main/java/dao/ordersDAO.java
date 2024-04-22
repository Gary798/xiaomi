package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BaseDAO.BaseDAO;
import BaseDAO.Mapper;
import entity.orders;

public class ordersDAO extends BaseDAO{
	public List<orders> selectDindan(Integer id){
		String sql = "SELECT"
				+ "    orders.or_id,"
				+ "    orders.or_name,"
				+ "    orders.or_number,"
				+ "    orders.or_address,"
				+ "    CASE"
				+ "        WHEN orders.or_state = 1 THEN '待支付'"
				+ "        WHEN orders.or_state = 2 THEN '待收货'"
				+ "        WHEN orders.or_state = 3 THEN '已完成'"
				+ "        ELSE '未知状态'"
				+ "    END AS or_state_description,"
				+ "    orders.or_time,"
				+ "    shopping_cart.car_id,"
				+ "    shopping_cart.pro_id,"
				+ "    shopping_cart.img_url,"
				+ "    shopping_cart.pro_name,"
				+ "    shopping_cart.car_jg,"
				+ "    shopping_cart.car_count"
				+ " FROM"
				+ "    users"
				+ " JOIN"
				+ "    orders ON users.user_id = orders.user_id"
				+ " JOIN"
				+ "    shopping_cart ON users.user_id = shopping_cart.user_id"
				+ " WHERE"
				+ "    (orders.or_state = 1 OR orders.or_state = 2 OR orders.or_state = 3) AND users.user_id = ?";
			return this.executeQuery(sql,new Mapper<orders>() {
				@Override
				public List<orders> map(ResultSet rs) {
					List<orders> list = new ArrayList<>();
					try {
						while (rs.next()) {
							orders orders = new orders(
									rs.getInt(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getTimestamp(6),
									rs.getInt(7),
									rs.getInt(8),
									rs.getString(9),
									rs.getString(10),
									rs.getBigDecimal(11),
									rs.getInt(12)
									);
							list.add(orders);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return list;
				}
			},id);
	}
	public int insrtorders(Integer id,String name,String tele,String dizhi) {
		String sql = "INSERT INTO orders (user_id,or_time, or_name,or_number,or_address,or_note) VALUES (?,NOW(),?,?,?, '尽快发货')";
		return this.execute(sql, id,name,tele,dizhi);
	}
}

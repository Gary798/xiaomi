package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BaseDAO.BaseDAO;
import BaseDAO.Mapper;
import entity.orders;

public class ordersDAO extends BaseDAO{
	public List<orders> selectDindan(){
		String sql = "SELECT or_id,user_id, CASE WHEN or_state = 1 THEN '待支付'WHEN or_state = 2 THEN '待收货'WHEN or_state = 3 THEN '已完成'ELSE '未知状态'\r\n"
				+ "END AS or_state,or_time,or_name,or_number,or_address,or_note FROM orders;";
			return this.executeQuery(sql,new Mapper<orders>() {
				@Override
				public List<orders> map(ResultSet rs) {
					List<orders> list = new ArrayList<>();
					try {
						while (rs.next()) {
							orders orders = new orders(
									rs.getInt(1),
									rs.getInt(2),
									rs.getString(3),
									rs.getTimestamp(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7),
									rs.getString(8)
									);
							list.add(orders);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return list;
				}
			});
	}
}

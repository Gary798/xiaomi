package dao;

import java.math.BigInteger;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BaseDAO.BaseDAO;
import BaseDAO.Mapper;
import entity.orders;


public class ordersDAO extends BaseDAO{	
	public List<orders> selectDindan1(Integer id){
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
				+ " FROM"
				+ "    orders o"
				+ " JOIN"
				+ "    users u ON o.user_id = u.user_id"
				+ " WHERE"
				+ "    o.user_id = ?;";
			return this.executeQuery(sql,new Mapper<orders>() {
				@Override
				public List<orders> map(ResultSet rs) {
					List<orders> list = new ArrayList<>();
					try {
						while (rs.next()) {
							orders orders = new orders(
									
									rs.getString(1),
									rs.getTimestamp(2),
									rs.getString(3),
									rs.getInt(4)
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
	
	public List<orders> selectDindan2(Integer id){
		String sql = "SELECT sc.img_url, sc.pro_name, sc.car_count, sc.car_jg"
				+ " FROM shopping_cart sc"
				+ " JOIN orders o ON sc.user_id = o.user_id"
				+ " WHERE o.or_id = ?;";
			return this.executeQuery(sql,new Mapper<orders>() {
				@Override
				public List<orders> map(ResultSet rs) {
					List<orders> list = new ArrayList<>();
					try {
						while (rs.next()) {
							orders orders = new orders(
									rs.getString(1),
									rs.getString(2),
									rs.getInt(3),
									rs.getBigDecimal(4)
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
    public int insertOrder(Integer id, String name, String tele, String dizhi) {
        
            // 执行插入订单的SQL语句
            String sql = "INSERT INTO orders (user_id, or_name, or_number, or_address, or_note, or_time) VALUES (?, ?, ?, ?, '尽快发货', NOW())";
            // 插入订单
           return this.execute(sql, id, name, tele, dizhi);
    }
    
    public List<Integer> uidselect(Integer id) {
		String sql ="SELECT MAX(or_id) FROM orders WHERE user_id=?";
		return this.executeQuery(sql,new Mapper<Integer>() {
			@Override
			public List<Integer> map(ResultSet rs) {
				List<Integer> list = new ArrayList<>();
				try {
					if (rs.next()) {
						list.add(rs.getInt(1));
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return list;
			}
		},id);
	}
    
	public int intsorders(Integer uid,String img,String prname,String jg,String sl,Integer zon) {
		String sql = "INSERT INTO orders_details VALUES (NULL,?,?,?,?,?,?,?)";
		return this.execute(sql,uid,uidselect(uid).get(0),img,prname,jg,sl,zon);
	}
	//修改成已支付状态
	public int Xiugaidindan(Integer id) {
		String sql ="UPDATE orders SET or_state=2 WHERE or_id=?";
		return this.execute(sql, id);
	}
	//修改成已收货状态
	public int Xiugaidindan2(Integer id) {
		String sql ="UPDATE orders SET or_state=3 WHERE or_id=?";
		return this.execute(sql, id);
	}
	
	
	public static void main(String[] args) {
		ordersDAO dao = new ordersDAO();
		System.out.println(dao.selectDindan2(1));
	}

}

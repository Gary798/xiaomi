package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import BaseDAO.BaseDAO;
import BaseDAO.Mapper;
import entity.orders;
import entity.products;

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
						e.printStackTrace();
					}
					return list;
				}
			});
	}
	
	//条件分页
	public Map<String, Object> pagewhereord(String number,int state,String time,int curpage, int pagesize){
		    String sql = "SELECT * FROM orders where 1=1";
		    String sql2 = "SELECT COUNT(*) AS s FROM orders where 1=1";
		    
		    // 添加条件（如果条件不为空）
		    if (number != null && !number.isEmpty()) {
		        sql += " AND or_number LIKE '%" + number + "'";
		        sql2 += " AND or_number LIKE '%" + number + "'";
		    }

		    if (state == 1 || state == 2|| state == 3) { // 使用逻辑或
		        sql += " AND or_state = '" + state + "'";
		        sql2 += " AND or_state = '" + state + "'";
		    }
		    if (time != null && !time.isEmpty()) {
		        sql += " AND or_time LIKE '%" + time + "%'";
		        sql2 += " AND or_time LIKE '%" + time + "%'";
		    }
		    
		    sql += " ORDER BY or_id DESC LIMIT ?, ?";
		    
		    List<orders> list = this.executeQuery(sql, new Mapper<orders>() {
		        @Override
		        public List<orders> map(ResultSet rs) throws SQLException {
		            List<orders> list = new ArrayList<orders>();
		            while (rs.next()) {
		            	orders saying = new orders(
		            			rs.getInt(1),
								rs.getInt(2),
								rs.getString(3),
								rs.getTimestamp(4),
								rs.getString(5),
								rs.getString(6),
								rs.getString(7),
								rs.getString(8)
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
	
	//删除订单
	public int orderdelete(int id) {
		String sql = "DELETE FROM orders WHERE or_id=?;";
		return this.execute(sql,id);
	}
		
	//修改
		public int orderupdate(String name,String phone, int statu,String address,String note,int id) {
			String sql = "UPDATE orders SET or_name=?,or_number=?,or_state=?,or_address=?,or_note=? WHERE or_id=?";
			return this.execute(sql,name,phone,statu,address,note,id);
		}
}

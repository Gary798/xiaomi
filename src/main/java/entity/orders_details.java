package entity;

import java.math.BigDecimal;

public class orders_details {
	private int or_det_id;
    private int user_id;
    private int or_id;
    private int pro_id;
    private int pri_id;
    private int or_det_count;
    private BigDecimal or_det_price;
	public int getOr_det_id() {
		return or_det_id;
	}
	public void setOr_det_id(int or_det_id) {
		this.or_det_id = or_det_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getOr_id() {
		return or_id;
	}
	public void setOr_id(int or_id) {
		this.or_id = or_id;
	}
	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}
	public int getPri_id() {
		return pri_id;
	}
	public void setPri_id(int pri_id) {
		this.pri_id = pri_id;
	}
	public int getOr_det_count() {
		return or_det_count;
	}
	public void setOr_det_count(int or_det_count) {
		this.or_det_count = or_det_count;
	}
	public BigDecimal getOr_det_price() {
		return or_det_price;
	}
	public void setOr_det_price(BigDecimal or_det_price) {
		this.or_det_price = or_det_price;
	}
	public orders_details(int or_det_id, int user_id, int or_id, int pro_id, int pri_id, int or_det_count,
			BigDecimal or_det_price) {
		super();
		this.or_det_id = or_det_id;
		this.user_id = user_id;
		this.or_id = or_id;
		this.pro_id = pro_id;
		this.pri_id = pri_id;
		this.or_det_count = or_det_count;
		this.or_det_price = or_det_price;
	}
	public orders_details() {
		super();
	}
}

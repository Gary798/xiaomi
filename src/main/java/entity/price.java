package entity;

import java.math.BigDecimal;

public class price {
    private int pri_id;
    private BigDecimal pri_name;
	public int getPri_id() {
		return pri_id;
	}
	public void setPri_id(int pri_id) {
		this.pri_id = pri_id;
	}
	public BigDecimal getPri_name() {
		return pri_name;
	}
	public void setPri_name(BigDecimal pri_name) {
		this.pri_name = pri_name;
	}
	public price(int pri_id, BigDecimal pri_name) {
		super();
		this.pri_id = pri_id;
		this.pri_name = pri_name;
	}
	public price() {
		super();
	}
}

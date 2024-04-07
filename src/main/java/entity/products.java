package entity;

import java.math.BigDecimal;

public class products {
	private int pro_id;
    private String pro_name;
    private String pro_description;
    private int cate_id;
    private BigDecimal pri_name;
	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getPro_description() {
		return pro_description;
	}
	public void setPro_description(String pro_description) {
		this.pro_description = pro_description;
	}
	public int getCate_id() {
		return cate_id;
	}
	public void setCate_id(int cate_id) {
		this.cate_id = cate_id;
	}
	
	public BigDecimal getPri_name() {
		return pri_name;
	}
	public void setPri_name(BigDecimal pri_name) {
		this.pri_name = pri_name;
	}
	public products(int pro_id, String pro_name, String pro_description, int cate_id) {
		super();
		this.pro_id = pro_id;
		this.pro_name = pro_name;
		this.pro_description = pro_description;
		this.cate_id = cate_id;
	}
	
	/**
	 * @param pro_id
	 * @param pro_name
	 * @param pri_name
	 */
	public products(int pro_id, String pro_name, BigDecimal pri_name) {
		super();
		this.pro_id = pro_id;
		this.pro_name = pro_name;
		this.pri_name = pri_name;
	}
	/**
	 * @param pro_name
	 * @param pri_name
	 */
	public products(String pro_name, BigDecimal pri_name) {
		super();
		this.pro_name = pro_name;
		this.pri_name = pri_name;
	}
	public products() {
		super();
	}
}

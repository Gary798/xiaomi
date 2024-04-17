package entity;

import java.sql.Timestamp;

public class products {
	private int pro_id;
    private String pro_name;
    private String pro_description;
    private int cate_id;
    private int pro_sales;
    private Timestamp pro_time;
    private int pro_statue;
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
	public int getPro_sales() {
		return pro_sales;
	}
	public void setPro_sales(int pro_sales) {
		this.pro_sales = pro_sales;
	}
	public Timestamp getPro_time() {
		return pro_time;
	}
	public void setPro_time(Timestamp pro_time) {
		this.pro_time = pro_time;
	}
	public int getPro_statue() {
		return pro_statue;
	}
	public products(int pro_id, String pro_name, String pro_description, int cate_id, int pro_sales, Timestamp pro_time,
			int pro_statue) {
		super();
		this.pro_id = pro_id;
		this.pro_name = pro_name;
		this.pro_description = pro_description;
		this.cate_id = cate_id;
		this.pro_sales = pro_sales;
		this.pro_time = pro_time;
		this.pro_statue = pro_statue;
	}
	public void setPro_statue(int pro_statue) {
		this.pro_statue = pro_statue;
	}    
}

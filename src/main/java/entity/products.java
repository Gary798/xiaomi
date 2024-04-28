package entity;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class products {
	private int pro_id;
    /**
	 * @param pro_id
	 * @param pro_name
	 * @param pro_description
	 * @param pri_name
	 */
	public products(int pro_id, String pro_name, String pro_description, BigDecimal pri_name) {
		super();
		this.pro_id = pro_id;
		this.pro_name = pro_name;
		this.pro_description = pro_description;
		this.pri_name = pri_name;
	}
	/* 查名和id */
	public products(int pro_id, String pro_name) {
		super();
		this.pro_id = pro_id;
		this.pro_name = pro_name;
	}
	private String pro_name;
    private String pro_description;
    private int cate_id;
    private BigDecimal pri_name;
    private int spe_id;
    private int pro_sales;
    private Timestamp pro_time;
    private int pro_statue;
    //临时字段
    private String cate_name;
    private String img_url;
    
	public products(int pro_id, String pro_name, String pro_description, int pro_sales, Timestamp pro_time,
			int pro_statue, String cate_name, String img_url) {
		super();
		this.pro_id = pro_id;
		this.pro_name = pro_name;
		this.pro_description = pro_description;
		this.pro_sales = pro_sales;
		this.pro_time = pro_time;
		this.pro_statue = pro_statue;
		this.cate_name = cate_name;
		this.img_url = img_url;
	}
	public String getCate_name() {
		return cate_name;
	}
	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
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
	public void setPro_statue(int pro_statue) {
		this.pro_statue = pro_statue;
	}
	/**
	 * @param pri_name
	 */
	public products(BigDecimal pri_name) {
		super();
		this.pri_name = pri_name;
	}
	/**
	 * @param pro_id
	 * @param spe_id
	 */
	public products(int pro_id, int spe_id) {
		super();
		this.pro_id = pro_id;
		this.spe_id = spe_id;
	}
	public int getSpe_id() {
		return spe_id;
	}
	public void setSpe_id(int spe_id) {
		this.spe_id = spe_id;
	}
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
	 */
	public products(String pro_name) {
		super();
		this.pro_name = pro_name;
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
	@Override
	public String toString() {
		return "products [pro_id=" + pro_id + ", pro_name=" + pro_name + ", pro_description=" + pro_description
				+ ", cate_id=" + cate_id + ", pri_name=" + pri_name + ", spe_id=" + spe_id + "]";
	}
	
	
}
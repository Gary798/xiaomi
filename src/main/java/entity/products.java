package entity;

public class products {
	private int pro_id;
    private String pro_name;
    private String pro_description;
    private int cate_id;
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
	public products(int pro_id, String pro_name, String pro_description, int cate_id) {
		super();
		this.pro_id = pro_id;
		this.pro_name = pro_name;
		this.pro_description = pro_description;
		this.cate_id = cate_id;
	}
	public products() {
		super();
	}
}

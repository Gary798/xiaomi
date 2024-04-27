package entity;



public class orders_details {
	private int or_det_id;
    private int user_id;
    private int or_id;
    private String img_url;
    private String pro_name;
    private int car_jg ;
    private int car_count;
    private double car_zon;
    
    
	
	public double getCar_zon() {
		return car_zon;
	}
	public void setCar_zon(Double car_zon) {
		this.car_zon = car_zon;
	}
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
	

	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public int getCar_jg() {
		return car_jg;
	}
	public void setCar_jg(int car_jg) {
		this.car_jg = car_jg;
	}
	public int getCar_count() {
		return car_count;
	}
	public void setCar_count(int car_count) {
		this.car_count = car_count;
	}
	public orders_details() {
		super();
	}
	public orders_details(String img_url, String pro_name, int car_jg,int car_count,Double car_zon) {
		super();
		this.img_url = img_url;
		this.pro_name = pro_name;
		this.car_jg = car_jg;
		this.car_count = car_count;
		this.car_zon = car_zon;
	}
	
	@Override
	public String toString() {
		return "orders_details [or_det_id=" + or_det_id + ", user_id=" + user_id + ", or_id=" + or_id + ", img_url="
				+ img_url + ", pro_name=" + pro_name + ", car_jg=" + car_jg + ", car_count=" + car_count + ", car_zon="
				+ car_zon + "]";
	}
	public orders_details(int or_det_id, int user_id, int or_id, String img_url, String pro_name, int car_jg,
			int car_count) {
		super();
		this.or_det_id = or_det_id;
		this.user_id = user_id;
		this.or_id = or_id;
		this.img_url = img_url;
		this.pro_name = pro_name;
		this.car_jg = car_jg;
		this.car_count = car_count;
	}
	
}

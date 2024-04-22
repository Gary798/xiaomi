package entity;
import java.math.BigDecimal;
import java.sql.Timestamp;
public class orders {
	private int or_id;
    private int user_id;
    private String or_state;
    private Timestamp or_time;
    private String or_name;
    private String or_number;
    private String or_address;
    private String or_note;
    
    private int car_id;
    private int pro_id;
    private String img_url;
    private String pro_name;
    private BigDecimal car_jg;
    private int car_count;
    
    
    
    

	public orders(int or_id,String or_name, String or_number,String or_address,String or_state,Timestamp or_time,
			int car_id, int pro_id, String img_url, String pro_name,BigDecimal car_jg, int car_count) {
		super();
		this.or_id = or_id;
		this.or_state = or_state;
		this.or_time = or_time;
		this.or_name = or_name;
		this.or_number = or_number;
		this.or_address = or_address;
		this.car_id = car_id;
		this.pro_id = pro_id;
		this.img_url = img_url;
		this.pro_name = pro_name;
		this.car_jg = car_jg;
		this.car_count = car_count;
	}
	

	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}
	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
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
	public BigDecimal getCar_jg() {
		return car_jg;
	}
	public void setCar_jg(BigDecimal car_jg) {
		this.car_jg = car_jg;
	}
	public int getCar_count() {
		return car_count;
	}
	public void setCar_count(int car_count) {
		this.car_count = car_count;
	}
	public int getOr_id() {
		return or_id;
	}
	public void setOr_id(int or_id) {
		this.or_id = or_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getOr_state() {
		return or_state;
	}
	public void setOr_state(String or_state) {
		this.or_state = or_state;
	}
	public Timestamp getOr_time() {
		return or_time;
	}
	public void setOr_time(Timestamp or_time) {
		this.or_time = or_time;
	}
	public String getOr_name() {
		return or_name;
	}
	public void setOr_name(String or_name) {
		this.or_name = or_name;
	}
	public String getOr_number() {
		return or_number;
	}
	public void setOr_number(String or_number) {
		this.or_number = or_number;
	}
	public String getOr_address() {
		return or_address;
	}
	public void setOr_address(String or_address) {
		this.or_address = or_address;
	}
	public String getOr_note() {
		return or_note;
	}
	public void setOr_note(String or_note) {
		this.or_note = or_note;
	}

	public orders() {
		super();
	}
}

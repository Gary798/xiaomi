package entity;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class shopping_cart {
    private int car_id;
    private int pro_id;
    private String img_url;
    private String pro_name;
    private BigDecimal car_jg;
    private int car_count;
    private int user_id;
    private Timestamp car_time;
    private int count;
    
    /**
	 * @param count
	 */
	public shopping_cart(int count) {
		super();
		this.count = count;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	/**
	 * @param car_id
	 * @param pro_id
	 * @param img_url
	 * @param pro_name
	 * @param car_jg
	 * @param car_count
	 * @param user_id
	 */
	public shopping_cart(int car_id, int pro_id, String img_url, String pro_name, BigDecimal car_jg, int car_count,
			int user_id) {
		super();
		this.car_id = car_id;
		this.pro_id = pro_id;
		this.img_url = img_url;
		this.pro_name = pro_name;
		this.car_jg = car_jg;
		this.car_count = car_count;
		this.user_id = user_id;
	}

	/**
	 * @param pro_id
	 * @param img_url
	 * @param pro_name
	 * @param car_jg
	 * @param car_count
	 * @param user_id
	 * @param car_time
	 */
	public shopping_cart(int pro_id, String img_url, String pro_name, BigDecimal car_jg, int car_count, int user_id,
			Timestamp car_time) {
		super();
		this.pro_id = pro_id;
		this.img_url = img_url;
		this.pro_name = pro_name;
		this.car_jg = car_jg;
		this.car_count = car_count;
		this.user_id = user_id;
		this.car_time = car_time;
	}
	

	@Override
	public String toString() {
		return "shopping_cart [car_id=" + car_id + ", pro_id=" + pro_id + ", img_url=" + img_url + ", pro_name="
				+ pro_name + ", car_jg=" + car_jg + ", car_count=" + car_count + ", user_id=" + user_id + ", car_time="
				+ car_time + ", count=" + count + "]";
	}

	/**
	 * @param car_id
	 * @param pro_id
	 * @param img_url
	 * @param pro_name
	 * @param car_jg
	 * @param car_count
	 * @param user_id
	 * @param car_time
	 */
	public shopping_cart(int car_id, int pro_id, String img_url, String pro_name, BigDecimal car_jg, int car_count,
			int user_id, Timestamp car_time) {
		super();
		this.car_id = car_id;
		this.pro_id = pro_id;
		this.img_url = img_url;
		this.pro_name = pro_name;
		this.car_jg = car_jg;
		this.car_count = car_count;
		this.user_id = user_id;
		this.car_time = car_time;
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

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public Timestamp getCar_time() {
        return car_time;
    }

    public void setCar_time(Timestamp car_time) {
        this.car_time = car_time;
    }
}

package entity;

import java.sql.Timestamp;

public class users {
	private Integer user_id;
	private String user_name;
	private String user_sex;
	private String user_account;
	private String user_password;
	private String user_tele;
	private String img_url;
	private Integer user_integral;
	private Integer user_state;
	private Integer user_identity;
	private Timestamp createtime;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public String getUser_account() {
		return user_account;
	}
	public void setUser_account(String user_account) {
		this.user_account = user_account;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_tele() {
		return user_tele;
	}
	public void setUser_tele(String user_tele) {
		this.user_tele = user_tele;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public Integer getUser_state() {
		return user_state;
	}
	public void setUser_state(Integer user_state) {
		this.user_state = user_state;
	}
	public Timestamp getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Timestamp createtime) {
		this.createtime = createtime;
	}
	public Integer getUser_identity() {
		return user_identity;
	}
	public void setUser_identity(Integer user_identity) {
		this.user_identity = user_identity;
	}
	public Integer getUser_integral() {
		return user_integral;
	}
	public void setUser_integral(Integer user_integral) {
		this.user_integral = user_integral;
	}
	public users(Integer user_id, String user_name, String user_sex, String user_account, String user_password,
			String user_tele, String img_url, Integer user_integral, Integer user_state, Integer user_identity,
			Timestamp createtime) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_sex = user_sex;
		this.user_account = user_account;
		this.user_password = user_password;
		this.user_tele = user_tele;
		this.img_url = img_url;
		this.user_integral = user_integral;
		this.user_state = user_state;
		this.user_identity = user_identity;
		this.createtime = createtime;
	}
	public users() {
		super();
	}
}

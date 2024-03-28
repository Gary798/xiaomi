package entity;

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
	public Integer getUser_id() {
		return user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public String getUser_account() {
		return user_account;
	}
	public String getUser_password() {
		return user_password;
	}
	public String getUser_tele() {
		return user_tele;
	}
	public String getImg_url() {
		return img_url;
	}
	public Integer getUser_integral() {
		return user_integral;
	}
	public Integer getUser_state() {
		return user_state;
	}
	public users(Integer user_id, String user_name, String user_sex, String user_account, String user_password,
			String user_tele, String img_url, Integer user_integral, Integer user_state) {
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
	}
	public users() {
		super();
	}
}

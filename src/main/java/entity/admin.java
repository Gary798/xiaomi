package entity;

public class admin {
	private Integer admin_id;
	private String admin_name;
	private String admin_sex;
	private String admin_account;
	private String admin_password;
	private String admin_tele;
	private String img_url;
	private Integer admin_state;
	public Integer getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(Integer admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_sex() {
		return admin_sex;
	}
	public void setAdmin_sex(String admin_sex) {
		this.admin_sex = admin_sex;
	}
	public String getAdmin_account() {
		return admin_account;
	}
	public void setAdmin_account(String admin_account) {
		this.admin_account = admin_account;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
	public String getAdmin_tele() {
		return admin_tele;
	}
	public void setAdmin_tele(String admin_tele) {
		this.admin_tele = admin_tele;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public Integer getAdmin_state() {
		return admin_state;
	}
	public void setAdmin_state(Integer admin_state) {
		this.admin_state = admin_state;
	}
	public admin(Integer admin_id, String admin_name, String admin_sex, String admin_account, String admin_password,
			String admin_tele, String img_url, Integer admin_state) {
		super();
		this.admin_id = admin_id;
		this.admin_name = admin_name;
		this.admin_sex = admin_sex;
		this.admin_account = admin_account;
		this.admin_password = admin_password;
		this.admin_tele = admin_tele;
		this.img_url = img_url;
		this.admin_state = admin_state;
	}
	public admin() {
		super();
	}
}

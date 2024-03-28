package entity;

import java.sql.Timestamp;

public class comments {
	private int com_id;
    private int user_id;
    private int pro_id;
    private String com_content;
    private Timestamp com_time;
	public int getCom_id() {
		return com_id;
	}
	public void setCom_id(int com_id) {
		this.com_id = com_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}
	public String getCom_content() {
		return com_content;
	}
	public void setCom_content(String com_content) {
		this.com_content = com_content;
	}
	public Timestamp getCom_time() {
		return com_time;
	}
	public void setCom_time(Timestamp com_time) {
		this.com_time = com_time;
	}
	public comments(int com_id, int user_id, int pro_id, String com_content, Timestamp com_time) {
		super();
		this.com_id = com_id;
		this.user_id = user_id;
		this.pro_id = pro_id;
		this.com_content = com_content;
		this.com_time = com_time;
	}
	public comments() {
		super();
	}
}

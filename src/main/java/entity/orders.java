package entity;
import java.sql.Timestamp;
public class orders {
	private int or_id;
    private int user_id;
    private int or_state;
    private Timestamp or_time;
    private String or_name;
    private String or_number;
    private String or_address;
    private String or_note;
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
	public int getOr_state() {
		return or_state;
	}
	public void setOr_state(int or_state) {
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
	public orders(int or_id, int user_id, int or_state, Timestamp or_time, String or_name, String or_number,
			String or_address, String or_note) {
		super();
		this.or_id = or_id;
		this.user_id = user_id;
		this.or_state = or_state;
		this.or_time = or_time;
		this.or_name = or_name;
		this.or_number = or_number;
		this.or_address = or_address;
		this.or_note = or_note;
	}
	public orders() {
		super();
	}
}

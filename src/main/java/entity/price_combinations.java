package entity;

public class price_combinations {
	private int com_id;
    private int pri_id;
    private int sp_de_id;
	public int getCom_id() {
		return com_id;
	}
	public void setCom_id(int com_id) {
		this.com_id = com_id;
	}
	public int getPri_id() {
		return pri_id;
	}
	public void setPri_id(int pri_id) {
		this.pri_id = pri_id;
	}
	public int getSp_de_id() {
		return sp_de_id;
	}
	public void setSp_de_id(int sp_de_id) {
		this.sp_de_id = sp_de_id;
	}
	public price_combinations(int com_id, int pri_id, int sp_de_id) {
		super();
		this.com_id = com_id;
		this.pri_id = pri_id;
		this.sp_de_id = sp_de_id;
	}
	public price_combinations() {
		super();
	}
}

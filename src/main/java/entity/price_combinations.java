package entity;

public class price_combinations {
	private int com_id;
    private int pri_id;
    private int sp_de_id;
    //临时字段
    private String pro_name;
    private String spe_det;
    private String pri_name;
    //表格显示
	public price_combinations(int com_id, String pro_name, String spe_det, String pri_name) {
		super();
		this.com_id = com_id;
		this.pro_name = pro_name;
		this.spe_det = spe_det;
		this.pri_name = pri_name;
	}
	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public String getSpe_det() {
		return spe_det;
	}

	public void setSpe_det(String spe_det) {
		this.spe_det = spe_det;
	}

	public String getPri_name() {
		return pri_name;
	}

	public void setPri_name(String pri_name) {
		this.pri_name = pri_name;
	}

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

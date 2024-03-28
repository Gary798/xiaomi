package entity;

public class specification_detail {
	 	private int sp_de_id;
	    private int spe_id;
	    private String spe_det;
		public int getSp_de_id() {
			return sp_de_id;
		}
		public void setSp_de_id(int sp_de_id) {
			this.sp_de_id = sp_de_id;
		}
		public int getSpe_id() {
			return spe_id;
		}
		public void setSpe_id(int spe_id) {
			this.spe_id = spe_id;
		}
		public String getSpe_det() {
			return spe_det;
		}
		public void setSpe_det(String spe_det) {
			this.spe_det = spe_det;
		}
		public specification_detail(int sp_de_id, int spe_id, String spe_det) {
			super();
			this.sp_de_id = sp_de_id;
			this.spe_id = spe_id;
			this.spe_det = spe_det;
		}
		public specification_detail() {
			super();
		}
}

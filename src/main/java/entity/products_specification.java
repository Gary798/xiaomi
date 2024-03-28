package entity;

public class products_specification {
	 	private int spe_id;
	    private String spe_name;
	    private int pro_id;
		public int getSpe_id() {
			return spe_id;
		}
		public void setSpe_id(int spe_id) {
			this.spe_id = spe_id;
		}
		public String getSpe_name() {
			return spe_name;
		}
		public void setSpe_name(String spe_name) {
			this.spe_name = spe_name;
		}
		public int getPro_id() {
			return pro_id;
		}
		public void setPro_id(int pro_id) {
			this.pro_id = pro_id;
		}
		public products_specification(int spe_id, String spe_name, int pro_id) {
			super();
			this.spe_id = spe_id;
			this.spe_name = spe_name;
			this.pro_id = pro_id;
		}
		public products_specification() {
			super();
		}
}

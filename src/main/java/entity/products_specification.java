package entity;

public class products_specification {
	 	private int spe_id;
	    private String spe_name;
	    private int pro_id;
	    private String spe_det;
		/**
		 * @param spe_id
		 * @param spe_det
		 */
		public products_specification(int spe_id, String spe_det) {
			super();
			this.spe_id = spe_id;
			this.spe_det = spe_det;
		}
		/**
		 * @param spe_name
		 */
		public products_specification(String spe_name) {
			super();
			this.spe_name = spe_name;
		}
		public String getSpe_det() {
			return spe_det;
		}
		public void setSpe_det(String spe_det) {
			this.spe_det = spe_det;
		}
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
		/**
		 * @param spe_det
		 */
		
		@Override
		public String toString() {
			return "products_specification [spe_id=" + spe_id + ", spe_name=" + spe_name + ", pro_id=" + pro_id
					+ ", spe_det=" + spe_det + "]";
		}
		/**
		 * @param spe_id
		 * @param pro_id
		 * @param spe_det
		 */
		/**
		 * @param spe_id
		 * @param spe_name
		 * @param spe_det
		 */
		public products_specification(int spe_id, String spe_name, String spe_det) {
			super();
			this.spe_id = spe_id;
			this.spe_name = spe_name;
			this.spe_det = spe_det;
		}
		
		
}

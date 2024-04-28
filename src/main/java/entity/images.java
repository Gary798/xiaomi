package entity;

public class images {
		private int img_id;
	    private String img_url;
	    private int pro_id;
		public int getImg_id() {
			return img_id;
		}
		public void setImg_id(int img_id) {
			this.img_id = img_id;
		}
		public String getImg_url() {
			return img_url;
		}
		public void setImg_url(String img_url) {
			this.img_url = img_url;
		}
		public int getPro_id() {
			return pro_id;
		}
		public void setPro_id(int pro_id) {
			this.pro_id = pro_id;
		}
		public images(int img_id, String img_url, int pro_id) {
			super();
			this.img_id = img_id;
			this.img_url = img_url;
			this.pro_id = pro_id;
		}
		public images() {
			super();
		}
		/**
		 * @param img_url
		 */
		public images(String img_url) {
			super();
			this.img_url = img_url;
		}
		@Override
		public String toString() {
			return "images [img_id=" + img_id + ", img_url=" + img_url + ", pro_id=" + pro_id + "]";
		}
		
}

package entity;

public class advertisements {
	 	private int ad_id;
	    private String ad_url;
	    private int ad_display;
	    private int pro_id;
		/**
		 * @param ad_url
		 */
		public advertisements(String ad_url) {
			super();
			this.ad_url = ad_url;
		}
		@Override
		public String toString() {
			return "advertisements [ad_id=" + ad_id + ", ad_url=" + ad_url + ", ad_display=" + ad_display + ", pro_id="
					+ pro_id + "]";
		}
		/**
		 * @param ad_id
		 * @param ad_url
		 * @param ad_display
		 * @param pro_id
		 */
		public advertisements(int ad_id, String ad_url, int ad_display, int pro_id) {
			super();
			this.ad_id = ad_id;
			this.ad_url = ad_url;
			this.ad_display = ad_display;
			this.pro_id = pro_id;
		}
		public int getPro_id() {
			return pro_id;
		}
		public void setPro_id(int pro_id) {
			this.pro_id = pro_id;
		}
		public int getAd_id() {
			return ad_id;
		}
		public void setAd_id(int ad_id) {
			this.ad_id = ad_id;
		}
		public String getAd_url() {
			return ad_url;
		}
		public void setAd_url(String ad_url) {
			this.ad_url = ad_url;
		}
		public int getAd_display() {
			return ad_display;
		}
		public void setAd_display(int ad_display) {
			this.ad_display = ad_display;
		}
		
		
		public advertisements() {
			super();
		}
}

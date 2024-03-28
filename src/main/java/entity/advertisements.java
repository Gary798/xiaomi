package entity;

public class advertisements {
	 	private int ad_id;
	    private String ad_url;
	    private int ad_display;
	    private String ad_href;
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
		public String getAd_href() {
			return ad_href;
		}
		public void setAd_href(String ad_href) {
			this.ad_href = ad_href;
		}
		public advertisements(int ad_id, String ad_url, int ad_display, String ad_href) {
			super();
			this.ad_id = ad_id;
			this.ad_url = ad_url;
			this.ad_display = ad_display;
			this.ad_href = ad_href;
		}
		public advertisements() {
			super();
		}
}

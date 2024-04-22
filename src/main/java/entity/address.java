package entity;

public class address {
		private String add_id;
		private String user_id;
	    private String add_name;
	    private String add_tel;
	    private String address;
	    
		public String getAdd_id() {
			return add_id;
		}
		public void setAdd_id(String add_id) {
			this.add_id = add_id;
		}
		public String getAdd_name() {
			return add_name;
		}
		public void setAdd_name(String add_name) {
			this.add_name = add_name;
		}
		public String getAdd_tel() {
			return add_tel;
		}
		public void setAdd_tel(String add_tel) {
			this.add_tel = add_tel;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		
		public String getUser_id() {
			return user_id;
		}
		public void setUser_id(String user_id) {
			this.user_id = user_id;
		}
		public address(String add_id, String user_id, String add_name, String add_tel, String address) {
			super();
			this.add_id = add_id;
			this.user_id = user_id;
			this.add_name = add_name;
			this.add_tel = add_tel;
			this.address = address;
		}
		public address() {
			super();
		}
		
}

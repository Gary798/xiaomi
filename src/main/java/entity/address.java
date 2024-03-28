package entity;

public class address {
		private int add_id;
	    private int user_id;
	    private String add_name;
	    private String add_tel;
	    private String address;
	    private int is_default;
		public int getAdd_id() {
			return add_id;
		}
		public void setAdd_id(int add_id) {
			this.add_id = add_id;
		}
		public int getUser_id() {
			return user_id;
		}
		public void setUser_id(int user_id) {
			this.user_id = user_id;
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
		public int getIs_default() {
			return is_default;
		}
		public void setIs_default(int is_default) {
			this.is_default = is_default;
		}
		public address(int add_id, int user_id, String add_name, String add_tel, String address, int is_default) {
			super();
			this.add_id = add_id;
			this.user_id = user_id;
			this.add_name = add_name;
			this.add_tel = add_tel;
			this.address = address;
			this.is_default = is_default;
		}
		public address() {
			super();
		}
}

package entity;

import java.sql.Timestamp;

public class footprint {
	 	private int foo_id;
	    private int user_id;
	    private int pro_id;
	    private Timestamp foo_time;
		public int getFoo_id() {
			return foo_id;
		}
		public void setFoo_id(int foo_id) {
			this.foo_id = foo_id;
		}
		public int getUser_id() {
			return user_id;
		}
		public void setUser_id(int user_id) {
			this.user_id = user_id;
		}
		public int getPro_id() {
			return pro_id;
		}
		public void setPro_id(int pro_id) {
			this.pro_id = pro_id;
		}
		public Timestamp getFoo_time() {
			return foo_time;
		}
		public void setFoo_time(Timestamp foo_time) {
			this.foo_time = foo_time;
		}
		public footprint(int foo_id, int user_id, int pro_id, Timestamp foo_time) {
			super();
			this.foo_id = foo_id;
			this.user_id = user_id;
			this.pro_id = pro_id;
			this.foo_time = foo_time;
		}
		public footprint() {
			super();
		}
}

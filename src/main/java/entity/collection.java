package entity;

import java.sql.Timestamp;

public class collection {
	  	private int col_id;
	    private int user_id;
	    private Timestamp col_time;
		public int getCol_id() {
			return col_id;
		}
		public void setCol_id(int col_id) {
			this.col_id = col_id;
		}
		public int getUser_id() {
			return user_id;
		}
		public void setUser_id(int user_id) {
			this.user_id = user_id;
		}
		public Timestamp getCol_time() {
			return col_time;
		}
		public void setCol_time(Timestamp col_time) {
			this.col_time = col_time;
		}
		public collection(int col_id, int user_id, Timestamp col_time) {
			super();
			this.col_id = col_id;
			this.user_id = user_id;
			this.col_time = col_time;
		}
		public collection() {
			super();
		}
}

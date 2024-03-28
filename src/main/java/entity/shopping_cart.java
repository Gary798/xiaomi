package entity;

import java.sql.Timestamp;

public class shopping_cart {
	 	private int car_id;
	    private int pro_id;
	    private int pri_id;
	    private int car_count;
	    private Timestamp car_time;
		public int getCar_id() {
			return car_id;
		}
		public void setCar_id(int car_id) {
			this.car_id = car_id;
		}
		public int getPro_id() {
			return pro_id;
		}
		public void setPro_id(int pro_id) {
			this.pro_id = pro_id;
		}
		public int getPri_id() {
			return pri_id;
		}
		public void setPri_id(int pri_id) {
			this.pri_id = pri_id;
		}
		public int getCar_count() {
			return car_count;
		}
		public void setCar_count(int car_count) {
			this.car_count = car_count;
		}
		public Timestamp getCar_time() {
			return car_time;
		}
		public void setCar_time(Timestamp car_time) {
			this.car_time = car_time;
		}
		public shopping_cart(int car_id, int pro_id, int pri_id, int car_count, Timestamp car_time) {
			super();
			this.car_id = car_id;
			this.pro_id = pro_id;
			this.pri_id = pri_id;
			this.car_count = car_count;
			this.car_time = car_time;
		}
		public shopping_cart() {
			super();
		}
}

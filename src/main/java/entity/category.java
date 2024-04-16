package entity;

public class category {
	private Integer cate_id;
	private String cate_name;
	public Integer getCate_id() {
		return cate_id;
	}
	public void setCate_id(Integer cate_id) {
		this.cate_id = cate_id;
	}
	public String getCate_name() {
		return cate_name;
	}
	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
	public category(Integer cate_id, String cate_name) {
		super();
		this.cate_id = cate_id;
		this.cate_name = cate_name;
	}
	public category() {
		super();
	}
}

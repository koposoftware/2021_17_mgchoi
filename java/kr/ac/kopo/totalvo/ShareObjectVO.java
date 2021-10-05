package kr.ac.kopo.totalvo;

public class ShareObjectVO {
	
	private int object_share_pk;     
	private String name; 
	private String object_name; 
	private int percent;    
	private int object_price;    
	private int p_file_id;    
	private String object_content;
	
	public int getObject_share_pk() {
		return object_share_pk;
	}
	public void setObject_share_pk(int object_share_pk) {
		this.object_share_pk = object_share_pk;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getObject_name() {
		return object_name;
	}
	public void setObject_name(String object_name) {
		this.object_name = object_name;
	}
	public int getPercent() {
		return percent;
	}
	public void setPercent(int percent) {
		this.percent = percent;
	}
	public int getObject_price() {
		return object_price;
	}
	public void setObject_price(int object_price) {
		this.object_price = object_price;
	}
	public int getP_file_id() {
		return p_file_id;
	}
	public void setP_file_id(int p_file_id) {
		this.p_file_id = p_file_id;
	}
	public String getObject_content() {
		return object_content;
	}
	public void setObject_content(String object_content) {
		this.object_content = object_content;
	}
	
	@Override
	public String toString() {
		return "ShareObjectVO [object_share_pk=" + object_share_pk + ", name=" + name + ", object_name=" + object_name
				+ ", percent=" + percent + ", object_price=" + object_price + ", p_file_id=" + p_file_id
				+ ", object_content=" + object_content + "]";
	}
	
	
	
	
	
}

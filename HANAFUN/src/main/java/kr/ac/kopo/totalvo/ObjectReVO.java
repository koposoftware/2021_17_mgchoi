package kr.ac.kopo.totalvo;

public class ObjectReVO {

	private int object_re_pk;
    private int object_share_pk;
    private String object_re_name;
    private String object_re_text;
    
	public int getObject_re_pk() {
		return object_re_pk;
	}
	public void setObject_re_pk(int object_re_pk) {
		this.object_re_pk = object_re_pk;
	}
	public int getObject_share_pk() {
		return object_share_pk;
	}
	public void setObject_share_pk(int object_share_pk) {
		this.object_share_pk = object_share_pk;
	}
	public String getObject_re_name() {
		return object_re_name;
	}
	public void setObject_re_name(String object_re_name) {
		this.object_re_name = object_re_name;
	}
	public String getObject_re_text() {
		return object_re_text;
	}
	public void setObject_re_text(String object_re_text) {
		this.object_re_text = object_re_text;
	}
	
	@Override
	public String toString() {
		return "ObjectReVO [object_re_pk=" + object_re_pk + ", object_share_pk=" + object_share_pk + ", object_re_name="
				+ object_re_name + ", object_re_text=" + object_re_text + "]";
	}
	
	
    
    
	
}

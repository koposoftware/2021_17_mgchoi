package kr.ac.kopo.totalvo;

public class FileVO {
	
	private int p_file_pk;
	private String image_name;
	private String insert_date;
	private String p_file_type;
	private int p_file_size;
	private String stored_name;
	private String thumbnail_name;
	
	public int getP_file_pk() {
		return p_file_pk;
	}
	public void setP_file_pk(int p_file_pk) {
		this.p_file_pk = p_file_pk;
	}
	public String getImage_name() {
		return image_name;
	}
	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}
	public String getInsert_date() {
		return insert_date;
	}
	public void setInsert_date(String insert_date) {
		this.insert_date = insert_date;
	}
	public String getP_file_type() {
		return p_file_type;
	}
	public void setP_file_type(String p_file_type) {
		this.p_file_type = p_file_type;
	}
	public int getP_file_size() {
		return p_file_size;
	}
	public void setP_file_size(int p_file_size) {
		this.p_file_size = p_file_size;
	}
	public String getStored_name() {
		return stored_name;
	}
	public void setStored_name(String stored_name) {
		this.stored_name = stored_name;
	}
	public String getThumbnail_name() {
		return thumbnail_name;
	}
	public void setThumbnail_name(String thumbnail_name) {
		this.thumbnail_name = thumbnail_name;
	}
	
	@Override
	public String toString() {
		return "FileVO [p_file_pk=" + p_file_pk + ", image_name=" + image_name + ", insert_date=" + insert_date
				+ ", p_file_type=" + p_file_type + ", p_file_size=" + p_file_size + ", stored_name=" + stored_name
				+ ", thumbnail_name=" + thumbnail_name + "]";
	}
	
	
	
}

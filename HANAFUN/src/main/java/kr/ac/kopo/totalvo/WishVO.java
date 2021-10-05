package kr.ac.kopo.totalvo;

import kr.ac.kopo.util.NumberUtils;

public class WishVO {
	
	private int wish_pk;
    private int saving_pk;
    private String wish_name;
    private int duration;
    private int p_file_id;
    private int target_price;
    private String start_date;
    private int status;
    
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getStart_date() {
		return start_date;
	}
	
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public int getWish_pk() {
		return wish_pk;
	}
	
	public void setWish_pk(int wish_pk) {
		this.wish_pk = wish_pk;
	}
	public int getSaving_pk() {
		return saving_pk;
	}
	public void setSaving_pk(int saving_pk) {
		this.saving_pk = saving_pk;
	}
	public String getWish_name() {
		return wish_name;
	}
	public void setWish_name(String wish_name) {
		this.wish_name = wish_name;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public int getP_file_id() {
		return p_file_id;
	}
	public void setP_file_id(int p_file_id) {
		this.p_file_id = p_file_id;
	}
	public int getTarget_price() {
		return target_price;
	}
	
	public String getTargetPriceWithComma() {
		
		return NumberUtils.convertComma(this.target_price);
	}
	
	public void setTarget_price(int target_price) {
		this.target_price = target_price;
	}

	@Override
	public String toString() {
		return "WishVO [wish_pk=" + wish_pk + ", saving_pk=" + saving_pk + ", wish_name=" + wish_name + ", duration="
				+ duration + ", p_file_id=" + p_file_id + ", target_price=" + target_price + ", start_date="
				+ start_date + ", status=" + status + "]";
	}
	
	
	
	
    
    
	
    
    
    
}

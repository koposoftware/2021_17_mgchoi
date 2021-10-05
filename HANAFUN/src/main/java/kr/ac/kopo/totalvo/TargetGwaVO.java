package kr.ac.kopo.totalvo;

import kr.ac.kopo.util.NumberUtils;

public class TargetGwaVO {

	private String target_gwa_category;
    private int target_gwa_cnt;
    private int saving_pk;
    private int target_gwa_balance;
    
    public String getTarget_gwa_balanceWithComma() {
		return NumberUtils.convertComma(target_gwa_balance);
	}
    
	public int getTarget_gwa_balance() {
		return target_gwa_balance;
	}
	public void setTarget_gwa_balance(int target_gwa_balance) {
		this.target_gwa_balance = target_gwa_balance;
	}
	
	
	
	
	public String getTarget_gwa_category() {
		return target_gwa_category;
	}
	public void setTarget_gwa_category(String target_gwa_category) {
		this.target_gwa_category = target_gwa_category;
	}
	public int getTarget_gwa_cnt() {
		return target_gwa_cnt;
	}
	public void setTarget_gwa_cnt(int target_gwa_cnt) {
		this.target_gwa_cnt = target_gwa_cnt;
	}
	public int getSaving_pk() {
		return saving_pk;
	}
	public void setSaving_pk(int saving_pk) {
		this.saving_pk = saving_pk;
	}
	
	@Override
	public String toString() {
		return "TargetGwaVO [target_gwa_category=" + target_gwa_category + ", target_gwa_cnt=" + target_gwa_cnt
				+ ", saving_pk=" + saving_pk + ", target_gwa_balance=" + target_gwa_balance + "]";
	}
	
	
    
	
    
    
	
}

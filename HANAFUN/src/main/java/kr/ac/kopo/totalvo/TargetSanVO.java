package kr.ac.kopo.totalvo;

import kr.ac.kopo.util.NumberUtils;

public class TargetSanVO {
	
	private int target_san_date;
    private int target_san_balance;
    private int saving_pk;
    
	public int getTarget_san_date() {
		return target_san_date;
	}
	public void setTarget_san_date(int target_san_date) {
		this.target_san_date = target_san_date;
	}
	public String getTarget_san_balanceWithComma() {
		return NumberUtils.convertComma(target_san_balance);
	}
	public int getTarget_san_balance() {
		return target_san_balance;
	}
	public void setTarget_san_balance(int target_san_balance) {
		this.target_san_balance = target_san_balance;
	}
	public int getSaving_pk() {
		return saving_pk;
	}
	public void setSaving_pk(int saving_pk) {
		this.saving_pk = saving_pk;
	}
	
	@Override
	public String toString() {
		return "TargetSanVO [target_san_date=" + target_san_date + ", target_san_balance=" + target_san_balance
				+ ", saving_pk=" + saving_pk + "]";
	}
    
	
    
	
	
    
    
	
}

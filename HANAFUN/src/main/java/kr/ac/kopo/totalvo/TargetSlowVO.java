package kr.ac.kopo.totalvo;

import kr.ac.kopo.util.NumberUtils;

public class TargetSlowVO {
	
	private int target_slow_date;
    private int target_slow_balance;
    private int saving_pk;
    
	public int getTarget_slow_date() {
		return target_slow_date;
	}
	public void setTarget_slow_date(int target_slow_date) {
		this.target_slow_date = target_slow_date;
	}
	public String getTarget_slow_balanceWithComma() {
		return NumberUtils.convertComma(target_slow_balance);
	}
	public int getTarget_slow_balance() {
		return target_slow_balance;
	}
	public void setTarget_slow_balance(int target_slow_balance) {
		this.target_slow_balance = target_slow_balance;
	}
	public int getSaving_pk() {
		return saving_pk;
	}
	public void setSaving_pk(int saving_pk) {
		this.saving_pk = saving_pk;
	}
	@Override
	public String toString() {
		return "TargetSlowVO [target_slow_date=" + target_slow_date + ", target_slow_balance=" + target_slow_balance
				+ ", saving_pk=" + saving_pk + "]";
	}
    
	
	
	
    
    
	
}

package kr.ac.kopo.totalvo;

import kr.ac.kopo.util.NumberUtils;

public class TargetWeekVO {
	
	private int target_week_date;
    private int target_week_balance;
    private int target_week_stop;
    private int saving_pk;
    private int target_week_now;
    
	public int getTarget_week_date() {
		return target_week_date;
	}
	public void setTarget_week_date(int target_week_date) {
		this.target_week_date = target_week_date;
	}
	public String getTarget_week_balanceWithComma() {
		return NumberUtils.convertComma(target_week_balance);
	}
	public int getTarget_week_balance() {
		return target_week_balance;
	}
	public void setTarget_week_balance(int target_week_balance) {
		this.target_week_balance = target_week_balance;
	}
	public String getTarget_week_stopWithComma() {
		return NumberUtils.convertComma(target_week_stop);
	}
	public int getTarget_week_stop() {
		return target_week_stop;
	}
	public void setTarget_week_stop(int target_week_stop) {
		this.target_week_stop = target_week_stop;
	}
	public int getSaving_pk() {
		return saving_pk;
	}
	public void setSaving_pk(int saving_pk) {
		this.saving_pk = saving_pk;
	}
	public String getTarget_week_nowWithComma() {
		return NumberUtils.convertComma(target_week_now);
	}
	public int getTarget_week_now() {
		return target_week_now;
	}
	public void setTarget_week_now(int target_week_now) {
		this.target_week_now = target_week_now;
	}
	
	@Override
	public String toString() {
		return "TargetWeekVO [target_week_date=" + target_week_date + ", target_week_balance=" + target_week_balance
				+ ", target_week_stop=" + target_week_stop + ", saving_pk=" + saving_pk + ", target_week_now="
				+ target_week_now + "]";
	}
	
	
	
	
	
    
    
    
    
	
}

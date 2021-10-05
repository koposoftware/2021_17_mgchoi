package kr.ac.kopo.totalvo;

import kr.ac.kopo.util.NumberUtils;

public class TargetPayVO {
	
	private int target_pay_balance;
    private int target_pay_date;
    private int target_pay_rate;
    private int saving_pk;
    
    public String getTarget_pay_balanceWithComma() {
		return NumberUtils.convertComma(target_pay_balance);
	}
    
	public int getTarget_pay_balance() {
		return target_pay_balance;
	}
	public void setTarget_pay_balance(int target_pay_balance) {
		this.target_pay_balance = target_pay_balance;
	}
	public int getTarget_pay_date() {
		return target_pay_date;
	}
	public void setTarget_pay_date(int target_pay_date) {
		this.target_pay_date = target_pay_date;
	}
	public int getTarget_pay_rate() {
		return target_pay_rate;
	}
	public void setTarget_pay_rate(int target_pay_rate) {
		this.target_pay_rate = target_pay_rate;
	}
	public int getSaving_pk() {
		return saving_pk;
	}
	public void setSaving_pk(int saving_pk) {
		this.saving_pk = saving_pk;
	}
	
	@Override
	public String toString() {
		return "TargetPayVO [target_pay_balance=" + target_pay_balance + ", target_pay_date=" + target_pay_date
				+ ", target_pay_rate=" + target_pay_rate + ", saving_pk=" + saving_pk + "]";
	}
	
	
	
    
    
	
}

package kr.ac.kopo.totalvo;

import kr.ac.kopo.util.NumberUtils;

public class SavingVO {

	private int saving_pk;
    private int fun_member_pk;
    private String savingnum;
    private String savingpwd;
    private int savingbalance;
    private String savingname;
    private String input_date;
    private double savinginterest;
    private String saving_duedate;
    private int account_pk;
    
	public int getSaving_pk() {
		return saving_pk;
	}
	public void setSaving_pk(int saving_pk) {
		this.saving_pk = saving_pk;
	}
	public int getFun_member_pk() {
		return fun_member_pk;
	}
	public void setFun_member_pk(int fun_member_pk) {
		this.fun_member_pk = fun_member_pk;
	}
	public String getSavingnum() {
		return savingnum;
	}
	public void setSavingnum(String savingnum) {
		this.savingnum = savingnum;
	}
	public String getSavingpwd() {
		return savingpwd;
	}
	public void setSavingpwd(String savingpwd) {
		this.savingpwd = savingpwd;
	}
	
	public String getSavingbalanceWithComma() {
		
		return NumberUtils.convertComma(savingbalance);
	}
	
	public int getSavingbalance() {
		return savingbalance;
	}
	public void setSavingbalance(int savingbalance) {
		this.savingbalance = savingbalance;
	}
	public String getSavingname() {
		return savingname;
	}
	public void setSavingname(String savingname) {
		this.savingname = savingname;
	}
	public String getInput_date() {
		return input_date;
	}
	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}
	public double getSavinginterest() {
		return savinginterest;
	}
	public void setSavinginterest(double savinginterest) {
		this.savinginterest = savinginterest;
	}
	public String getSaving_duedate() {
		return saving_duedate;
	}
	public void setSaving_duedate(String saving_duedate) {
		this.saving_duedate = saving_duedate;
	}
	
	public int getAccount_pk() {
		return account_pk;
	}
	public void setAccount_pk(int account_pk) {
		this.account_pk = account_pk;
	}
	@Override
	public String toString() {
		return "SavingVO [saving_pk=" + saving_pk + ", fun_member_pk=" + fun_member_pk + ", savingnum=" + savingnum
				+ ", savingpwd=" + savingpwd + ", savingbalance=" + savingbalance + ", savingname=" + savingname
				+ ", input_date=" + input_date + ", savinginterest=" + savinginterest + ", saving_duedate="
				+ saving_duedate + ", account_pk=" + account_pk + "]";
	}
	

    
    
	
	
}

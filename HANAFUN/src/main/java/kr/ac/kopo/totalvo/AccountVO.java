package kr.ac.kopo.totalvo;

public class AccountVO {
	
	private int fun_account_pk;
    private int fun_member_pk;
    private int fun_account_balance;
    private String fun_account_pwd;
    private String fun_account_name;
    private String fun_account_num;
    private String fun_account_reg_date;
    
	public int getFun_account_pk() {
		return fun_account_pk;
	}
	public void setFun_account_pk(int fun_account_pk) {
		this.fun_account_pk = fun_account_pk;
	}
	public int getFun_member_pk() {
		return fun_member_pk;
	}
	public void setFun_member_pk(int fun_member_pk) {
		this.fun_member_pk = fun_member_pk;
	}
	public int getFun_account_balance() {
		return fun_account_balance;
	}
	public void setFun_account_balance(int fun_account_balance) {
		this.fun_account_balance = fun_account_balance;
	}
	public String getFun_account_pwd() {
		return fun_account_pwd;
	}
	public void setFun_account_pwd(String fun_account_pwd) {
		this.fun_account_pwd = fun_account_pwd;
	}
	public String getFun_account_name() {
		return fun_account_name;
	}
	public void setFun_account_name(String fun_account_name) {
		this.fun_account_name = fun_account_name;
	}
	public String getFun_account_num() {
		return fun_account_num;
	}
	public void setFun_account_num(String fun_account_num) {
		this.fun_account_num = fun_account_num;
	}
	public String getFun_account_reg_date() {
		return fun_account_reg_date;
	}
	public void setFun_account_reg_date(String fun_account_reg_date) {
		this.fun_account_reg_date = fun_account_reg_date;
	}
	
	@Override
	public String toString() {
		return "AccountVO [fun_account_pk=" + fun_account_pk + ", fun_member_pk=" + fun_member_pk
				+ ", fun_account_balance=" + fun_account_balance + ", fun_account_pwd=" + fun_account_pwd
				+ ", fun_account_name=" + fun_account_name + ", fun_account_num=" + fun_account_num
				+ ", fun_account_reg_date=" + fun_account_reg_date + "]";
	}
    
    
	
}

package kr.ac.kopo.totalvo;

public class AccountDetailVO {
	
	private int p_acc_deatil_pk;
    private int fun_account_pk;
    private String p_acc_deatil_pay_date;
    private int p_acc_detail_pay_amount;
    private String p_acc_detail_pay_name;
    private String p_acc_detail_send_date;
    private int p_acc_detail_send_amount;
    private String p_acc_detail_send_name;
	public int getP_acc_deatil_pk() {
		return p_acc_deatil_pk;
	}
	public void setP_acc_deatil_pk(int p_acc_deatil_pk) {
		this.p_acc_deatil_pk = p_acc_deatil_pk;
	}
	public int getFun_account_pk() {
		return fun_account_pk;
	}
	public void setFun_account_pk(int fun_account_pk) {
		this.fun_account_pk = fun_account_pk;
	}
	public String getP_acc_deatil_pay_date() {
		return p_acc_deatil_pay_date;
	}
	public void setP_acc_deatil_pay_date(String p_acc_deatil_pay_date) {
		this.p_acc_deatil_pay_date = p_acc_deatil_pay_date;
	}
	public int getP_acc_detail_pay_amount() {
		return p_acc_detail_pay_amount;
	}
	public void setP_acc_detail_pay_amount(int p_acc_detail_pay_amount) {
		this.p_acc_detail_pay_amount = p_acc_detail_pay_amount;
	}
	public String getP_acc_detail_pay_name() {
		return p_acc_detail_pay_name;
	}
	public void setP_acc_detail_pay_name(String p_acc_detail_pay_name) {
		this.p_acc_detail_pay_name = p_acc_detail_pay_name;
	}
	public String getP_acc_detail_send_date() {
		return p_acc_detail_send_date;
	}
	public void setP_acc_detail_send_date(String p_acc_detail_send_date) {
		this.p_acc_detail_send_date = p_acc_detail_send_date;
	}
	public int getP_acc_detail_send_amount() {
		return p_acc_detail_send_amount;
	}
	public void setP_acc_detail_send_amount(int p_acc_detail_send_amount) {
		this.p_acc_detail_send_amount = p_acc_detail_send_amount;
	}
	public String getP_acc_detail_send_name() {
		return p_acc_detail_send_name;
	}
	public void setP_acc_detail_send_name(String p_acc_detail_send_name) {
		this.p_acc_detail_send_name = p_acc_detail_send_name;
	}
	
	@Override
	public String toString() {
		return "AccountDetailVO [p_acc_deatil_pk=" + p_acc_deatil_pk + ", fun_account_pk=" + fun_account_pk
				+ ", p_acc_deatil_pay_date=" + p_acc_deatil_pay_date + ", p_acc_detail_pay_amount="
				+ p_acc_detail_pay_amount + ", p_acc_detail_pay_name=" + p_acc_detail_pay_name
				+ ", p_acc_detail_send_date=" + p_acc_detail_send_date + ", p_acc_detail_send_amount="
				+ p_acc_detail_send_amount + ", p_acc_detail_send_name=" + p_acc_detail_send_name + "]";
	}
    
    
	
}

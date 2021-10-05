package kr.ac.kopo.totalvo;

public class AccountLogVO {
	
	private int p_account_log_pk;
    private int fun_account_pk;
    private int change;
    private String task;
    private String input_date;
    private String category;
	public int getP_account_log_pk() {
		return p_account_log_pk;
	}
	public void setP_account_log_pk(int p_account_log_pk) {
		this.p_account_log_pk = p_account_log_pk;
	}
	public int getFun_account_pk() {
		return fun_account_pk;
	}
	public void setFun_account_pk(int fun_account_pk) {
		this.fun_account_pk = fun_account_pk;
	}
	public int getChange() {
		return change;
	}
	public void setChange(int change) {
		this.change = change;
	}
	public String getTask() {
		return task;
	}
	public void setTask(String task) {
		this.task = task;
	}
	public String getInput_date() {
		return input_date;
	}
	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	@Override
	public String toString() {
		return "AccountLogVO [p_account_log_pk=" + p_account_log_pk + ", fun_account_pk=" + fun_account_pk + ", change="
				+ change + ", task=" + task + ", input_date=" + input_date + ", category=" + category + "]";
	}
    
    
	
}

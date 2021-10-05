package kr.ac.kopo.totalvo;

import kr.ac.kopo.util.NumberUtils;

public class SavingLogVO {
	
	private int saving_log_pk;
    private int saving_pk;
    private int saving_change;
    private String saving_task;
    private String saving_date;
    private String saving_category;
    
	public int getSaving_log_pk() {
		return saving_log_pk;
	}
	public void setSaving_log_pk(int saving_log_pk) {
		this.saving_log_pk = saving_log_pk;
	}
	public int getSaving_pk() {
		return saving_pk;
	}
	public void setSaving_pk(int saving_pk) {
		this.saving_pk = saving_pk;
	}
	public String getSaving_changeWithComma() {
		return NumberUtils.convertComma(saving_change);
	}
	public int getSaving_change() {
		return saving_change;
	}
	public void setSaving_change(int saving_change) {
		this.saving_change = saving_change;
	}
	public String getSaving_task() {
		return saving_task;
	}
	public void setSaving_task(String saving_task) {
		this.saving_task = saving_task;
	}
	public String getSaving_date() {
		return saving_date;
	}
	public void setSaving_date(String saving_date) {
		this.saving_date = saving_date;
	}
	public String getSaving_category() {
		return saving_category;
	}
	public void setSaving_category(String saving_category) {
		this.saving_category = saving_category;
	}
	
	@Override
	public String toString() {
		return "SavingLogVO [saving_log_pk=" + saving_log_pk + ", saving_pk=" + saving_pk + ", saving_change="
				+ saving_change + ", saving_task=" + saving_task + ", saving_date=" + saving_date + ", saving_category="
				+ saving_category + "]";
	}
	
	
    
}

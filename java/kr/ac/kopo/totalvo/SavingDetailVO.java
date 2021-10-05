package kr.ac.kopo.totalvo;

public class SavingDetailVO {
	    
    private int saving_pk;
    private int first_status;
    private int second_status;
    private int third_status;
    private int four_status;
    private int five_status;
    private int six_status;
    
    
    
	@Override
	public String toString() {
		return "SavingDetailVO [saving_pk=" + saving_pk + ", first_status=" + first_status + ", second_status="
				+ second_status + ", third_status=" + third_status + ", four_status=" + four_status + ", five_status="
				+ five_status + ", six_status=" + six_status + "]";
	}
	
	
	public int getSaving_pk() {
		return saving_pk;
	}
	public void setSaving_pk(int saving_pk) {
		this.saving_pk = saving_pk;
	}
	public int getFirst_status() {
		return first_status;
	}
	public void setFirst_status(int first_status) {
		this.first_status = first_status;
	}
	public int getSecond_status() {
		return second_status;
	}
	public void setSecond_status(int second_status) {
		this.second_status = second_status;
	}
	public int getThird_status() {
		return third_status;
	}
	public void setThird_status(int third_status) {
		this.third_status = third_status;
	}
	public int getFour_status() {
		return four_status;
	}
	public void setFour_status(int four_status) {
		this.four_status = four_status;
	}
	public int getFive_status() {
		return five_status;
	}
	public void setFive_status(int five_status) {
		this.five_status = five_status;
	}
	public int getSix_status() {
		return six_status;
	}
	public void setSix_status(int six_status) {
		this.six_status = six_status;
	}
    
    
    
	
	
}

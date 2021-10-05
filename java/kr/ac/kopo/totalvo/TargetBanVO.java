package kr.ac.kopo.totalvo;

public class TargetBanVO {
	
	 private double target_ban_gob;
	 private int saving_pk;
	 
	 
	public double getTarget_ban_gob() {
		return target_ban_gob;
	}
	public void setTarget_ban_gob(double target_ban_gob) {
		this.target_ban_gob = target_ban_gob;
	}
	public int getSaving_pk() {
		return saving_pk;
	}
	public void setSaving_pk(int saving_pk) {
		this.saving_pk = saving_pk;
	}
	
	@Override
	public String toString() {
		return "TargetBanVO [target_ban_gob=" + target_ban_gob + ", saving_pk=" + saving_pk + "]";
	}
	 
	 
	 
	
	    
}

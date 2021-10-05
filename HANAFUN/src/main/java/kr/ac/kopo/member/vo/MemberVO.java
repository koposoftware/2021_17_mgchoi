package kr.ac.kopo.member.vo;

public class MemberVO {
	
	private int fun_member_pk;
    private String id;
    private String pwd;
    private String name;
    private String birth;
    private String phone;
    private String input_date;
    private int coin;
    
	public int getFun_member_pk() {
		return fun_member_pk;
	}
	public void setFun_member_pk(int fun_member_pk) {
		this.fun_member_pk = fun_member_pk;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getInput_date() {
		return input_date;
	}
	public void setInput_date(String input_date) {
		this.input_date = input_date;
	}
	
	public int getCoin() {
		return coin;
	}
	public void setCoin(int coin) {
		this.coin = coin;
	}
	
	@Override
	public String toString() {
		return "MemberVO [fun_member_pk=" + fun_member_pk + ", id=" + id + ", pwd=" + pwd + ", name=" + name
				+ ", birth=" + birth + ", phone=" + phone + ", input_date=" + input_date + "]";
	}
    
	
	
	
}

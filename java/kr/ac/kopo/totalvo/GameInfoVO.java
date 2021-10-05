package kr.ac.kopo.totalvo;

public class GameInfoVO {
	
	private int saving_pk;
    private int game_lv;
    private int coin;
    private int cnt;
    private int game_cash;
    private int max_game_cash;
    
	public int getSaving_pk() {
		return saving_pk;
	}
	public void setSaving_pk(int saving_pk) {
		this.saving_pk = saving_pk;
	}
	public int getGame_lv() {
		return game_lv;
	}
	public void setGame_lv(int game_lv) {
		this.game_lv = game_lv;
	}
	public int getCoin() {
		return coin;
	}
	public void setCoin(int coin) {
		this.coin = coin;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getGame_cash() {
		return game_cash;
	}
	public void setGame_cash(int game_cash) {
		this.game_cash = game_cash;
	}
	public int getMax_game_cash() {
		return max_game_cash;
	}
	public void setMax_game_cash(int max_game_cash) {
		this.max_game_cash = max_game_cash;
	}
	
	@Override
	public String toString() {
		return "GameInfoVO [saving_pk=" + saving_pk + ", game_lv=" + game_lv + ", coin=" + coin + ", cnt=" + cnt
				+ ", game_cash=" + game_cash + ", max_game_cash=" + max_game_cash + "]";
	}
    
    
    
}

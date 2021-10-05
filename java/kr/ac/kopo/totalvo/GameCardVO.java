package kr.ac.kopo.totalvo;

public class GameCardVO {
	
	private int game_card_pk;    
	private String game_card_title; 
	private String game_card_type;
	private String game_card_url; 
	private String game_card_up_down;
	
	public int getGame_card_pk() {
		return game_card_pk;
	}
	public void setGame_card_pk(int game_card_pk) {
		this.game_card_pk = game_card_pk;
	}
	public String getGame_card_title() {
		return game_card_title;
	}
	public void setGame_card_title(String game_card_title) {
		this.game_card_title = game_card_title;
	}
	public String getGame_card_type() {
		return game_card_type;
	}
	public void setGame_card_type(String game_card_type) {
		this.game_card_type = game_card_type;
	}
	public String getGame_card_url() {
		return game_card_url;
	}
	public void setGame_card_url(String game_card_url) {
		this.game_card_url = game_card_url;
	}
	public String getGame_card_up_down() {
		return game_card_up_down;
	}
	public void setGame_card_up_down(String game_card_up_down) {
		this.game_card_up_down = game_card_up_down;
	}
	
	@Override
	public String toString() {
		return "GameCardVO [game_card_pk=" + game_card_pk + ", game_card_title=" + game_card_title + ", game_card_type="
				+ game_card_type + ", game_card_url=" + game_card_url + ", game_card_up_down=" + game_card_up_down
				+ "]";
	}
	
	
	
	
	
	
	
}

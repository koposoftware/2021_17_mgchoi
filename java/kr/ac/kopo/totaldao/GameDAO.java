package kr.ac.kopo.totaldao;

import java.util.List;

import kr.ac.kopo.totalvo.GameCardVO;
import kr.ac.kopo.totalvo.GameInfoVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.WishVO;

public interface GameDAO {

	void addGameInfo(SavingVO saving_vo);

	GameInfoVO obtainGameInfoVOByPk(SavingVO saving_vo);

	List<GameCardVO> selectAllCard();

	void updateGameInfo(GameInfoVO gameinfo_vo);

	List<GameInfoVO> obtainGameInfoVORank();

	String obtainMemberName(int saving_pk);

	int obtainTotalCount();

	int obtainRank(int saving_pk);
	
	
	
}

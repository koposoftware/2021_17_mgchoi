package kr.ac.kopo.totalservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.totaldao.AccountDAO;
import kr.ac.kopo.totaldao.GameDAO;
import kr.ac.kopo.totaldao.SavingDAO;
import kr.ac.kopo.totaldao.StatusDAO;
import kr.ac.kopo.totaldao.WishDAO;
import kr.ac.kopo.totalvo.AccountVO;
import kr.ac.kopo.totalvo.GameCardVO;
import kr.ac.kopo.totalvo.GameInfoVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.WishVO;

@Service
public class GameServiceImpl implements GameService {

	@Autowired
	private GameDAO gameDAO;

	public GameInfoVO obtainGameInfoVOByPk(SavingVO saving_vo) {
		
		GameInfoVO gameinfo_vo = gameDAO.obtainGameInfoVOByPk(saving_vo);
		
		return gameinfo_vo;
	}

	public List<GameCardVO> selectAllCard() {
		
		List<GameCardVO> cardList = gameDAO.selectAllCard();
		
		return cardList;
	}

	public void updateGameInfo(GameInfoVO gameinfo_vo) {
		
		gameDAO.updateGameInfo(gameinfo_vo);
		
	}

	public List<GameInfoVO> obtainGameInfoVORank() {
		
		List<GameInfoVO> rank = gameDAO.obtainGameInfoVORank();
		
		return rank;
	}

	public String obtainMemberName(int saving_pk) {
		
		String name = gameDAO.obtainMemberName(saving_pk);
		
		return name;
	}

	public int obtainTotalCount() {
		
		int cnt = gameDAO.obtainTotalCount();
		
		return cnt;
	}

	public int obtainRank(int saving_pk) {
		
		int cnt = gameDAO.obtainRank(saving_pk);
		
		return cnt;
	}
	
	
	
	
}

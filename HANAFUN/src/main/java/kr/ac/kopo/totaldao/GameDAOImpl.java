package kr.ac.kopo.totaldao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.totalvo.GameCardVO;
import kr.ac.kopo.totalvo.GameInfoVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.WishVO;

@Repository
public class GameDAOImpl implements GameDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void addGameInfo(SavingVO saving_vo) {
		
		sqlSessionTemplate.insert("game.GameDAO.addGameInfo", saving_vo);
		
	}

	public GameInfoVO obtainGameInfoVOByPk(SavingVO saving_vo) {
		
		GameInfoVO gameinfo_vo = sqlSessionTemplate.selectOne("game.GameDAO.obtainGameInfoVOByPk", saving_vo);
		
		return gameinfo_vo;
	}

	public List<GameCardVO> selectAllCard() {
		
		List<GameCardVO> card_list = sqlSessionTemplate.selectList("game.GameDAO.SelectAllCard");
		
		return card_list;
	}

	public void updateGameInfo(GameInfoVO gameinfo_vo) {
		
		sqlSessionTemplate.insert("game.GameDAO.updateGameInfo", gameinfo_vo);
		
	}

	public List<GameInfoVO> obtainGameInfoVORank() {
		
		List<GameInfoVO> rank = sqlSessionTemplate.selectList("game.GameDAO.obtainGameInfoVORank");
		
		return rank;
	}

	public String obtainMemberName(int saving_pk) {
		
		String name = sqlSessionTemplate.selectOne("game.GameDAO.obtainMemberName", saving_pk);
		
		return name;
	}

	public int obtainTotalCount() {
		
		int cnt = sqlSessionTemplate.selectOne("game.GameDAO.obtainTotalCount");
		
		return cnt;
	}

	public int obtainRank(int saving_pk) {
		
		int cnt = sqlSessionTemplate.selectOne("game.GameDAO.obtainRank", saving_pk);
		
		return cnt;
		
	}

	
	
}

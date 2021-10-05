package kr.ac.kopo.totaldao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.totalvo.ObjectReVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.ShareObjectVO;
import kr.ac.kopo.totalvo.WishVO;

@Repository
public class WishDAOImpl implements WishDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void addWish(WishVO wishVO) {
		
		
		sqlSessionTemplate.insert("wish.WishDAO.addWish" , wishVO);
		
	}

	
	public List<WishVO> searchAllBySavingPk(int saving_pk) {
		
		List<WishVO> wish_list = sqlSessionTemplate.selectList("wish.WishDAO.searchAllBySavingPk", saving_pk);
		
		return wish_list;
		
	}


	public int obtainCnt(int saving_pk) {
		
		int cnt = sqlSessionTemplate.selectOne("wish.WishDAO.obtainCnt", saving_pk);
		
		return cnt;
	}


	public void addShareVO(ShareObjectVO shareVO) {
		
		sqlSessionTemplate.insert("wish.WishDAO.addShareVO", shareVO);
		
	}


	public List<ShareObjectVO> obtainShareObjectList() {
		
		List<ShareObjectVO> share_list = 
				sqlSessionTemplate.selectList("wish.WishDAO.obtainShareObjectList");
		
		return share_list;
		
	}


	public List<ObjectReVO> obtainReply() {
		
		List<ObjectReVO> reply_list = sqlSessionTemplate.selectList("wish.WishDAO.obtainReply");
		
		return reply_list;
	}


	public void addReply(ObjectReVO reVO) {
		
		sqlSessionTemplate.selectList("wish.WishDAO.addReply", reVO);
		
	}


	public void addCoin(int pk) {
		
		sqlSessionTemplate.update("wish.WishDAO.addCoin", pk);
		
	}


	
	
	
	
}

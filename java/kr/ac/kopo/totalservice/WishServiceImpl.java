package kr.ac.kopo.totalservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.totaldao.AccountDAO;
import kr.ac.kopo.totaldao.SavingDAO;
import kr.ac.kopo.totaldao.StatusDAO;
import kr.ac.kopo.totaldao.WishDAO;
import kr.ac.kopo.totalvo.AccountVO;
import kr.ac.kopo.totalvo.ObjectReVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.ShareObjectVO;
import kr.ac.kopo.totalvo.WishVO;

@Service
public class WishServiceImpl implements WishService {

	@Autowired
	private WishDAO wishDAO;
	
	public void addWish(WishVO wishVO) {
		
		wishDAO.addWish(wishVO);
		
	}

	public List<WishVO> searchAllBySavingPk(int saving_pk) {
		
		List<WishVO> wish_list = wishDAO.searchAllBySavingPk(saving_pk);
		
		return wish_list;
	}

	public int obtainCnt(int saving_pk) {
		
		int cnt = wishDAO.obtainCnt(saving_pk);
		
		return cnt;
	}

	public void addShareVO(ShareObjectVO shareVO) {
		
		wishDAO.addShareVO(shareVO);
		
	}

	public List<ShareObjectVO> obtainShareObjectList() {
		
		List<ShareObjectVO> shareList = wishDAO.obtainShareObjectList();
		
		return shareList;
	}

	public List<ObjectReVO> obtainReply() {
		
		List<ObjectReVO> reply_list = wishDAO.obtainReply();
		
		return reply_list;
	}

	public void addReply(ObjectReVO reVO) {
		
		wishDAO.addReply(reVO);
		
	}

	public void addCoin(int pk) {
		
		wishDAO.addCoin(pk);
		
	}

	
	
}

package kr.ac.kopo.totaldao;

import java.util.List;

import kr.ac.kopo.totalvo.ObjectReVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.ShareObjectVO;
import kr.ac.kopo.totalvo.WishVO;

public interface WishDAO {

	void addWish(WishVO wishVO);

	List<WishVO> searchAllBySavingPk(int saving_pk);

	int obtainCnt(int saving_pk);

	void addShareVO(ShareObjectVO shareVO);

	List<ShareObjectVO> obtainShareObjectList();

	List<ObjectReVO> obtainReply();

	void addReply(ObjectReVO reVO);

	void addCoin(int pk);

	

	
}

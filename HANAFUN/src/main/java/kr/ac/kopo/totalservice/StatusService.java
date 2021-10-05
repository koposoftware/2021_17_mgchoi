package kr.ac.kopo.totalservice;

import java.util.List;

import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.TargetBanVO;
import kr.ac.kopo.totalvo.TargetGwaVO;
import kr.ac.kopo.totalvo.TargetPayVO;
import kr.ac.kopo.totalvo.TargetSanVO;
import kr.ac.kopo.totalvo.TargetSlowVO;
import kr.ac.kopo.totalvo.TargetWeekVO;
import kr.ac.kopo.totalvo.WishVO;

public interface StatusService {

	void updateWeek(TargetWeekVO weekVO);
	
	void updateSlow(TargetSlowVO slowVO);
	
	void updatePay(TargetPayVO payVO);
	
	void updateBan(TargetBanVO banVO);
	
	void updateGwa(TargetGwaVO gwaVO);
	
	void updateSan(TargetSanVO sanVO);

	TargetWeekVO selectWeekStatus(int saving_pk);

	TargetSlowVO selectSlowStatus(int saving_pk);

	TargetPayVO selectPayStatus(int saving_pk);
	
	TargetBanVO selectBanStatus(int saving_pk);

	TargetGwaVO selectGwaStatus(int saving_pk);

	TargetSanVO selectSanStatus(int saving_pk);
	
}

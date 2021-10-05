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
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.TargetBanVO;
import kr.ac.kopo.totalvo.TargetGwaVO;
import kr.ac.kopo.totalvo.TargetPayVO;
import kr.ac.kopo.totalvo.TargetSanVO;
import kr.ac.kopo.totalvo.TargetSlowVO;
import kr.ac.kopo.totalvo.TargetWeekVO;
import kr.ac.kopo.totalvo.WishVO;

@Service
public class StatusServiceImpl implements StatusService {

	@Autowired
	private StatusDAO statusDAO;
	
	public void updateWeek(TargetWeekVO weekVO) {
		
		statusDAO.updateWeek(weekVO);
		
	}
	
	public void updateSlow(TargetSlowVO slowVO) {
		
		statusDAO.updateSlow(slowVO);
		
	}
	
	public void updatePay(TargetPayVO payVO) {
		
		statusDAO.updatePay(payVO);
		
	}
	
	public void updateBan(TargetBanVO banVO) {
		
		statusDAO.updateBan(banVO);
		
	}
	
	public void updateGwa(TargetGwaVO gwaVO) {
			
		statusDAO.updateGwa(gwaVO);
			
	}
	
	public void updateSan(TargetSanVO sanVO) {
		
		statusDAO.updateSan(sanVO);
		
	}

	public TargetWeekVO selectWeekStatus(int saving_pk) {
		
		TargetWeekVO WeekVO = statusDAO.selectWeekStatus(saving_pk);
		
		return WeekVO;
	}

	public TargetSlowVO selectSlowStatus(int saving_pk) {

		TargetSlowVO SlowVO = statusDAO.selectSlowStatus(saving_pk);
		
		return SlowVO;
		
	}

	public TargetPayVO selectPayStatus(int saving_pk) {
		
		TargetPayVO PayVO = statusDAO.selectPayStatus(saving_pk);
		
		return PayVO;
		
	}

	public TargetBanVO selectBanStatus(int saving_pk) {
		
		TargetBanVO BanVO = statusDAO.selectBanStatus(saving_pk);
		
		return BanVO;
		
	}

	public TargetGwaVO selectGwaStatus(int saving_pk) {
		
		TargetGwaVO GwaVO = statusDAO.selectGwaStatus(saving_pk);
		
		return GwaVO;
		
	}

	public TargetSanVO selectSanStatus(int saving_pk) {
		
		TargetSanVO SanVO = statusDAO.selectSanStatus(saving_pk);
		
		return SanVO;
		
	}

	
	
}

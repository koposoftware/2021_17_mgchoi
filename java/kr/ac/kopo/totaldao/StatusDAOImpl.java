package kr.ac.kopo.totaldao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.TargetBanVO;
import kr.ac.kopo.totalvo.TargetGwaVO;
import kr.ac.kopo.totalvo.TargetPayVO;
import kr.ac.kopo.totalvo.TargetSanVO;
import kr.ac.kopo.totalvo.TargetSlowVO;
import kr.ac.kopo.totalvo.TargetWeekVO;

@Repository
public class StatusDAOImpl implements StatusDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void addTargetBan(SavingVO saving) {
		
		sqlSessionTemplate.insert("status.StatusDAO.addTargetBan", saving);
		
	}

	public void addTargetGwa(SavingVO saving) {
		
		sqlSessionTemplate.insert("status.StatusDAO.addTargetGwa", saving);
		
	}

	public void addTargetPay(SavingVO saving) {
		
		sqlSessionTemplate.insert("status.StatusDAO.addTargetPay", saving);
		
	}

	public void addTargetSan(SavingVO saving) {
		
		sqlSessionTemplate.insert("status.StatusDAO.addTargetSan", saving);
		
	}

	public void addTargetSlow(SavingVO saving) {
		
		sqlSessionTemplate.insert("status.StatusDAO.addTargetSlow", saving);
		
	}

	public void addTargetWeek(SavingVO saving) {
		
		sqlSessionTemplate.insert("status.StatusDAO.addTargetWeek", saving);
		
	}

	public void updateWeek(TargetWeekVO weekVO) {
		
		
		sqlSessionTemplate.update("status.StatusDAO.updateTargetWeek", weekVO);
	}

	public void updateSlow(TargetSlowVO slowVO) {
		
		sqlSessionTemplate.update("status.StatusDAO.updateTargetSlow", slowVO);
		
	}

	public void updatePay(TargetPayVO payVO) {
		
		sqlSessionTemplate.update("status.StatusDAO.updateTargetPay", payVO);
		
	}

	public void updateBan(TargetBanVO banVO) {
		
		sqlSessionTemplate.update("status.StatusDAO.updateTargetBan", banVO);
		
	}

	public void updateGwa(TargetGwaVO gwaVO) {
		
		sqlSessionTemplate.update("status.StatusDAO.updateTargetGwa", gwaVO);
		
	}

	public void updateSan(TargetSanVO sanVO) {
		
		sqlSessionTemplate.update("status.StatusDAO.updateTargetSan", sanVO);
		
	}

	public TargetWeekVO selectWeekStatus(int saving_pk) {
		
		TargetWeekVO weekVO = sqlSessionTemplate.selectOne("status.StatusDAO.selectWeekStatus", saving_pk);
		
		return weekVO;
		
	}

	public TargetSlowVO selectSlowStatus(int saving_pk) {
		
		TargetSlowVO slowVO = sqlSessionTemplate.selectOne("status.StatusDAO.selectSlowStatus", saving_pk);
		
		return slowVO;
	}

	public TargetPayVO selectPayStatus(int saving_pk) {
		
		TargetPayVO payVO = sqlSessionTemplate.selectOne("status.StatusDAO.selectPayStatus", saving_pk);
		
		return payVO;
		
	}

	public TargetBanVO selectBanStatus(int saving_pk) {
		
		TargetBanVO banVO = sqlSessionTemplate.selectOne("status.StatusDAO.selectBanStatus", saving_pk);
		
		return banVO;
		
	}

	public TargetGwaVO selectGwaStatus(int saving_pk) {
		
		TargetGwaVO gwaVO = sqlSessionTemplate.selectOne("status.StatusDAO.selectGwaStatus", saving_pk);
		
		return gwaVO;
		
	}

	public TargetSanVO selectSanStatus(int saving_pk) {
		
		TargetSanVO sanVO = sqlSessionTemplate.selectOne("status.StatusDAO.selectSanStatus", saving_pk);
		
		return sanVO;
		
	}
	
	
	
}

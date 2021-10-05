package kr.ac.kopo.totaldao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.totalvo.AccountVO;
import kr.ac.kopo.totalvo.SavingDetailVO;
import kr.ac.kopo.totalvo.SavingLogVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.TargetWeekVO;

@Repository
public class SavingDAOImpl implements SavingDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void addSaving(SavingVO saving) {
	
		sqlSessionTemplate.insert("saving.SavingDAO.create", saving);
	
	}

	public List<SavingVO> searchAllByMemberPk(int member_pk) {
		
		List<SavingVO> saving_vo = sqlSessionTemplate.selectList("saving.SavingDAO.searchAllByMemberPk", member_pk);
		
		return saving_vo;
	}

	public void addSavingLog(SavingVO saving) {
		
		sqlSessionTemplate.insert("saving.SavingDAO.addSavingLog", saving);
		
	}

	public void addSavingDetail(SavingVO saving) {
		 
		sqlSessionTemplate.insert("saving.SavingDAO.addSavingDetail", saving);
		
	}

	public SavingVO obtainSavingVO(SavingVO saving) {
		
		SavingVO saving_vo = sqlSessionTemplate.selectOne("saving.SavingDAO.obtainSavingVO", saving);
		
		return saving_vo;
	}

	public SavingVO obtainSavingVOByMem(int fun_member_pk) {
		
		SavingVO saving_vo = sqlSessionTemplate.selectOne("saving.SavingDAO.obtainSavingVOByMem", fun_member_pk);
	
		
		return saving_vo;
	}

	public SavingDetailVO obtainSavingDetailVO(int saving_pk) {
		
		SavingDetailVO saving_detail = sqlSessionTemplate.selectOne("saving.SavingDAO.obtainSavingDetailVO",
				saving_pk);
		
		return saving_detail;
		
	}

	public List<SavingLogVO> selectAllSavingLog(int saving_pk) {
		
		
		List<SavingLogVO> saving_log_list = sqlSessionTemplate.selectList("saving.SavingDAO.selectAllSavingLog",
				saving_pk);
		
		return saving_log_list;
	}

	public void updateSavingDetailVO(SavingDetailVO savingVO) {
		
		sqlSessionTemplate.update("saving.SavingDAO.updateSavingDetailVO", savingVO);
		
	}

	public List<SavingDetailVO> obtainSavingDetailList() {
		
		List<SavingDetailVO> savingdetail_list = sqlSessionTemplate.selectList("saving.SavingDAO.obtainSavingDetailList");
		
		return savingdetail_list;
	}

	public SavingVO obtainSavingVODay(int saving_pk) {

		SavingVO saving = sqlSessionTemplate.selectOne("saving.SavingDAO.obtainSavingVODay", saving_pk);
		
		return saving;
	}

	public void dayChange(SavingVO saving) {
		
		sqlSessionTemplate.update("saving.SavingDAO.dayChange", saving);
		
	}

	public void dayPayChange(SavingVO saving) {

		sqlSessionTemplate.update("saving.SavingDAO.dayPayChange", saving);
		
	}

	public void dayChangeWeek(SavingVO saving) {
		
		sqlSessionTemplate.update("saving.SavingDAO.dayChangeWeek", saving);
		
	}

	public void updateWeekVO(TargetWeekVO weekvo) {
		
		sqlSessionTemplate.update("saving.SavingDAO.updateWeekVO", weekvo);
		
	}

	public void daySanChange(SavingVO saving) {

		sqlSessionTemplate.update("saving.SavingDAO.daySanChange", saving);
	}

	public int obtainYesterDaySum(int fun_pk) {
		
		int sum = sqlSessionTemplate.selectOne("saving.SavingDAO.obtainYesterDaySum", fun_pk);
		
		return sum;
	}

	
	public int obtainFunPk(SavingVO saving) {
		
		int fun_pk = sqlSessionTemplate.selectOne("saving.SavingDAO.obtainFunPk", saving);
		
		return fun_pk;
		
	}

	public AccountVO obtainAccVO(int account_pk) {
		
		AccountVO avo = sqlSessionTemplate.selectOne("saving.SavingDAO.obtainAccVO", account_pk);
		
		return avo;
		
	}

	public void dayChangeSan(SavingVO saving) {
		
		sqlSessionTemplate.update("saving.SavingDAO.dayChangeSan", saving);
		
	}

	
}

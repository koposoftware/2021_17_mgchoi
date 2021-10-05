package kr.ac.kopo.totalservice;

import java.util.List;

import kr.ac.kopo.totalvo.AccountVO;
import kr.ac.kopo.totalvo.SavingDetailVO;
import kr.ac.kopo.totalvo.SavingLogVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.TargetWeekVO;

public interface SavingService {

	void addSaving(SavingVO saving);
	
	
	List<SavingVO> searchAllByMemberPk(int member_pk);


	SavingVO obtainSavingVOByMem(int fun_member_pk);
	
	SavingDetailVO obtainSavingDetailVO(int saving_pk);
	
	List<SavingLogVO> selectAllSavingLog(int saving_pk);


	void updateSavingDetailVO(SavingDetailVO savingVO);


	List<SavingDetailVO> obtainSavingDetailList();


	SavingVO obtainSavingVODay(int saving_pk);


	void dayChange(SavingVO saving);


	void dayPayChange(SavingVO saving);


	void dayChangeWeek(SavingVO saving);


	void updateWeekVO(TargetWeekVO weekvo);


	void daySanChange(SavingVO saving);


	int obtainYesterDaySum(int fun_pk);


	int obtainFunPk(SavingVO saving);


	AccountVO obtainAccVO(int account_pk);


	void dayChangeSan(SavingVO saving);
}

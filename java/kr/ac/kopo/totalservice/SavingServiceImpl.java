package kr.ac.kopo.totalservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.totaldao.AccountDAO;
import kr.ac.kopo.totaldao.GameDAO;
import kr.ac.kopo.totaldao.SavingDAO;
import kr.ac.kopo.totaldao.StatusDAO;
import kr.ac.kopo.totalvo.AccountVO;
import kr.ac.kopo.totalvo.SavingDetailVO;
import kr.ac.kopo.totalvo.SavingLogVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.TargetWeekVO;

@Service
public class SavingServiceImpl implements SavingService {

	@Autowired
	private SavingDAO savingDAO ; // 인터페이스 기반의 객체들을 주입시켜야함 -> AutoWired는 MemberDAO 형태의 적절한 객체를 찾아 주입시키기 때문에, 
								//유지보수 차원에서 인터페이스형의 객체를 주입시키는 것이 좋다 ( 묵시적 형변환에 의해 타입에 대해 자유로움)
	@Autowired
	private AccountDAO accountDAO;
	
	@Autowired
	private StatusDAO statusDAO;
	
	@Autowired
	private GameDAO gameDAO;
	
	@Transactional
	public void addSaving(SavingVO saving) {
	 
		//적금통장 만들고
		AccountVO account_vo  = accountDAO.obtainAccountByPK(saving.getAccount_pk());
		
		account_vo.setFun_account_balance(account_vo.getFun_account_balance() - saving.getSavingbalance()); 
		
		//입출금 통장에서 돈 빼주고
		accountDAO.modifyAccount(account_vo);
		
		//변동액 설정
		account_vo.setFun_account_balance(saving.getSavingbalance());
		//입출금 로그 추가
		accountDAO.addAccountLog(account_vo);
		//적금 통장 INSERT
		savingDAO.addSaving(saving);
		SavingVO saving_vo = savingDAO.obtainSavingVO(saving);
		
		//적금 통장 로그 가입비
		savingDAO.addSavingLog(saving_vo);
		//저축통장 상세 만들고
		savingDAO.addSavingDetail(saving_vo);
		//6개 Status 테이블에 저축통장 PK만 삽입
		statusDAO.addTargetBan(saving_vo);
		statusDAO.addTargetGwa(saving_vo);
		statusDAO.addTargetPay(saving_vo);
		statusDAO.addTargetSan(saving_vo);
		statusDAO.addTargetSlow(saving_vo);
		statusDAO.addTargetWeek(saving_vo);
		
		//게임INFO 추가
		gameDAO.addGameInfo(saving_vo);
		
		
	}

	public List<SavingVO> searchAllByMemberPk(int member_pk) {
		
		List<SavingVO> saving_vo = savingDAO.searchAllByMemberPk(member_pk);
		
		return saving_vo;
	}

	public SavingVO obtainSavingVOByMem(int fun_member_pk) {
		
		SavingVO saving_vo = savingDAO.obtainSavingVOByMem(fun_member_pk);
		
		return saving_vo;
		
		
	}

	public SavingDetailVO obtainSavingDetailVO(int saving_pk) {
		
		SavingDetailVO saving_detail = savingDAO.obtainSavingDetailVO(saving_pk);
		
		return saving_detail;
		
	}
	
	public List<SavingLogVO> selectAllSavingLog(int saving_pk) {
		
		List<SavingLogVO> saving_log_list = savingDAO.selectAllSavingLog(saving_pk);
		
		return saving_log_list;
		
	}

	public void updateSavingDetailVO(SavingDetailVO savingVO) {
		
		savingDAO.updateSavingDetailVO(savingVO);
		
	}

	public List<SavingDetailVO> obtainSavingDetailList() {
		
		List<SavingDetailVO> savingdetail_list = savingDAO.obtainSavingDetailList();
		
		return savingdetail_list;
		
	}

	public SavingVO obtainSavingVODay(int saving_pk) {
		
		
		SavingVO saving = savingDAO.obtainSavingVODay(saving_pk);
		
		return saving;
		
	}

	public void dayChange(SavingVO saving) {
		
		savingDAO.dayChange(saving);
		
		
	}

	public void dayPayChange(SavingVO saving) {
		
		savingDAO.dayPayChange(saving);
		
		
	}

	public void dayChangeWeek(SavingVO saving) {
		
		
		savingDAO.dayChangeWeek(saving);
		
	}

	public void updateWeekVO(TargetWeekVO weekvo) {
		
		
		savingDAO.updateWeekVO(weekvo);
	}

	public void daySanChange(SavingVO saving) {
		
		savingDAO.daySanChange(saving);
	}

	public int obtainYesterDaySum(int fun_pk) {
		
		int sum = savingDAO.obtainYesterDaySum(fun_pk);
		
		return sum;
	}

	public int obtainFunPk(SavingVO saving) {
		
		int fun_pk = savingDAO.obtainFunPk(saving);
		
		return fun_pk;
		
	}

	public AccountVO obtainAccVO(int account_pk) {
		
		AccountVO avo = savingDAO.obtainAccVO(account_pk);
		
		return avo;
		
	}

	public void dayChangeSan(SavingVO saving) {
		
		savingDAO.dayChangeSan(saving);
		
	}

	
	 
	
	
	
}

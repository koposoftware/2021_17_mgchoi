package kr.ac.kopo.totalservice;

import java.util.List;

import kr.ac.kopo.totalvo.AccountVO;
import kr.ac.kopo.totalvo.SavingVO;

public interface AccountService {

	List<AccountVO> searchAll(int member_pk); // 입출금 계
	
	AccountVO obtainAccountByPK(int account_pk);
	
}

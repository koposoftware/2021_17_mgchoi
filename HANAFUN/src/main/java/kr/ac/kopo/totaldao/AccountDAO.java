package kr.ac.kopo.totaldao;

import java.util.List;

import kr.ac.kopo.totalvo.AccountVO;

public interface AccountDAO {
	
	List<AccountVO> searchAll(int member_pk);

	void modifyAccount(AccountVO account_vo);

	AccountVO obtainAccountByPK(int account_pk);

	void addAccountLog(AccountVO account_vo);

	void updateBalance(int balance);

}

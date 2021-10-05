package kr.ac.kopo.totalservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.ac.kopo.totaldao.AccountDAO;
import kr.ac.kopo.totalvo.AccountVO;

@Service
public class AccountServiceImpl implements AccountService{

	
	@Autowired
	private AccountDAO accountDAO;
	
	//입출금 계좌
	public List<AccountVO> searchAll(int member_pk) {
		
		List<AccountVO> list = accountDAO.searchAll(member_pk);
		
		return list;
	}
	
	public AccountVO obtainAccountByPK(int account_pk) {
		
		AccountVO account = accountDAO.obtainAccountByPK(account_pk);
		
		return account;
	}

	
}

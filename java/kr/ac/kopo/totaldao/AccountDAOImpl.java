package kr.ac.kopo.totaldao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.ac.kopo.totalvo.AccountVO;

@Repository
public class AccountDAOImpl implements AccountDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<AccountVO> searchAll(int member_pk) {
		
		//여기 수정
		List<AccountVO> list = sqlSessionTemplate.selectList("account.AccountDAO.selectAllByMemPk", member_pk);
		
		return list;
	}

	public void modifyAccount(int savingbalance) {
		
		sqlSessionTemplate.update("account.AccountDAO.modifyAccount", savingbalance);
		
	}

	public AccountVO obtainAccountByPK(int account_pk) {
		
		AccountVO account = sqlSessionTemplate.selectOne("account.AccountDAO.obtainAccountByPK", account_pk);
		
		return account;
	}

	public void modifyAccount(AccountVO account_vo) {
		
		sqlSessionTemplate.update("account.AccountDAO.modifyAccount", account_vo);
		
	}

	public void addAccountLog(AccountVO account_vo) {
		
		sqlSessionTemplate.insert("account.AccountDAO.addAccountLog", account_vo);
		
	}

	public void updateBalance(int balance) {
		
		
		
	}
	
	

}

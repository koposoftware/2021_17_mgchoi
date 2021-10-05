package kr.ac.kopo.totaldao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.totalvo.FileVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.WishVO;

@Repository
public class FileDAOImpl implements FileDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void addFile(FileVO fileVO) {
		
		sqlSessionTemplate.insert("file.FileDAO.addFile" ,fileVO);
		
	}

	public int obtainPk() {
		
		int fpk = sqlSessionTemplate.selectOne("file.FileDAO.obtainPk");
		
		return fpk;
	}

	public List<FileVO> ObatinFileVOList() {
		
		List<FileVO> filevo_list = sqlSessionTemplate.selectList("file.FileDAO.ObatinFileVOList");
		
		return filevo_list;
	}

	public FileVO obtainFileVO(int p_file_id) {
		
		FileVO fileVO = sqlSessionTemplate.selectOne("file.FileDAO.obtainFileVO", p_file_id);
		
		return fileVO;
	}	
	
	
	
}

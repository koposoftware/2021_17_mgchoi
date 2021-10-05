package kr.ac.kopo.totalservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.totaldao.AccountDAO;
import kr.ac.kopo.totaldao.FileDAO;
import kr.ac.kopo.totaldao.SavingDAO;
import kr.ac.kopo.totaldao.StatusDAO;
import kr.ac.kopo.totaldao.WishDAO;
import kr.ac.kopo.totalvo.AccountVO;
import kr.ac.kopo.totalvo.FileVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.WishVO;

@Service
public class FileServiceImpl implements FileService {

	@Autowired
	private FileDAO fileDAO;
	
	public void addFile(FileVO fileVO) {
		
		fileDAO.addFile(fileVO);
		
		
	}

	public int obtainPk() {
		
		int fpk = fileDAO.obtainPk();
		
		return fpk;
	}

	public List<FileVO> ObatinFileVOList() {
		
		List<FileVO> filevo_list = fileDAO.ObatinFileVOList();
		
		return filevo_list;
	}

	public FileVO obtainFileVO(int p_file_id) {
		
		FileVO fileVO = fileDAO.obtainFileVO(p_file_id);
		
		return fileVO;
	}

	
	
}

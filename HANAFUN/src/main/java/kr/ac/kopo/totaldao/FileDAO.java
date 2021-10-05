package kr.ac.kopo.totaldao;

import java.util.List;

import kr.ac.kopo.totalvo.FileVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.WishVO;

public interface FileDAO {

	void addFile(FileVO fileVO);

	int obtainPk();

	List<FileVO> ObatinFileVOList();

	FileVO obtainFileVO(int p_file_id);

	
}

package kr.ac.kopo.totalservice;

import java.util.List;

import kr.ac.kopo.totalvo.FileVO;

public interface FileService {

	void addFile(FileVO fileVO);

	int obtainPk();

	List<FileVO> ObatinFileVOList();

	FileVO obtainFileVO(int p_file_id);

	
	
}

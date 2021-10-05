package kr.ac.kopo.totalcontroller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.totalservice.FileService;
import kr.ac.kopo.totalvo.FileVO;

@Controller
@RequestMapping(value = "/photo")
public class PhotoController {
	
	@Autowired
	private FileService fService;

	//시퀀스가 들어온거
	@RequestMapping(value = "/img/{photoSeq}")
	   public ResponseEntity<byte[]> photo(HttpServletRequest request, @PathVariable Long photoSeq) throws IOException {

	      FileVO photo = new FileVO();

	      List<FileVO> filevo_list = fService.ObatinFileVOList();
	      
	      for(int i= 0; i < filevo_list.size(); i++) {
	    	  
	    	  if(filevo_list.get(i).getP_file_pk() == photoSeq) photo = filevo_list.get(i);
	    	  
	      }
	      
	      String photoPath = null;


          photoPath = photo.getStored_name();

	      InputStream in = new FileInputStream(new File(photoPath));
	      HttpHeaders headers = new HttpHeaders();
	      headers.setContentType(MediaType.IMAGE_PNG);
	      headers.setContentLength(in.available());

	      return new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.OK);

	   }
}

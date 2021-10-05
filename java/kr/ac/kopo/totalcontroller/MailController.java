package kr.ac.kopo.totalcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.ac.kopo.totalservice.AccountService;
import kr.ac.kopo.totalservice.FileService;
import kr.ac.kopo.totalservice.SavingService;
import kr.ac.kopo.totalservice.StatusService;
import kr.ac.kopo.totalservice.WishService;

@Controller
public class MailController {
	
	@Autowired 
	private SavingService sService;
	
	@Autowired
	private AccountService aservice;
	
	@Autowired
	private WishService wservice;
	
	@Autowired
	private StatusService stService;
	
	@Autowired
	private FileService fService;
	
	
	
}

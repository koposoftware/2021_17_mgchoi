package kr.ac.kopo.totalcontroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.totalservice.AccountService;
import kr.ac.kopo.totalservice.FileService;
import kr.ac.kopo.totalservice.SavingService;
import kr.ac.kopo.totalservice.StatusService;
import kr.ac.kopo.totalservice.WishService;


/* 나중에 사용할거면 추가 */

@Controller
public class DashController {
	
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
	
	@GetMapping("/dashboard")
	public ModelAndView DashView(HttpServletRequest request, ModelAndView mav) {
		
		mav.setViewName("dashboard");
		
		return mav;
		
	}
	
}

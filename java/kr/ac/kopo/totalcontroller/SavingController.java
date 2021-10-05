package kr.ac.kopo.totalcontroller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.totalservice.AccountService;
import kr.ac.kopo.totalservice.SavingService;
import kr.ac.kopo.totalvo.AccountVO;
import kr.ac.kopo.totalvo.SavingVO;

import java.util.HashMap;
import org.json.simple.JSONObject;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
public class SavingController {
	
	
	@Autowired 
	private SavingService sService;
	
	@Autowired
	private AccountService aservice;
	
	
	@GetMapping("/savingcreate")
	public ModelAndView savingForm(HttpServletRequest request) {
	
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		List<AccountVO> list = aservice.searchAll(userVO.getFun_member_pk());
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("saving/savingform");
		
		mav.addObject("list", list);
		
		return mav;
		
		
	}
	
	@PostMapping("/savingcreateprocess")
	public ModelAndView savingFormProcess(ModelAndView mav, SavingVO saving, 
			AccountVO accountVO, MemberVO memberVO, HttpServletRequest request) {
		
		String api_key = "NCSPH5NCKBY5G65G";
	    String api_secret = "WGGMJ5WJJ6EHWSAAGS4FYBHY3IDBQRUW";
	    Message coolsms = new Message(api_key, api_secret);

	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", "010-9494-6938");
	    params.put("from", "010-9494-6938"); //무조건 자기번호 (인증)
	    params.put("type", "SMS");
	    params.put("text", "적금 통장 개설이 완료되었습니다. 목표 설정을 통해 자신만의 목표를 이뤄보세요!");
	    params.put("app_version", "test app 1.2"); // application name and version

	    try {
	    	//send() 는 메시지를 보내는 함수  
	      JSONObject obj = (JSONObject) coolsms.send(params);
	      System.out.println(obj.toString());
	    } catch (CoolsmsException e) {
	      System.out.println(e.getMessage());
	      System.out.println(e.getCode());
	    }




		
		Random random = new Random();
		String account_num = "";
		
		//적금 계좌번호 생성
		for(int i = 0; i < 15; i++) {
			
			int a = random.nextInt(10);
			
			if(i == 3 || i == 9) {
				
				account_num += '-';
				
			}
			
			else {
				account_num += Integer.toString(a);
			}
			
		}
		
		
		saving.setFun_member_pk(memberVO.getFun_member_pk());
		saving.setSavingnum(account_num); // 계좌번호
		saving.setAccount_pk(accountVO.getFun_account_pk());
		
		if(saving.getSaving_duedate().equals("6month")) {
			
			saving.setSavinginterest(0.0065);
			
		}
		
		else {
			
			saving.setSavinginterest(0.0075);
			
		}
		//입출금 계좌에서 빼줘야해(가입금액)
		sService.addSaving(saving);
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		mav.addObject("savingpk", saving_vo.getSaving_pk());
		
		mav.setViewName("wishset");
		
		return mav;
		
		
	}
	
}

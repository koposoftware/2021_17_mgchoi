package kr.ac.kopo.scheduler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import kr.ac.kopo.totalservice.AccountService;
import kr.ac.kopo.totalservice.SavingService;
import kr.ac.kopo.totalservice.StatusService;
import kr.ac.kopo.totalvo.AccountVO;
import kr.ac.kopo.totalvo.SavingDetailVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.TargetPayVO;
import kr.ac.kopo.totalvo.TargetSanVO;
import kr.ac.kopo.totalvo.TargetSlowVO;
import kr.ac.kopo.totalvo.TargetWeekVO;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Component
public class Scheduler {
  
	@Autowired 
	private SavingService sService;
	
	@Autowired
	private StatusService stService;
	
	@Autowired
	private AccountService aservice;
	
  //매일 00시
  @Scheduled(cron = "0 0 0 * * *")
  public void autoUpdate() throws Exception {
	  
	  	Date now = new Date();
	  	Calendar cal = Calendar.getInstance();
	  	int day = cal.get(Calendar.DAY_OF_MONTH);
	  
	  	System.out.println("success");
	  	
		  List<SavingDetailVO> saving_detail = sService.obtainSavingDetailList();
		  
		  System.out.println("asdasd");
		  
		  for(int i = 0; i < saving_detail.size(); i++) {
		  
			  //저축주기 하루인사람 if(saving_detail.get(i).getSecond_status() == 1) {
			  
			  TargetSlowVO slowvo = stService.selectSlowStatus(saving_detail.get(i).getSaving_pk());
			  TargetPayVO payvo = stService.selectPayStatus(saving_detail.get(i).getSaving_pk());
			  //이녀석이 매일 돈처리 
			  
			  if(slowvo.getTarget_slow_date() == 1) {
			  
			  //프로시저 인자로 호출해버리자 //입출금 통장에서 빼주고 //저축통장에 넣고 //로그 두개 수정 
				  SavingVO saving = sService.obtainSavingVODay(saving_detail.get(i).getSaving_pk());
				  sService.obtainSavingVODay(saving_detail.get(i).getSaving_pk());
				  sService.dayChange(saving); 
		  
			  }
			  
			  //오늘 날짜가 월급날이라면
			  //입출금 통장에 월급넣고 로그 기록하고
			  //저축 통장에 월급%비율 넣고 기록하자
			  if(payvo.getTarget_pay_date() == day) {
				  
				  SavingVO saving = sService.obtainSavingVODay(saving_detail.get(i).getSaving_pk());
				  sService.obtainSavingVODay(saving_detail.get(i).getSaving_pk());
				  sService.dayPayChange(saving); 
				  
			  }
			  
			  
			  
			  
		  
		 
		  }
	  System.out.println("success");
	  
  }
  
  //일요일 00시
  @Scheduled(cron = "0 0 1 ? * 1")
  public void autoUpdate1() throws Exception {
	  
	  	  System.out.println("success");
	  	
		  List<SavingDetailVO> saving_detail = sService.obtainSavingDetailList();
		  
		  System.out.println("asdasd");
		  
		  for(int i = 0; i < saving_detail.size(); i++) {
			  
			  if(saving_detail.get(i).getFirst_status() == 1) {
				  
				  //매주UP 프로시저 호출
				  //입출금 로그, 저축 로그, 돈 +, -, 매주 증액 시켜 주고 멈출금액이면 STOP
				  SavingVO saving = sService.obtainSavingVODay(saving_detail.get(i).getSaving_pk());
				  sService.obtainSavingVODay(saving_detail.get(i).getSaving_pk());
				  sService.dayChangeWeek(saving);
				  TargetWeekVO weekvo = stService.selectWeekStatus(saving_detail.get(i).getSaving_pk());
				  
				  //STOP 금액 도달
				  if(weekvo.getTarget_week_now() == weekvo.getTarget_week_stop()) {
					
					  sService.updateWeekVO(weekvo);
					  
				  }
				  
				  	  
			  }
			  
			  if(saving_detail.get(i).getSecond_status() == 1) {
				  
				  TargetSlowVO slowvo = stService.selectSlowStatus(saving_detail.get(i).getSaving_pk());
				  
				  //저축주기 7일일때,
				  if(slowvo.getTarget_slow_date() == 7) {
					  
					//저축 주기 프로시저
					//입출금 로그, 저축 로그, 돈 +, 돈 -
					  SavingVO saving = sService.obtainSavingVODay(saving_detail.get(i).getSaving_pk());
					  sService.obtainSavingVODay(saving_detail.get(i).getSaving_pk());
					  sService.dayChange(saving); 
				  }
				  
			  }
			  
			  //예산절감
			  if(saving_detail.get(i).getSix_status() == 1) {
				  
				  SavingVO saving = sService.obtainSavingVODay(saving_detail.get(i).getSaving_pk());
				  TargetSanVO sanvo = stService.selectSanStatus(saving_detail.get(i).getSaving_pk());
				  //어제 출금합계 가져오기
				  int fun_acc_pk = sService.obtainFunPk(saving);
				  int sum = sService.obtainYesterDaySum(fun_acc_pk);
				  
				  //예산절감 go
				  if(sum < sanvo.getTarget_san_balance()) {
					  
					  saving.setSavingbalance(sanvo.getTarget_san_balance() - sum);
					  sService.dayChangeSan(saving);
					  
				  }
				  
			  }
			  
		 
		  }
	  System.out.println("success");
	  
  }
  
  //매달 1일
  @Scheduled(cron = "0 0 0 1 * *")
  public void autoUpdate2() throws Exception {
  
	  List<SavingDetailVO> saving_detail = sService.obtainSavingDetailList();
	  
	  for(int i = 0; i < saving_detail.size(); i++) {
		  
		  if(saving_detail.get(i).getSecond_status() == 1) {
			  
			  TargetSlowVO slowvo = stService.selectSlowStatus(saving_detail.get(i).getSaving_pk());
			  
			  //저축주기 7일일때,
			  if(slowvo.getTarget_slow_date() == 30) {
				  
				//저축 주기 프로시저
				//입출금 로그, 저축 로그, 돈 +, 돈 -
				  //프로시저호출
				  SavingVO saving = sService.obtainSavingVODay(saving_detail.get(i).getSaving_pk());
				  sService.obtainSavingVODay(saving_detail.get(i).getSaving_pk());
				  sService.dayChange(saving);
			  }
			  
		  }
		  
	  }
	  
  }
}

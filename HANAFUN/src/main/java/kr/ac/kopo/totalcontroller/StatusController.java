package kr.ac.kopo.totalcontroller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.MissingMatrixVariableException;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.totalservice.AccountService;
import kr.ac.kopo.totalservice.FileService;
import kr.ac.kopo.totalservice.GameService;
import kr.ac.kopo.totalservice.SavingService;
import kr.ac.kopo.totalservice.StatusService;
import kr.ac.kopo.totalservice.WishService;
import kr.ac.kopo.totalvo.AccountVO;
import kr.ac.kopo.totalvo.FileVO;
import kr.ac.kopo.totalvo.GameCardVO;
import kr.ac.kopo.totalvo.GameInfoVO;
import kr.ac.kopo.totalvo.SavingDetailVO;
import kr.ac.kopo.totalvo.SavingLogVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.TargetBanVO;
import kr.ac.kopo.totalvo.TargetGwaVO;
import kr.ac.kopo.totalvo.TargetPayVO;
import kr.ac.kopo.totalvo.TargetSanVO;
import kr.ac.kopo.totalvo.TargetSlowVO;
import kr.ac.kopo.totalvo.TargetWeekVO;
import kr.ac.kopo.totalvo.WishVO;
import kr.ac.kopo.util.DateUtils;

@Controller
public class StatusController {
	
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
	
	@PostMapping("/updateWeek")
	public ModelAndView objectView(ModelAndView mav, TargetWeekVO weekVO1, HttpServletRequest request) throws ParseException {
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		weekVO1.setSaving_pk(saving_vo.getSaving_pk());
		
		System.out.println(weekVO1);
		System.out.println("=================");
		
		//week update
		stService.updateWeek(weekVO1);
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		WishVO wish = wish_list.get(0);
		
		AccountVO acc = aservice.obtainAccountByPK(saving_vo.getAccount_pk());
		TargetBanVO banVO = stService.selectBanStatus(saving_vo.getSaving_pk());
		TargetGwaVO gwaVO = stService.selectGwaStatus(saving_vo.getSaving_pk());
		TargetPayVO payVO = stService.selectPayStatus(saving_vo.getSaving_pk());
		TargetSanVO sanVO = stService.selectSanStatus(saving_vo.getSaving_pk());
		TargetSlowVO slowVO = stService.selectSlowStatus(saving_vo.getSaving_pk());
		TargetWeekVO weekVO = stService.selectWeekStatus(saving_vo.getSaving_pk());
		
		mav.addObject("wish", wish);
		mav.addObject("wish_list", wish_list);
		mav.addObject("saving_vo", saving_vo);
		mav.addObject("acc", acc);
		
		SavingDetailVO saving_detail = sService.obtainSavingDetailVO(saving_vo.getSaving_pk());
		
		//예상저축액 뿌리는곳//
		int predict_money = 0;
		int first_status_money = 0;
		int second_status_money = 0;
		int third_status_money = 0;
		//52주규칙
		if(saving_detail.getFirst_status() == 1) {
			
			first_status_money = weekVO.getTarget_week_now();
			
			predict_money += weekVO.getTarget_week_now();
		}
		
		else {
			
			first_status_money = weekVO.getTarget_week_now();
			
		}
		
		if(saving_detail.getSecond_status() == 1) {
			
			//일주일 마다 라면
			if(slowVO.getTarget_slow_date() == 1) {
				
				// 현재 날짜 구하기
				Calendar cal = Calendar.getInstance();
				// 포맷 정의
				int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
				
				switch (dayOfWeek) {
				
					//일요일
					case 7:
						predict_money += 7 * slowVO.getTarget_slow_balance();
						second_status_money = 7 * slowVO.getTarget_slow_balance();
						break;
					case 6:
						predict_money += 6 * slowVO.getTarget_slow_balance();
						second_status_money = 6 * slowVO.getTarget_slow_balance();
						break;
					case 5:
						predict_money += 5 * slowVO.getTarget_slow_balance();
						second_status_money = 5 * slowVO.getTarget_slow_balance();
						break;
					case 4:
						predict_money += 4 * slowVO.getTarget_slow_balance();
						second_status_money = 4 * slowVO.getTarget_slow_balance();
						break;
					case 3:
						predict_money += 3 * slowVO.getTarget_slow_balance();
						second_status_money = 3 * slowVO.getTarget_slow_balance();
						break;
					case 2:
						predict_money += 2 * slowVO.getTarget_slow_balance();
						second_status_money = 2 * slowVO.getTarget_slow_balance();
						break;
					case 1:
						predict_money += 1 * slowVO.getTarget_slow_balance();
						second_status_money = 1 * slowVO.getTarget_slow_balance();
						break;
				
				}
			} else if(slowVO.getTarget_slow_date() == 7) {
				
				predict_money += slowVO.getTarget_slow_balance();
				second_status_money = slowVO.getTarget_slow_balance();
				
			}
		} else {
			
			//일주일 마다 라면
			if(slowVO.getTarget_slow_date() == 1) {
				
				// 현재 날짜 구하기
				Calendar cal = Calendar.getInstance();
				// 포맷 정의
				int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
				
				switch (dayOfWeek) {
				
					//일요일
					case 7:
						second_status_money = 7 * slowVO.getTarget_slow_balance();
						break;
					case 6:
						second_status_money = 6 * slowVO.getTarget_slow_balance();
						break;
					case 5:
						second_status_money = 5 * slowVO.getTarget_slow_balance();
						break;
					case 4:
						second_status_money = 4 * slowVO.getTarget_slow_balance();
						break;
					case 3:
						second_status_money = 3 * slowVO.getTarget_slow_balance();
						break;
					case 2:
						second_status_money = 2 * slowVO.getTarget_slow_balance();
						break;
					case 1:
						second_status_money = 1 * slowVO.getTarget_slow_balance();
						break;
				
				}
			} else if(slowVO.getTarget_slow_date() == 7) {
				
				second_status_money = slowVO.getTarget_slow_balance();
				
			}
			
		}
		
		if(saving_detail.getThird_status() == 1) {
			
			String a = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),1-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			String b = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),7-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			
			String c = DateUtils.changeYMD(a);
			String d = DateUtils.changeYMD(b);
			
			c = c.substring(c.length()-2, c.length());
			d = d.substring(d.length()-2, d.length());
			
			int e = Integer.parseInt(c);
			int f = Integer.parseInt(d);
			
			if(e <= payVO.getTarget_pay_date() && payVO.getTarget_pay_date() <= f) {
				
				predict_money += ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				third_status_money = ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				
			}
	
		} else {
			
			String a = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),1-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			String b = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),7-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			
			String c = DateUtils.changeYMD(a);
			String d = DateUtils.changeYMD(b);
			
			c = c.substring(c.length()-2, c.length());
			d = d.substring(d.length()-2, d.length());
			
			int e = Integer.parseInt(c);
			int f = Integer.parseInt(d);
			
			if(e <= payVO.getTarget_pay_date() && payVO.getTarget_pay_date() <= f) {
				
				third_status_money = ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				
			}
			
		}
		
		List<SavingDetailVO> savingdetail_list = sService.obtainSavingDetailList();
		
		int fir_cnt = 0;
		int sec_cnt = 0;
		int thi_cnt = 0;
		
		
		for(int i = 0; i < savingdetail_list.size(); i++) {
			
			if(savingdetail_list.get(i).getFirst_status() == 1) fir_cnt++;
			
			if(savingdetail_list.get(i).getSecond_status() == 1) sec_cnt++;
			
			if(savingdetail_list.get(i).getThird_status() == 1) thi_cnt++;
			
			
		}
		
		int fir_sum = 0;
		int sec_sum = 0;
		int thi_sum = 0;
		int fou_sum = 0;
		int fiv_sum = 0;
		int six_sum = 0;
		
		List<SavingLogVO> saving_log_list2 = sService.selectAllSavingLog(saving_vo.getSaving_pk());
		
		for(int i = 0; i < saving_log_list2.size(); i++) {
			
			saving_log_list2.get(i).setSaving_date(saving_log_list2.get(i).getSaving_date().split("\\s")[0]);
			
			if(saving_log_list2.get(i).getSaving_category().equals("매주규칙")) {
				
				fir_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("슬금슬금")) {
							
				sec_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("월급날규칙")) {
				
				thi_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("반올림")) {
				
				fou_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("과소비")) {
				
				fiv_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("예산절감")) {
				
				six_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			
		}
		
		List<SavingLogVO> saving_log_list = new ArrayList<SavingLogVO>();
		
		for(int i = 0; i < saving_log_list2.size() / 2; i++) {
			
			saving_log_list.add(saving_log_list2.get(i));
			
		}
		
		//FILE
		FileVO fileVO = fService.obtainFileVO(wish.getP_file_id());
		
		mav.addObject("fir_sum", fir_sum);
		mav.addObject("sec_sum", sec_sum);
		mav.addObject("thi_sum", thi_sum);
		mav.addObject("fou_sum", fou_sum);
		mav.addObject("fiv_sum", fiv_sum);
		mav.addObject("six_sum", six_sum);
		
		mav.addObject("fileVO", fileVO);
		mav.addObject("saving_log_list", saving_log_list);
		mav.addObject("fir_cnt", fir_cnt);
		mav.addObject("sec_cnt", sec_cnt);
		mav.addObject("thi_cnt", thi_cnt);
		
		mav.addObject("predict_money", predict_money);
		mav.addObject("saving_detail", saving_detail);
		System.out.println(saving_detail);
		mav.addObject("weekVO", weekVO);
		mav.addObject("slowVO", slowVO);
		mav.addObject("payVO", payVO);
		mav.addObject("banVO", banVO);
		mav.addObject("gwaVO", gwaVO);
		mav.addObject("sanVO", sanVO);
		mav.addObject("first_status_money", first_status_money);
		mav.addObject("second_status_money", second_status_money);
		mav.addObject("third_status_money", third_status_money);
		
		
		String aa = "";
		String target_date = "";
		String target_date_dd = "";
		String bb = "";
		String dday = "";
		
		double percent = 0;
			
		percent = (double)saving_vo.getSavingbalance() / (double)wish.getTarget_price();
		
		aa = wish.getStart_date().substring(0, 10);
		
		System.out.println(aa);
		
		target_date = aa.substring(0, 4) + aa.substring(5, 7); 
		
		target_date_dd = aa.substring(8, 10);
		
		bb = aa.substring(0, 4) + aa.substring(5, 7) + aa.substring(8, 10); 
	
		aa = DateUtils.addMonth(target_date, wish.getDuration());
		
		System.out.println(aa + target_date_dd);
		
		aa = aa + target_date_dd;
		
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMdd");
		
		Calendar c1 = Calendar.getInstance();
		
		String strToday = sdf1.format(c1.getTime());
		
		String format = "yyyyMMdd"; 
		
		SimpleDateFormat sdf = new SimpleDateFormat(format, Locale.ENGLISH); 
		
		Date firstDate = sdf.parse(strToday); 
		
		Date secondDate = sdf.parse(aa); 
		
		long diffInMillies = Math.abs(secondDate.getTime() - firstDate.getTime()); 
		
		long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
		
		mav.addObject("diff", diff);
		mav.addObject("percent", percent * 100);
		
		mav.setViewName("saveset");
		
		return mav;
		
		
	}
	
	@PostMapping("/updateSlow")
	public ModelAndView updateSlow(ModelAndView mav, TargetSlowVO SlowVO1, HttpServletRequest request) throws ParseException {
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		SlowVO1.setSaving_pk(saving_vo.getSaving_pk());
		
		System.out.println(SlowVO1);
		System.out.println("=================");
		
		//week update
		stService.updateSlow(SlowVO1);
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		WishVO wish = wish_list.get(0);
		
		AccountVO acc = aservice.obtainAccountByPK(saving_vo.getAccount_pk());
		TargetBanVO banVO = stService.selectBanStatus(saving_vo.getSaving_pk());
		TargetGwaVO gwaVO = stService.selectGwaStatus(saving_vo.getSaving_pk());
		TargetPayVO payVO = stService.selectPayStatus(saving_vo.getSaving_pk());
		TargetSanVO sanVO = stService.selectSanStatus(saving_vo.getSaving_pk());
		TargetSlowVO slowVO = stService.selectSlowStatus(saving_vo.getSaving_pk());
		TargetWeekVO weekVO = stService.selectWeekStatus(saving_vo.getSaving_pk());
		
		mav.addObject("wish", wish);
		mav.addObject("wish_list", wish_list);
		mav.addObject("saving_vo", saving_vo);
		mav.addObject("acc", acc);
		
		SavingDetailVO saving_detail = sService.obtainSavingDetailVO(saving_vo.getSaving_pk());
		
		//예상저축액 뿌리는곳//
		int predict_money = 0;
		int first_status_money = 0;
		int second_status_money = 0;
		int third_status_money = 0;
		//52주규칙
		if(saving_detail.getFirst_status() == 1) {
			
			first_status_money = weekVO.getTarget_week_now();
			
			predict_money += weekVO.getTarget_week_now();
		}
		
		else {
			
			first_status_money = weekVO.getTarget_week_now();
			
		}
		
		if(saving_detail.getSecond_status() == 1) {
			
			//일주일 마다 라면
			if(slowVO.getTarget_slow_date() == 1) {
				
				// 현재 날짜 구하기
				Calendar cal = Calendar.getInstance();
				// 포맷 정의
				int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
				
				switch (dayOfWeek) {
				
					//일요일
					case 7:
						predict_money += 7 * slowVO.getTarget_slow_balance();
						second_status_money = 7 * slowVO.getTarget_slow_balance();
						break;
					case 6:
						predict_money += 6 * slowVO.getTarget_slow_balance();
						second_status_money = 6 * slowVO.getTarget_slow_balance();
						break;
					case 5:
						predict_money += 5 * slowVO.getTarget_slow_balance();
						second_status_money = 5 * slowVO.getTarget_slow_balance();
						break;
					case 4:
						predict_money += 4 * slowVO.getTarget_slow_balance();
						second_status_money = 4 * slowVO.getTarget_slow_balance();
						break;
					case 3:
						predict_money += 3 * slowVO.getTarget_slow_balance();
						second_status_money = 3 * slowVO.getTarget_slow_balance();
						break;
					case 2:
						predict_money += 2 * slowVO.getTarget_slow_balance();
						second_status_money = 2 * slowVO.getTarget_slow_balance();
						break;
					case 1:
						predict_money += 1 * slowVO.getTarget_slow_balance();
						second_status_money = 1 * slowVO.getTarget_slow_balance();
						break;
				
				}
			} else if(slowVO.getTarget_slow_date() == 7) {
				
				predict_money += slowVO.getTarget_slow_balance();
				second_status_money = slowVO.getTarget_slow_balance();
				
			}
		} else {
			
			//일주일 마다 라면
			if(slowVO.getTarget_slow_date() == 1) {
				
				// 현재 날짜 구하기
				Calendar cal = Calendar.getInstance();
				// 포맷 정의
				int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
				
				switch (dayOfWeek) {
				
					//일요일
					case 7:
						second_status_money = 7 * slowVO.getTarget_slow_balance();
						break;
					case 6:
						second_status_money = 6 * slowVO.getTarget_slow_balance();
						break;
					case 5:
						second_status_money = 5 * slowVO.getTarget_slow_balance();
						break;
					case 4:
						second_status_money = 4 * slowVO.getTarget_slow_balance();
						break;
					case 3:
						second_status_money = 3 * slowVO.getTarget_slow_balance();
						break;
					case 2:
						second_status_money = 2 * slowVO.getTarget_slow_balance();
						break;
					case 1:
						second_status_money = 1 * slowVO.getTarget_slow_balance();
						break;
				
				}
			} else if(slowVO.getTarget_slow_date() == 7) {
				
				second_status_money = slowVO.getTarget_slow_balance();
				
			}
			
		}
		
		if(saving_detail.getThird_status() == 1) {
			
			String a = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),1-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			String b = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),7-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			
			String c = DateUtils.changeYMD(a);
			String d = DateUtils.changeYMD(b);
			
			c = c.substring(c.length()-2, c.length());
			d = d.substring(d.length()-2, d.length());
			
			int e = Integer.parseInt(c);
			int f = Integer.parseInt(d);
			
			if(e <= payVO.getTarget_pay_date() && payVO.getTarget_pay_date() <= f) {
				
				predict_money += ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				third_status_money = ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				
			}
	
		} else {
			
			String a = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),1-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			String b = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),7-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			
			String c = DateUtils.changeYMD(a);
			String d = DateUtils.changeYMD(b);
			
			c = c.substring(c.length()-2, c.length());
			d = d.substring(d.length()-2, d.length());
			
			int e = Integer.parseInt(c);
			int f = Integer.parseInt(d);
			
			if(e <= payVO.getTarget_pay_date() && payVO.getTarget_pay_date() <= f) {
				
				third_status_money = ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				
			}
			
		}
		
		List<SavingDetailVO> savingdetail_list = sService.obtainSavingDetailList();
		
		int fir_cnt = 0;
		int sec_cnt = 0;
		int thi_cnt = 0;
		
		
		for(int i = 0; i < savingdetail_list.size(); i++) {
			
			if(savingdetail_list.get(i).getFirst_status() == 1) fir_cnt++;
			
			if(savingdetail_list.get(i).getSecond_status() == 1) sec_cnt++;
			
			if(savingdetail_list.get(i).getThird_status() == 1) thi_cnt++;
			
			
		}
		
		int fir_sum = 0;
		int sec_sum = 0;
		int thi_sum = 0;
		int fou_sum = 0;
		int fiv_sum = 0;
		int six_sum = 0;
		
		List<SavingLogVO> saving_log_list2 = sService.selectAllSavingLog(saving_vo.getSaving_pk());
		
		for(int i = 0; i < saving_log_list2.size(); i++) {
			
			saving_log_list2.get(i).setSaving_date(saving_log_list2.get(i).getSaving_date().split("\\s")[0]);
			
			if(saving_log_list2.get(i).getSaving_category().equals("매주규칙")) {
				
				fir_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("슬금슬금")) {
							
				sec_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("월급날규칙")) {
				
				thi_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("반올림")) {
				
				fou_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("과소비")) {
				
				fiv_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("예산절감")) {
				
				six_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			
		}
		
		List<SavingLogVO> saving_log_list = new ArrayList<SavingLogVO>();
		
		for(int i = 0; i < saving_log_list2.size() / 2; i++) {
			
			saving_log_list.add(saving_log_list2.get(i));
			
		}
		
		//FILE
		FileVO fileVO = fService.obtainFileVO(wish.getP_file_id());
		
		mav.addObject("fir_sum", fir_sum);
		mav.addObject("sec_sum", sec_sum);
		mav.addObject("thi_sum", thi_sum);
		mav.addObject("fou_sum", fou_sum);
		mav.addObject("fiv_sum", fiv_sum);
		mav.addObject("six_sum", six_sum);
		
		mav.addObject("fileVO", fileVO);
		mav.addObject("saving_log_list", saving_log_list);
		mav.addObject("fir_cnt", fir_cnt);
		mav.addObject("sec_cnt", sec_cnt);
		mav.addObject("thi_cnt", thi_cnt);
		
		mav.addObject("predict_money", predict_money);
		mav.addObject("saving_detail", saving_detail);
		System.out.println(saving_detail);
		mav.addObject("weekVO", weekVO);
		mav.addObject("slowVO", slowVO);
		mav.addObject("payVO", payVO);
		mav.addObject("banVO", banVO);
		mav.addObject("gwaVO", gwaVO);
		mav.addObject("sanVO", sanVO);
		mav.addObject("first_status_money", first_status_money);
		mav.addObject("second_status_money", second_status_money);
		mav.addObject("third_status_money", third_status_money);
		
		
		String aa = "";
		String target_date = "";
		String target_date_dd = "";
		String bb = "";
		String dday = "";
		
		double percent = 0;
			
		percent = (double)saving_vo.getSavingbalance() / (double)wish.getTarget_price();
		
		aa = wish.getStart_date().substring(0, 10);
		
		System.out.println(aa);
		
		target_date = aa.substring(0, 4) + aa.substring(5, 7); 
		
		target_date_dd = aa.substring(8, 10);
		
		bb = aa.substring(0, 4) + aa.substring(5, 7) + aa.substring(8, 10); 
	
		aa = DateUtils.addMonth(target_date, wish.getDuration());
		
		System.out.println(aa + target_date_dd);
		
		aa = aa + target_date_dd;
		
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMdd");
		
		Calendar c1 = Calendar.getInstance();
		
		String strToday = sdf1.format(c1.getTime());
		
		String format = "yyyyMMdd"; 
		
		SimpleDateFormat sdf = new SimpleDateFormat(format, Locale.ENGLISH); 
		
		Date firstDate = sdf.parse(strToday); 
		
		Date secondDate = sdf.parse(aa); 
		
		long diffInMillies = Math.abs(secondDate.getTime() - firstDate.getTime()); 
		
		long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
		
		mav.addObject("diff", diff);
		mav.addObject("percent", percent * 100);
		
		mav.setViewName("saveset");
		
		return mav;
		
		
	}
	
	@PostMapping("/updatePay")
	public ModelAndView updatePay(ModelAndView mav, TargetPayVO PayVO1, HttpServletRequest request) throws ParseException {
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		PayVO1.setSaving_pk(saving_vo.getSaving_pk());
		
		System.out.println(PayVO1);
		System.out.println("=================");
		
		//week update
		stService.updatePay(PayVO1);
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		WishVO wish = wish_list.get(0);
		
		AccountVO acc = aservice.obtainAccountByPK(saving_vo.getAccount_pk());
		TargetBanVO banVO = stService.selectBanStatus(saving_vo.getSaving_pk());
		TargetGwaVO gwaVO = stService.selectGwaStatus(saving_vo.getSaving_pk());
		TargetPayVO payVO = stService.selectPayStatus(saving_vo.getSaving_pk());
		TargetSanVO sanVO = stService.selectSanStatus(saving_vo.getSaving_pk());
		TargetSlowVO slowVO = stService.selectSlowStatus(saving_vo.getSaving_pk());
		TargetWeekVO weekVO = stService.selectWeekStatus(saving_vo.getSaving_pk());
		
		mav.addObject("wish", wish);
		mav.addObject("wish_list", wish_list);
		mav.addObject("saving_vo", saving_vo);
		mav.addObject("acc", acc);
		
		SavingDetailVO saving_detail = sService.obtainSavingDetailVO(saving_vo.getSaving_pk());
		
		//예상저축액 뿌리는곳//
		int predict_money = 0;
		int first_status_money = 0;
		int second_status_money = 0;
		int third_status_money = 0;
		//52주규칙
		if(saving_detail.getFirst_status() == 1) {
			
			first_status_money = weekVO.getTarget_week_now();
			
			predict_money += weekVO.getTarget_week_now();
		}
		
		else {
			
			first_status_money = weekVO.getTarget_week_now();
			
		}
		
		if(saving_detail.getSecond_status() == 1) {
			
			//일주일 마다 라면
			if(slowVO.getTarget_slow_date() == 1) {
				
				// 현재 날짜 구하기
				Calendar cal = Calendar.getInstance();
				// 포맷 정의
				int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
				
				switch (dayOfWeek) {
				
					//일요일
					case 7:
						predict_money += 7 * slowVO.getTarget_slow_balance();
						second_status_money = 7 * slowVO.getTarget_slow_balance();
						break;
					case 6:
						predict_money += 6 * slowVO.getTarget_slow_balance();
						second_status_money = 6 * slowVO.getTarget_slow_balance();
						break;
					case 5:
						predict_money += 5 * slowVO.getTarget_slow_balance();
						second_status_money = 5 * slowVO.getTarget_slow_balance();
						break;
					case 4:
						predict_money += 4 * slowVO.getTarget_slow_balance();
						second_status_money = 4 * slowVO.getTarget_slow_balance();
						break;
					case 3:
						predict_money += 3 * slowVO.getTarget_slow_balance();
						second_status_money = 3 * slowVO.getTarget_slow_balance();
						break;
					case 2:
						predict_money += 2 * slowVO.getTarget_slow_balance();
						second_status_money = 2 * slowVO.getTarget_slow_balance();
						break;
					case 1:
						predict_money += 1 * slowVO.getTarget_slow_balance();
						second_status_money = 1 * slowVO.getTarget_slow_balance();
						break;
				
				}
			} else if(slowVO.getTarget_slow_date() == 7) {
				
				predict_money += slowVO.getTarget_slow_balance();
				second_status_money = slowVO.getTarget_slow_balance();
				
			}
		} else {
			
			//일주일 마다 라면
			if(slowVO.getTarget_slow_date() == 1) {
				
				// 현재 날짜 구하기
				Calendar cal = Calendar.getInstance();
				// 포맷 정의
				int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
				
				switch (dayOfWeek) {
				
					//일요일
					case 7:
						second_status_money = 7 * slowVO.getTarget_slow_balance();
						break;
					case 6:
						second_status_money = 6 * slowVO.getTarget_slow_balance();
						break;
					case 5:
						second_status_money = 5 * slowVO.getTarget_slow_balance();
						break;
					case 4:
						second_status_money = 4 * slowVO.getTarget_slow_balance();
						break;
					case 3:
						second_status_money = 3 * slowVO.getTarget_slow_balance();
						break;
					case 2:
						second_status_money = 2 * slowVO.getTarget_slow_balance();
						break;
					case 1:
						second_status_money = 1 * slowVO.getTarget_slow_balance();
						break;
				
				}
			} else if(slowVO.getTarget_slow_date() == 7) {
				
				second_status_money = slowVO.getTarget_slow_balance();
				
			}
			
		}
		
		if(saving_detail.getThird_status() == 1) {
			
			String a = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),1-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			String b = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),7-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			
			String c = DateUtils.changeYMD(a);
			String d = DateUtils.changeYMD(b);
			
			c = c.substring(c.length()-2, c.length());
			d = d.substring(d.length()-2, d.length());
			
			int e = Integer.parseInt(c);
			int f = Integer.parseInt(d);
			
			if(e <= payVO.getTarget_pay_date() && payVO.getTarget_pay_date() <= f) {
				
				predict_money += ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				third_status_money = ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				
			}
	
		} else {
			
			String a = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),1-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			String b = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),7-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			
			String c = DateUtils.changeYMD(a);
			String d = DateUtils.changeYMD(b);
			
			c = c.substring(c.length()-2, c.length());
			d = d.substring(d.length()-2, d.length());
			
			int e = Integer.parseInt(c);
			int f = Integer.parseInt(d);
			
			if(e <= payVO.getTarget_pay_date() && payVO.getTarget_pay_date() <= f) {
				
				third_status_money = ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				
			}
			
		}
		
		List<SavingDetailVO> savingdetail_list = sService.obtainSavingDetailList();
		
		int fir_cnt = 0;
		int sec_cnt = 0;
		int thi_cnt = 0;
		
		
		for(int i = 0; i < savingdetail_list.size(); i++) {
			
			if(savingdetail_list.get(i).getFirst_status() == 1) fir_cnt++;
			
			if(savingdetail_list.get(i).getSecond_status() == 1) sec_cnt++;
			
			if(savingdetail_list.get(i).getThird_status() == 1) thi_cnt++;
			
			
		}
		
		int fir_sum = 0;
		int sec_sum = 0;
		int thi_sum = 0;
		int fou_sum = 0;
		int fiv_sum = 0;
		int six_sum = 0;
		
		List<SavingLogVO> saving_log_list2 = sService.selectAllSavingLog(saving_vo.getSaving_pk());
		
		for(int i = 0; i < saving_log_list2.size(); i++) {
			
			saving_log_list2.get(i).setSaving_date(saving_log_list2.get(i).getSaving_date().split("\\s")[0]);
			
			if(saving_log_list2.get(i).getSaving_category().equals("매주규칙")) {
				
				fir_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("슬금슬금")) {
							
				sec_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("월급날규칙")) {
				
				thi_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("반올림")) {
				
				fou_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("과소비")) {
				
				fiv_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("예산절감")) {
				
				six_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			
		}
		
		List<SavingLogVO> saving_log_list = new ArrayList<SavingLogVO>();
		
		for(int i = 0; i < saving_log_list2.size() / 2; i++) {
			
			saving_log_list.add(saving_log_list2.get(i));
			
		}
		
		//FILE
		FileVO fileVO = fService.obtainFileVO(wish.getP_file_id());
		
		mav.addObject("fir_sum", fir_sum);
		mav.addObject("sec_sum", sec_sum);
		mav.addObject("thi_sum", thi_sum);
		mav.addObject("fou_sum", fou_sum);
		mav.addObject("fiv_sum", fiv_sum);
		mav.addObject("six_sum", six_sum);
		
		mav.addObject("fileVO", fileVO);
		mav.addObject("saving_log_list", saving_log_list);
		mav.addObject("fir_cnt", fir_cnt);
		mav.addObject("sec_cnt", sec_cnt);
		mav.addObject("thi_cnt", thi_cnt);
		
		mav.addObject("predict_money", predict_money);
		mav.addObject("saving_detail", saving_detail);
		System.out.println(saving_detail);
		mav.addObject("weekVO", weekVO);
		mav.addObject("slowVO", slowVO);
		mav.addObject("payVO", payVO);
		mav.addObject("banVO", banVO);
		mav.addObject("gwaVO", gwaVO);
		mav.addObject("sanVO", sanVO);
		mav.addObject("first_status_money", first_status_money);
		mav.addObject("second_status_money", second_status_money);
		mav.addObject("third_status_money", third_status_money);
		
		
		String aa = "";
		String target_date = "";
		String target_date_dd = "";
		String bb = "";
		String dday = "";
		
		double percent = 0;
			
		percent = (double)saving_vo.getSavingbalance() / (double)wish.getTarget_price();
		
		aa = wish.getStart_date().substring(0, 10);
		
		System.out.println(aa);
		
		target_date = aa.substring(0, 4) + aa.substring(5, 7); 
		
		target_date_dd = aa.substring(8, 10);
		
		bb = aa.substring(0, 4) + aa.substring(5, 7) + aa.substring(8, 10); 
	
		aa = DateUtils.addMonth(target_date, wish.getDuration());
		
		System.out.println(aa + target_date_dd);
		
		aa = aa + target_date_dd;
		
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMdd");
		
		Calendar c1 = Calendar.getInstance();
		
		String strToday = sdf1.format(c1.getTime());
		
		String format = "yyyyMMdd"; 
		
		SimpleDateFormat sdf = new SimpleDateFormat(format, Locale.ENGLISH); 
		
		Date firstDate = sdf.parse(strToday); 
		
		Date secondDate = sdf.parse(aa); 
		
		long diffInMillies = Math.abs(secondDate.getTime() - firstDate.getTime()); 
		
		long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
		
		mav.addObject("diff", diff);
		mav.addObject("percent", percent * 100);
		
		mav.setViewName("saveset");
		
		return mav;
		
		
	}
	
	@PostMapping("/updateGob")
	public ModelAndView updateGob(ModelAndView mav, TargetBanVO BanVO1, HttpServletRequest request) throws ParseException {
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		BanVO1.setSaving_pk(saving_vo.getSaving_pk());
		
		System.out.println(BanVO1);
		System.out.println("=================");
		
		//week update
		stService.updateBan(BanVO1);
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		WishVO wish = wish_list.get(0);
		
		AccountVO acc = aservice.obtainAccountByPK(saving_vo.getAccount_pk());
		TargetBanVO banVO = stService.selectBanStatus(saving_vo.getSaving_pk());
		TargetGwaVO gwaVO = stService.selectGwaStatus(saving_vo.getSaving_pk());
		TargetPayVO payVO = stService.selectPayStatus(saving_vo.getSaving_pk());
		TargetSanVO sanVO = stService.selectSanStatus(saving_vo.getSaving_pk());
		TargetSlowVO slowVO = stService.selectSlowStatus(saving_vo.getSaving_pk());
		TargetWeekVO weekVO = stService.selectWeekStatus(saving_vo.getSaving_pk());
		
		mav.addObject("wish", wish);
		mav.addObject("wish_list", wish_list);
		mav.addObject("saving_vo", saving_vo);
		mav.addObject("acc", acc);
		
		SavingDetailVO saving_detail = sService.obtainSavingDetailVO(saving_vo.getSaving_pk());
		
		//예상저축액 뿌리는곳//
		int predict_money = 0;
		int first_status_money = 0;
		int second_status_money = 0;
		int third_status_money = 0;
		//52주규칙
		if(saving_detail.getFirst_status() == 1) {
			
			first_status_money = weekVO.getTarget_week_now();
			
			predict_money += weekVO.getTarget_week_now();
		}
		
		else {
			
			first_status_money = weekVO.getTarget_week_now();
			
		}
		
		if(saving_detail.getSecond_status() == 1) {
			
			//일주일 마다 라면
			if(slowVO.getTarget_slow_date() == 1) {
				
				// 현재 날짜 구하기
				Calendar cal = Calendar.getInstance();
				// 포맷 정의
				int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
				
				switch (dayOfWeek) {
				
					//일요일
					case 7:
						predict_money += 7 * slowVO.getTarget_slow_balance();
						second_status_money = 7 * slowVO.getTarget_slow_balance();
						break;
					case 6:
						predict_money += 6 * slowVO.getTarget_slow_balance();
						second_status_money = 6 * slowVO.getTarget_slow_balance();
						break;
					case 5:
						predict_money += 5 * slowVO.getTarget_slow_balance();
						second_status_money = 5 * slowVO.getTarget_slow_balance();
						break;
					case 4:
						predict_money += 4 * slowVO.getTarget_slow_balance();
						second_status_money = 4 * slowVO.getTarget_slow_balance();
						break;
					case 3:
						predict_money += 3 * slowVO.getTarget_slow_balance();
						second_status_money = 3 * slowVO.getTarget_slow_balance();
						break;
					case 2:
						predict_money += 2 * slowVO.getTarget_slow_balance();
						second_status_money = 2 * slowVO.getTarget_slow_balance();
						break;
					case 1:
						predict_money += 1 * slowVO.getTarget_slow_balance();
						second_status_money = 1 * slowVO.getTarget_slow_balance();
						break;
				
				}
			} else if(slowVO.getTarget_slow_date() == 7) {
				
				predict_money += slowVO.getTarget_slow_balance();
				second_status_money = slowVO.getTarget_slow_balance();
				
			}
		} else {
			
			//일주일 마다 라면
			if(slowVO.getTarget_slow_date() == 1) {
				
				// 현재 날짜 구하기
				Calendar cal = Calendar.getInstance();
				// 포맷 정의
				int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
				
				switch (dayOfWeek) {
				
					//일요일
					case 7:
						second_status_money = 7 * slowVO.getTarget_slow_balance();
						break;
					case 6:
						second_status_money = 6 * slowVO.getTarget_slow_balance();
						break;
					case 5:
						second_status_money = 5 * slowVO.getTarget_slow_balance();
						break;
					case 4:
						second_status_money = 4 * slowVO.getTarget_slow_balance();
						break;
					case 3:
						second_status_money = 3 * slowVO.getTarget_slow_balance();
						break;
					case 2:
						second_status_money = 2 * slowVO.getTarget_slow_balance();
						break;
					case 1:
						second_status_money = 1 * slowVO.getTarget_slow_balance();
						break;
				
				}
			} else if(slowVO.getTarget_slow_date() == 7) {
				
				second_status_money = slowVO.getTarget_slow_balance();
				
			}
			
		}
		
		if(saving_detail.getThird_status() == 1) {
			
			String a = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),1-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			String b = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),7-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			
			String c = DateUtils.changeYMD(a);
			String d = DateUtils.changeYMD(b);
			
			c = c.substring(c.length()-2, c.length());
			d = d.substring(d.length()-2, d.length());
			
			int e = Integer.parseInt(c);
			int f = Integer.parseInt(d);
			
			if(e <= payVO.getTarget_pay_date() && payVO.getTarget_pay_date() <= f) {
				
				predict_money += ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				third_status_money = ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				
			}
	
		} else {
			
			String a = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),1-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			String b = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),7-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			
			String c = DateUtils.changeYMD(a);
			String d = DateUtils.changeYMD(b);
			
			c = c.substring(c.length()-2, c.length());
			d = d.substring(d.length()-2, d.length());
			
			int e = Integer.parseInt(c);
			int f = Integer.parseInt(d);
			
			if(e <= payVO.getTarget_pay_date() && payVO.getTarget_pay_date() <= f) {
				
				third_status_money = ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				
			}
			
		}
		
		List<SavingDetailVO> savingdetail_list = sService.obtainSavingDetailList();
		
		int fir_cnt = 0;
		int sec_cnt = 0;
		int thi_cnt = 0;
		
		
		for(int i = 0; i < savingdetail_list.size(); i++) {
			
			if(savingdetail_list.get(i).getFirst_status() == 1) fir_cnt++;
			
			if(savingdetail_list.get(i).getSecond_status() == 1) sec_cnt++;
			
			if(savingdetail_list.get(i).getThird_status() == 1) thi_cnt++;
			
			
		}
		
		int fir_sum = 0;
		int sec_sum = 0;
		int thi_sum = 0;
		int fou_sum = 0;
		int fiv_sum = 0;
		int six_sum = 0;
		
		List<SavingLogVO> saving_log_list2 = sService.selectAllSavingLog(saving_vo.getSaving_pk());
		
		for(int i = 0; i < saving_log_list2.size(); i++) {
			
			saving_log_list2.get(i).setSaving_date(saving_log_list2.get(i).getSaving_date().split("\\s")[0]);
			
			if(saving_log_list2.get(i).getSaving_category().equals("매주규칙")) {
				
				fir_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("슬금슬금")) {
							
				sec_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("월급날규칙")) {
				
				thi_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("반올림")) {
				
				fou_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("과소비")) {
				
				fiv_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("예산절감")) {
				
				six_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			
		}
		
		List<SavingLogVO> saving_log_list = new ArrayList<SavingLogVO>();
		
		for(int i = 0; i < saving_log_list2.size() / 2; i++) {
			
			saving_log_list.add(saving_log_list2.get(i));
			
		}
		
		//FILE
		FileVO fileVO = fService.obtainFileVO(wish.getP_file_id());
		
		mav.addObject("fir_sum", fir_sum);
		mav.addObject("sec_sum", sec_sum);
		mav.addObject("thi_sum", thi_sum);
		mav.addObject("fou_sum", fou_sum);
		mav.addObject("fiv_sum", fiv_sum);
		mav.addObject("six_sum", six_sum);
		
		mav.addObject("fileVO", fileVO);
		mav.addObject("saving_log_list", saving_log_list);
		mav.addObject("fir_cnt", fir_cnt);
		mav.addObject("sec_cnt", sec_cnt);
		mav.addObject("thi_cnt", thi_cnt);
		
		mav.addObject("predict_money", predict_money);
		mav.addObject("saving_detail", saving_detail);
		System.out.println(saving_detail);
		mav.addObject("weekVO", weekVO);
		mav.addObject("slowVO", slowVO);
		mav.addObject("payVO", payVO);
		mav.addObject("banVO", banVO);
		mav.addObject("gwaVO", gwaVO);
		mav.addObject("sanVO", sanVO);
		mav.addObject("first_status_money", first_status_money);
		mav.addObject("second_status_money", second_status_money);
		mav.addObject("third_status_money", third_status_money);
		
		
		String aa = "";
		String target_date = "";
		String target_date_dd = "";
		String bb = "";
		String dday = "";
		
		double percent = 0;
			
		percent = (double)saving_vo.getSavingbalance() / (double)wish.getTarget_price();
		
		aa = wish.getStart_date().substring(0, 10);
		
		System.out.println(aa);
		
		target_date = aa.substring(0, 4) + aa.substring(5, 7); 
		
		target_date_dd = aa.substring(8, 10);
		
		bb = aa.substring(0, 4) + aa.substring(5, 7) + aa.substring(8, 10); 
	
		aa = DateUtils.addMonth(target_date, wish.getDuration());
		
		System.out.println(aa + target_date_dd);
		
		aa = aa + target_date_dd;
		
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMdd");
		
		Calendar c1 = Calendar.getInstance();
		
		String strToday = sdf1.format(c1.getTime());
		
		String format = "yyyyMMdd"; 
		
		SimpleDateFormat sdf = new SimpleDateFormat(format, Locale.ENGLISH); 
		
		Date firstDate = sdf.parse(strToday); 
		
		Date secondDate = sdf.parse(aa); 
		
		long diffInMillies = Math.abs(secondDate.getTime() - firstDate.getTime()); 
		
		long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
		
		mav.addObject("diff", diff);
		mav.addObject("percent", percent * 100);
		
		mav.setViewName("saveset");
		
		return mav;
		
		
	}
	
	@PostMapping("/updateGwa")
	public ModelAndView updateGwa(ModelAndView mav, TargetGwaVO GwaVO1, HttpServletRequest request) throws ParseException {
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		GwaVO1.setSaving_pk(saving_vo.getSaving_pk());
		
		System.out.println(GwaVO1);
		System.out.println("=================");
		
		//week update
		stService.updateGwa(GwaVO1);
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		WishVO wish = wish_list.get(0);
		
		AccountVO acc = aservice.obtainAccountByPK(saving_vo.getAccount_pk());
		TargetBanVO banVO = stService.selectBanStatus(saving_vo.getSaving_pk());
		TargetGwaVO gwaVO = stService.selectGwaStatus(saving_vo.getSaving_pk());
		TargetPayVO payVO = stService.selectPayStatus(saving_vo.getSaving_pk());
		TargetSanVO sanVO = stService.selectSanStatus(saving_vo.getSaving_pk());
		TargetSlowVO slowVO = stService.selectSlowStatus(saving_vo.getSaving_pk());
		TargetWeekVO weekVO = stService.selectWeekStatus(saving_vo.getSaving_pk());
		
		mav.addObject("wish", wish);
		mav.addObject("wish_list", wish_list);
		mav.addObject("saving_vo", saving_vo);
		mav.addObject("acc", acc);
		
		SavingDetailVO saving_detail = sService.obtainSavingDetailVO(saving_vo.getSaving_pk());
		
		//예상저축액 뿌리는곳//
		int predict_money = 0;
		int first_status_money = 0;
		int second_status_money = 0;
		int third_status_money = 0;
		//52주규칙
		if(saving_detail.getFirst_status() == 1) {
			
			first_status_money = weekVO.getTarget_week_now();
			
			predict_money += weekVO.getTarget_week_now();
		}
		
		else {
			
			first_status_money = weekVO.getTarget_week_now();
			
		}
		
		if(saving_detail.getSecond_status() == 1) {
			
			//일주일 마다 라면
			if(slowVO.getTarget_slow_date() == 1) {
				
				// 현재 날짜 구하기
				Calendar cal = Calendar.getInstance();
				// 포맷 정의
				int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
				
				switch (dayOfWeek) {
				
					//일요일
					case 7:
						predict_money += 7 * slowVO.getTarget_slow_balance();
						second_status_money = 7 * slowVO.getTarget_slow_balance();
						break;
					case 6:
						predict_money += 6 * slowVO.getTarget_slow_balance();
						second_status_money = 6 * slowVO.getTarget_slow_balance();
						break;
					case 5:
						predict_money += 5 * slowVO.getTarget_slow_balance();
						second_status_money = 5 * slowVO.getTarget_slow_balance();
						break;
					case 4:
						predict_money += 4 * slowVO.getTarget_slow_balance();
						second_status_money = 4 * slowVO.getTarget_slow_balance();
						break;
					case 3:
						predict_money += 3 * slowVO.getTarget_slow_balance();
						second_status_money = 3 * slowVO.getTarget_slow_balance();
						break;
					case 2:
						predict_money += 2 * slowVO.getTarget_slow_balance();
						second_status_money = 2 * slowVO.getTarget_slow_balance();
						break;
					case 1:
						predict_money += 1 * slowVO.getTarget_slow_balance();
						second_status_money = 1 * slowVO.getTarget_slow_balance();
						break;
				
				}
			} else if(slowVO.getTarget_slow_date() == 7) {
				
				predict_money += slowVO.getTarget_slow_balance();
				second_status_money = slowVO.getTarget_slow_balance();
				
			}
		} else {
			
			//일주일 마다 라면
			if(slowVO.getTarget_slow_date() == 1) {
				
				// 현재 날짜 구하기
				Calendar cal = Calendar.getInstance();
				// 포맷 정의
				int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
				
				switch (dayOfWeek) {
				
					//일요일
					case 7:
						second_status_money = 7 * slowVO.getTarget_slow_balance();
						break;
					case 6:
						second_status_money = 6 * slowVO.getTarget_slow_balance();
						break;
					case 5:
						second_status_money = 5 * slowVO.getTarget_slow_balance();
						break;
					case 4:
						second_status_money = 4 * slowVO.getTarget_slow_balance();
						break;
					case 3:
						second_status_money = 3 * slowVO.getTarget_slow_balance();
						break;
					case 2:
						second_status_money = 2 * slowVO.getTarget_slow_balance();
						break;
					case 1:
						second_status_money = 1 * slowVO.getTarget_slow_balance();
						break;
				
				}
			} else if(slowVO.getTarget_slow_date() == 7) {
				
				second_status_money = slowVO.getTarget_slow_balance();
				
			}
			
		}
		
		if(saving_detail.getThird_status() == 1) {
			
			String a = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),1-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			String b = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),7-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			
			String c = DateUtils.changeYMD(a);
			String d = DateUtils.changeYMD(b);
			
			c = c.substring(c.length()-2, c.length());
			d = d.substring(d.length()-2, d.length());
			
			int e = Integer.parseInt(c);
			int f = Integer.parseInt(d);
			
			if(e <= payVO.getTarget_pay_date() && payVO.getTarget_pay_date() <= f) {
				
				predict_money += ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				third_status_money = ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				
			}
	
		} else {
			
			String a = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),1-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			String b = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),7-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			
			String c = DateUtils.changeYMD(a);
			String d = DateUtils.changeYMD(b);
			
			c = c.substring(c.length()-2, c.length());
			d = d.substring(d.length()-2, d.length());
			
			int e = Integer.parseInt(c);
			int f = Integer.parseInt(d);
			
			if(e <= payVO.getTarget_pay_date() && payVO.getTarget_pay_date() <= f) {
				
				third_status_money = ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				
			}
			
		}
		
		List<SavingDetailVO> savingdetail_list = sService.obtainSavingDetailList();
		
		int fir_cnt = 0;
		int sec_cnt = 0;
		int thi_cnt = 0;
		
		
		for(int i = 0; i < savingdetail_list.size(); i++) {
			
			if(savingdetail_list.get(i).getFirst_status() == 1) fir_cnt++;
			
			if(savingdetail_list.get(i).getSecond_status() == 1) sec_cnt++;
			
			if(savingdetail_list.get(i).getThird_status() == 1) thi_cnt++;
			
			
		}
		
		int fir_sum = 0;
		int sec_sum = 0;
		int thi_sum = 0;
		int fou_sum = 0;
		int fiv_sum = 0;
		int six_sum = 0;
		
		List<SavingLogVO> saving_log_list2 = sService.selectAllSavingLog(saving_vo.getSaving_pk());
		
		for(int i = 0; i < saving_log_list2.size(); i++) {
			
			saving_log_list2.get(i).setSaving_date(saving_log_list2.get(i).getSaving_date().split("\\s")[0]);
			
			if(saving_log_list2.get(i).getSaving_category().equals("매주규칙")) {
				
				fir_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("슬금슬금")) {
							
				sec_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("월급날규칙")) {
				
				thi_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("반올림")) {
				
				fou_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("과소비")) {
				
				fiv_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("예산절감")) {
				
				six_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			
		}
		
		List<SavingLogVO> saving_log_list = new ArrayList<SavingLogVO>();
		
		for(int i = 0; i < saving_log_list2.size() / 2; i++) {
			
			saving_log_list.add(saving_log_list2.get(i));
			
		}
		
		//FILE
		FileVO fileVO = fService.obtainFileVO(wish.getP_file_id());
		
		mav.addObject("fir_sum", fir_sum);
		mav.addObject("sec_sum", sec_sum);
		mav.addObject("thi_sum", thi_sum);
		mav.addObject("fou_sum", fou_sum);
		mav.addObject("fiv_sum", fiv_sum);
		mav.addObject("six_sum", six_sum);
		
		mav.addObject("fileVO", fileVO);
		mav.addObject("saving_log_list", saving_log_list);
		mav.addObject("fir_cnt", fir_cnt);
		mav.addObject("sec_cnt", sec_cnt);
		mav.addObject("thi_cnt", thi_cnt);
		
		mav.addObject("predict_money", predict_money);
		mav.addObject("saving_detail", saving_detail);
		System.out.println(saving_detail);
		mav.addObject("weekVO", weekVO);
		mav.addObject("slowVO", slowVO);
		mav.addObject("payVO", payVO);
		mav.addObject("banVO", banVO);
		mav.addObject("gwaVO", gwaVO);
		mav.addObject("sanVO", sanVO);
		mav.addObject("first_status_money", first_status_money);
		mav.addObject("second_status_money", second_status_money);
		mav.addObject("third_status_money", third_status_money);
		
		
		String aa = "";
		String target_date = "";
		String target_date_dd = "";
		String bb = "";
		String dday = "";
		
		double percent = 0;
			
		percent = (double)saving_vo.getSavingbalance() / (double)wish.getTarget_price();
		
		aa = wish.getStart_date().substring(0, 10);
		
		System.out.println(aa);
		
		target_date = aa.substring(0, 4) + aa.substring(5, 7); 
		
		target_date_dd = aa.substring(8, 10);
		
		bb = aa.substring(0, 4) + aa.substring(5, 7) + aa.substring(8, 10); 
	
		aa = DateUtils.addMonth(target_date, wish.getDuration());
		
		System.out.println(aa + target_date_dd);
		
		aa = aa + target_date_dd;
		
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMdd");
		
		Calendar c1 = Calendar.getInstance();
		
		String strToday = sdf1.format(c1.getTime());
		
		String format = "yyyyMMdd"; 
		
		SimpleDateFormat sdf = new SimpleDateFormat(format, Locale.ENGLISH); 
		
		Date firstDate = sdf.parse(strToday); 
		
		Date secondDate = sdf.parse(aa); 
		
		long diffInMillies = Math.abs(secondDate.getTime() - firstDate.getTime()); 
		
		long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
		
		mav.addObject("diff", diff);
		mav.addObject("percent", percent * 100);
		
		mav.setViewName("saveset");
		
		return mav;
		
		
	}
	
	@PostMapping("/updateSan")
	public ModelAndView updateSan(ModelAndView mav, TargetSanVO SanVO1, HttpServletRequest request) throws ParseException {
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		SanVO1.setSaving_pk(saving_vo.getSaving_pk());
		
		System.out.println(SanVO1);
		System.out.println("=================");
		
		//week update
		stService.updateSan(SanVO1);
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		WishVO wish = wish_list.get(0);
		
		AccountVO acc = aservice.obtainAccountByPK(saving_vo.getAccount_pk());
		TargetBanVO banVO = stService.selectBanStatus(saving_vo.getSaving_pk());
		TargetGwaVO gwaVO = stService.selectGwaStatus(saving_vo.getSaving_pk());
		TargetPayVO payVO = stService.selectPayStatus(saving_vo.getSaving_pk());
		TargetSanVO sanVO = stService.selectSanStatus(saving_vo.getSaving_pk());
		TargetSlowVO slowVO = stService.selectSlowStatus(saving_vo.getSaving_pk());
		TargetWeekVO weekVO = stService.selectWeekStatus(saving_vo.getSaving_pk());
		
		mav.addObject("wish", wish);
		mav.addObject("wish_list", wish_list);
		mav.addObject("saving_vo", saving_vo);
		mav.addObject("acc", acc);
		
		SavingDetailVO saving_detail = sService.obtainSavingDetailVO(saving_vo.getSaving_pk());
		
		//예상저축액 뿌리는곳//
		int predict_money = 0;
		int first_status_money = 0;
		int second_status_money = 0;
		int third_status_money = 0;
		//52주규칙
		if(saving_detail.getFirst_status() == 1) {
			
			first_status_money = weekVO.getTarget_week_now();
			
			predict_money += weekVO.getTarget_week_now();
		}
		
		else {
			
			first_status_money = weekVO.getTarget_week_now();
			
		}
		
		if(saving_detail.getSecond_status() == 1) {
			
			//일주일 마다 라면
			if(slowVO.getTarget_slow_date() == 1) {
				
				// 현재 날짜 구하기
				Calendar cal = Calendar.getInstance();
				// 포맷 정의
				int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
				
				switch (dayOfWeek) {
				
					//일요일
					case 7:
						predict_money += 7 * slowVO.getTarget_slow_balance();
						second_status_money = 7 * slowVO.getTarget_slow_balance();
						break;
					case 6:
						predict_money += 6 * slowVO.getTarget_slow_balance();
						second_status_money = 6 * slowVO.getTarget_slow_balance();
						break;
					case 5:
						predict_money += 5 * slowVO.getTarget_slow_balance();
						second_status_money = 5 * slowVO.getTarget_slow_balance();
						break;
					case 4:
						predict_money += 4 * slowVO.getTarget_slow_balance();
						second_status_money = 4 * slowVO.getTarget_slow_balance();
						break;
					case 3:
						predict_money += 3 * slowVO.getTarget_slow_balance();
						second_status_money = 3 * slowVO.getTarget_slow_balance();
						break;
					case 2:
						predict_money += 2 * slowVO.getTarget_slow_balance();
						second_status_money = 2 * slowVO.getTarget_slow_balance();
						break;
					case 1:
						predict_money += 1 * slowVO.getTarget_slow_balance();
						second_status_money = 1 * slowVO.getTarget_slow_balance();
						break;
				
				}
			} else if(slowVO.getTarget_slow_date() == 7) {
				
				predict_money += slowVO.getTarget_slow_balance();
				second_status_money = slowVO.getTarget_slow_balance();
				
			}
		} else {
			
			//일주일 마다 라면
			if(slowVO.getTarget_slow_date() == 1) {
				
				// 현재 날짜 구하기
				Calendar cal = Calendar.getInstance();
				// 포맷 정의
				int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
				
				switch (dayOfWeek) {
				
					//일요일
					case 7:
						second_status_money = 7 * slowVO.getTarget_slow_balance();
						break;
					case 6:
						second_status_money = 6 * slowVO.getTarget_slow_balance();
						break;
					case 5:
						second_status_money = 5 * slowVO.getTarget_slow_balance();
						break;
					case 4:
						second_status_money = 4 * slowVO.getTarget_slow_balance();
						break;
					case 3:
						second_status_money = 3 * slowVO.getTarget_slow_balance();
						break;
					case 2:
						second_status_money = 2 * slowVO.getTarget_slow_balance();
						break;
					case 1:
						second_status_money = 1 * slowVO.getTarget_slow_balance();
						break;
				
				}
			} else if(slowVO.getTarget_slow_date() == 7) {
				
				second_status_money = slowVO.getTarget_slow_balance();
				
			}
			
		}
		
		if(saving_detail.getThird_status() == 1) {
			
			String a = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),1-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			String b = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),7-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			
			String c = DateUtils.changeYMD(a);
			String d = DateUtils.changeYMD(b);
			
			c = c.substring(c.length()-2, c.length());
			d = d.substring(d.length()-2, d.length());
			
			int e = Integer.parseInt(c);
			int f = Integer.parseInt(d);
			
			if(e <= payVO.getTarget_pay_date() && payVO.getTarget_pay_date() <= f) {
				
				predict_money += ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				third_status_money = ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				
			}
	
		} else {
			
			String a = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),1-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			String b = DateUtils.addchangeDays(DateUtils.changeYMD(DateUtils.getCurrentTime()),7-DateUtils.getDayOfWeek(DateUtils.changeYMD(DateUtils.getCurrentTime())));//끝나는날
			
			String c = DateUtils.changeYMD(a);
			String d = DateUtils.changeYMD(b);
			
			c = c.substring(c.length()-2, c.length());
			d = d.substring(d.length()-2, d.length());
			
			int e = Integer.parseInt(c);
			int f = Integer.parseInt(d);
			
			if(e <= payVO.getTarget_pay_date() && payVO.getTarget_pay_date() <= f) {
				
				third_status_money = ( payVO.getTarget_pay_balance() / 100 ) * payVO.getTarget_pay_rate();
				
			}
			
		}
		
		List<SavingDetailVO> savingdetail_list = sService.obtainSavingDetailList();
		
		int fir_cnt = 0;
		int sec_cnt = 0;
		int thi_cnt = 0;
		
		
		for(int i = 0; i < savingdetail_list.size(); i++) {
			
			if(savingdetail_list.get(i).getFirst_status() == 1) fir_cnt++;
			
			if(savingdetail_list.get(i).getSecond_status() == 1) sec_cnt++;
			
			if(savingdetail_list.get(i).getThird_status() == 1) thi_cnt++;
			
			
		}
		
		int fir_sum = 0;
		int sec_sum = 0;
		int thi_sum = 0;
		int fou_sum = 0;
		int fiv_sum = 0;
		int six_sum = 0;
		
		List<SavingLogVO> saving_log_list2 = sService.selectAllSavingLog(saving_vo.getSaving_pk());
		
		for(int i = 0; i < saving_log_list2.size(); i++) {
			
			saving_log_list2.get(i).setSaving_date(saving_log_list2.get(i).getSaving_date().split("\\s")[0]);
			
			if(saving_log_list2.get(i).getSaving_category().equals("매주규칙")) {
				
				fir_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("슬금슬금")) {
							
				sec_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("월급날규칙")) {
				
				thi_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("반올림")) {
				
				fou_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("과소비")) {
				
				fiv_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("예산절감")) {
				
				six_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			
		}
		
		List<SavingLogVO> saving_log_list = new ArrayList<SavingLogVO>();
		
		for(int i = 0; i < saving_log_list2.size() / 2; i++) {
			
			saving_log_list.add(saving_log_list2.get(i));
			
		}
		
		//FILE
		FileVO fileVO = fService.obtainFileVO(wish.getP_file_id());
		
		mav.addObject("fir_sum", fir_sum);
		mav.addObject("sec_sum", sec_sum);
		mav.addObject("thi_sum", thi_sum);
		mav.addObject("fou_sum", fou_sum);
		mav.addObject("fiv_sum", fiv_sum);
		mav.addObject("six_sum", six_sum);
		
		mav.addObject("fileVO", fileVO);
		mav.addObject("saving_log_list", saving_log_list);
		mav.addObject("fir_cnt", fir_cnt);
		mav.addObject("sec_cnt", sec_cnt);
		mav.addObject("thi_cnt", thi_cnt);
		
		mav.addObject("predict_money", predict_money);
		mav.addObject("saving_detail", saving_detail);
		System.out.println(saving_detail);
		mav.addObject("weekVO", weekVO);
		mav.addObject("slowVO", slowVO);
		mav.addObject("payVO", payVO);
		mav.addObject("banVO", banVO);
		mav.addObject("gwaVO", gwaVO);
		mav.addObject("sanVO", sanVO);
		mav.addObject("first_status_money", first_status_money);
		mav.addObject("second_status_money", second_status_money);
		mav.addObject("third_status_money", third_status_money);
		
		
		String aa = "";
		String target_date = "";
		String target_date_dd = "";
		String bb = "";
		String dday = "";
		
		double percent = 0;
			
		percent = (double)saving_vo.getSavingbalance() / (double)wish.getTarget_price();
		
		aa = wish.getStart_date().substring(0, 10);
		
		System.out.println(aa);
		
		target_date = aa.substring(0, 4) + aa.substring(5, 7); 
		
		target_date_dd = aa.substring(8, 10);
		
		bb = aa.substring(0, 4) + aa.substring(5, 7) + aa.substring(8, 10); 
	
		aa = DateUtils.addMonth(target_date, wish.getDuration());
		
		System.out.println(aa + target_date_dd);
		
		aa = aa + target_date_dd;
		
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMdd");
		
		Calendar c1 = Calendar.getInstance();
		
		String strToday = sdf1.format(c1.getTime());
		
		String format = "yyyyMMdd"; 
		
		SimpleDateFormat sdf = new SimpleDateFormat(format, Locale.ENGLISH); 
		
		Date firstDate = sdf.parse(strToday); 
		
		Date secondDate = sdf.parse(aa); 
		
		long diffInMillies = Math.abs(secondDate.getTime() - firstDate.getTime()); 
		
		long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
		
		mav.addObject("diff", diff);
		mav.addObject("percent", percent * 100);
		
		mav.setViewName("saveset");
		
		return mav;
		
		
	}
	
}

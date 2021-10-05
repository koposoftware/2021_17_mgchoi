package kr.ac.kopo.totalcontroller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.parsing.PassThroughSourceExtractor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.totalservice.AccountService;
import kr.ac.kopo.totalservice.FileService;
import kr.ac.kopo.totalservice.SavingService;
import kr.ac.kopo.totalservice.StatusService;
import kr.ac.kopo.totalservice.WishService;
import kr.ac.kopo.totalvo.AccountVO;
import kr.ac.kopo.totalvo.FileVO;
import kr.ac.kopo.totalvo.ObjectReVO;
import kr.ac.kopo.totalvo.SavingDetailVO;
import kr.ac.kopo.totalvo.SavingLogVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.totalvo.ShareObjectVO;
import kr.ac.kopo.totalvo.TargetBanVO;
import kr.ac.kopo.totalvo.TargetGwaVO;
import kr.ac.kopo.totalvo.TargetPayVO;
import kr.ac.kopo.totalvo.TargetSanVO;
import kr.ac.kopo.totalvo.TargetSlowVO;
import kr.ac.kopo.totalvo.TargetWeekVO;
import kr.ac.kopo.totalvo.WishVO;
import kr.ac.kopo.util.DateUtils;
import kr.ac.kopo.util.NumberUtils;

@Controller
public class MyPageController {
	
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
	
	/*
	 * @GetMapping("/wishlist") public ModelAndView wishlist(ModelAndView mav,
	 * HttpServletRequest request){
	 * 
	 * mav.setViewName("mypage/wishlist");
	 * 
	 * return mav;
	 * 
	 * }
	 */
	
	@GetMapping("/profile")
	public ModelAndView dashBoardView(ModelAndView mav, HttpServletRequest request) {
		
		System.out.println("asdasdasdasd");
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		userVO.setCoin(userVO.getCoin() + 1);
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		WishVO wish = wish_list.get(0);
		
	
		double percent = (((double)saving_vo.getSavingbalance() / (double)wish.getTarget_price())) * 100;
		
		//Object_SHARE에 INSERT
		ShareObjectVO shareVO = new ShareObjectVO();
		shareVO.setObject_name(wish.getWish_name());
		shareVO.setName(userVO.getName());
		shareVO.setPercent((int)percent);
		shareVO.setObject_price(wish.getTarget_price());
		shareVO.setP_file_id(wish.getP_file_id());
		
		List<ObjectReVO> reply_list = wservice.obtainReply();
		
		//SHARE OBJECT INSERT하고 OBJECTSHARE LIST가져와서 다시 뿌리기 
		//COIN 1개 늘려주고, 
		mav.addObject("reply_list", reply_list);
		mav.addObject("coin", userVO.getCoin() + 1);
		mav.addObject("wish", wish);
		
		List<FileVO> fileVOList = new ArrayList<FileVO>();
		
		//목표 리스트 가져오기
		List<ShareObjectVO> shareList =  wservice.obtainShareObjectList();
		
		for(int i = 0 ; i < shareList.size(); i++) {
			
			System.out.println(shareList.get(i));
			
			FileVO fileVO = fService.obtainFileVO(shareList.get(i).getP_file_id());
			
			fileVOList.add(fileVO);
			
		}
		
		//List<>
		
		mav.addObject("fileVOList", fileVOList);
		mav.addObject("shareList", shareList);
		mav.setViewName("profile");
		
		return mav;
		
	}
	
	
	@PostMapping("/profile")
	@ResponseBody
	public ModelAndView ReplyAdd(ModelAndView mav, HttpServletRequest request, ObjectReVO reVO) {
		
		HttpSession session = request.getSession();
		  
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		System.out.println("==============");
		System.out.println(reVO);
		System.out.println(reVO);
		System.out.println(reVO);
		System.out.println(reVO);
		System.out.println("==============");
		
		reVO.setObject_re_name(userVO.getName()); 
		
		//댓글 등록부터
		wservice.addReply(reVO);
		//코인1개지급
		wservice.addCoin(userVO.getFun_member_pk());
		
		userVO.setCoin(userVO.getCoin() + 1);
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		  
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		WishVO wish = wish_list.get(0);
		
		double percent = (((double)saving_vo.getSavingbalance() / (double)wish.getTarget_price())) * 100;
		
		//Object_SHARE에 INSERT
		ShareObjectVO shareVO = new ShareObjectVO();
		shareVO.setObject_name(wish.getWish_name());
		shareVO.setName(userVO.getName());
		shareVO.setPercent((int)percent);
		shareVO.setObject_price(wish.getTarget_price());
		shareVO.setP_file_id(wish.getP_file_id());
		
		List<ObjectReVO> reply_list = wservice.obtainReply();
		
		//SHARE OBJECT INSERT하고 OBJECTSHARE LIST가져와서 다시 뿌리기 
		//COIN 1개 늘려주고, 
		mav.addObject("reply_list", reply_list);
		mav.addObject("coin", userVO.getCoin());
		mav.addObject("wish", wish);
		
		List<FileVO> fileVOList = new ArrayList<FileVO>();
		
		//목표 리스트 가져오기
		List<ShareObjectVO> shareList =  wservice.obtainShareObjectList();
		
		for(int i = 0 ; i < shareList.size(); i++) {
			
			System.out.println(shareList.get(i));
			
			FileVO fileVO = fService.obtainFileVO(shareList.get(i).getP_file_id());
			
			fileVOList.add(fileVO);
			
		}
		
		//List<>
		
		mav.addObject("fileVOList", fileVOList);
		mav.addObject("shareList", shareList);
		mav.setViewName("profile");
		
		return mav;
		
	}
	
	@PostMapping("/shareobject")
	public ModelAndView shareObject(ModelAndView mav, HttpServletRequest request) {
		
		System.out.println("asdasdasdasd");
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		WishVO wish = wish_list.get(0);
		
	
		double percent = (((double)saving_vo.getSavingbalance() / (double)wish.getTarget_price())) * 100;
		
		//Object_SHARE에 INSERT
		ShareObjectVO shareVO = new ShareObjectVO();
		shareVO.setObject_name(wish.getWish_name());
		shareVO.setName(userVO.getName());
		shareVO.setPercent((int)percent);
		shareVO.setObject_price(wish.getTarget_price());
		shareVO.setP_file_id(wish.getP_file_id());
		
		wservice.addShareVO(shareVO);
		//SHARE OBJECT INSERT하고 OBJECTSHARE LIST가져와서 다시 뿌리기 
		//COIN 1개 늘려주고, 
		wservice.addCoin(userVO.getFun_member_pk());
		mav.addObject("coin", userVO.getCoin());
		mav.addObject("wish", wish);
		
		List<FileVO> fileVOList = new ArrayList<FileVO>();
		
		//목표 리스트 가져오기
		List<ShareObjectVO> shareList =  wservice.obtainShareObjectList();
		
		for(int i = 0 ; i < shareList.size(); i++) {
			
			System.out.println(shareList.get(i));
			
			FileVO fileVO = fService.obtainFileVO(shareList.get(i).getP_file_id());
			
			fileVOList.add(fileVO);
			
		}
		
		mav.addObject("fileVOList", fileVOList);
		mav.addObject("shareList", shareList);
		mav.setViewName("profile");
		
		return mav;
		
	}
	
	@GetMapping("/saveinfo")
	public ModelAndView objectSetDetailView(ModelAndView mav, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		mav.addObject("wish_list", wish_list);
		
		mav.addObject("saving_vo", saving_vo);
		
		mav.setViewName("mypage/myobject");
		
		System.out.println("===================");
		
		return mav;
		
	}
	
	/*
	 * @GetMapping("/savecustom") public ModelAndView savecustom(ModelAndView mav,
	 * HttpServletRequest request){
	 * 
	 * mav.setViewName("mypage/savecustom");
	 * 
	 * return mav;
	 * 
	 * }
	 */
	@GetMapping("saveset")
	public ModelAndView saveSet(ModelAndView mav, HttpServletRequest request) throws ParseException {
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		WishVO wish = wish_list.get(0);
		
		AccountVO acc = aservice.obtainAccountByPK(saving_vo.getAccount_pk());
		
		
		mav.addObject("wish", wish);
		mav.addObject("wish_list", wish_list);
		mav.addObject("saving_vo", saving_vo);
		mav.addObject("acc", acc);
		
		SavingDetailVO saving_detail = sService.obtainSavingDetailVO(saving_vo.getSaving_pk());
		TargetBanVO banVO = stService.selectBanStatus(saving_vo.getSaving_pk());
		TargetGwaVO gwaVO = stService.selectGwaStatus(saving_vo.getSaving_pk());
		TargetPayVO payVO = stService.selectPayStatus(saving_vo.getSaving_pk());
		TargetSanVO sanVO = stService.selectSanStatus(saving_vo.getSaving_pk());
		TargetSlowVO slowVO = stService.selectSlowStatus(saving_vo.getSaving_pk());
		TargetWeekVO weekVO = stService.selectWeekStatus(saving_vo.getSaving_pk());
		
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
			
			if(saving_log_list2.get(i).getSaving_category().equals("슬금슬금 규칙")) {
							
				sec_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("월급날 규칙")) {
				
				thi_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("반올림 규칙")) {
				
				fou_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("과소비 규칙")) {
				
				fiv_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("예산절감 규칙")) {
				
				six_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			
		}
		
		List<SavingLogVO> saving_log_list = new ArrayList<SavingLogVO>();
		
		for(int i = 0; i < saving_log_list2.size(); i++) {
			
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
		
		mav.addObject("diff", 364);
		mav.addObject("percent", percent * 100);
		
		mav.setViewName("saveset");
		
		return mav;
		
	}
	
	@PostMapping("saveset")
	@ResponseBody
	public ModelAndView saveSetDetail(ModelAndView mav, HttpServletRequest request, SavingDetailVO savingdetailVO) throws ParseException {
		
		System.out.println("떳냐?!");
		
		sService.updateSavingDetailVO(savingdetailVO);
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		WishVO wish = wish_list.get(0);
		
		AccountVO acc = aservice.obtainAccountByPK(saving_vo.getAccount_pk());
		
		mav.addObject("wish", wish);
		mav.addObject("wish_list", wish_list);
		mav.addObject("saving_vo", saving_vo);
		mav.addObject("acc", acc);
		
		SavingDetailVO saving_detail = sService.obtainSavingDetailVO(saving_vo.getSaving_pk());
		System.out.println("얘가문제다");
		System.out.println(saving_detail);
		System.out.println("===========");
		TargetBanVO banVO = stService.selectBanStatus(saving_vo.getSaving_pk());
		TargetGwaVO gwaVO = stService.selectGwaStatus(saving_vo.getSaving_pk());
		TargetPayVO payVO = stService.selectPayStatus(saving_vo.getSaving_pk());
		TargetSanVO sanVO = stService.selectSanStatus(saving_vo.getSaving_pk());
		TargetSlowVO slowVO = stService.selectSlowStatus(saving_vo.getSaving_pk());
		TargetWeekVO weekVO = stService.selectWeekStatus(saving_vo.getSaving_pk());
		
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
			
			if(saving_log_list2.get(i).getSaving_category().equals("슬금슬금 규칙")) {
							
				sec_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("월급날 규칙")) {
				
				thi_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("반올림 규칙")) {
				
				fou_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("과소비 규칙")) {
				
				fiv_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			if(saving_log_list2.get(i).getSaving_category().equals("예산절감 규칙")) {
				
				six_sum += saving_log_list2.get(i).getSaving_change();
				
			}
			
			
		}
		
		List<SavingLogVO> saving_log_list = new ArrayList<SavingLogVO>();
		
		for(int i = 0; i < saving_log_list2.size(); i++) {
			
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
		
		System.out.println("얜가??");
		System.out.println("얜가??");
		System.out.println(saving_detail);
		System.out.println("얜가??");
		System.out.println("얜가??");
		System.out.println("얜가??");
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
	
	@GetMapping("/mypage")
	public ModelAndView myPage(ModelAndView mav, HttpServletRequest request) {
		
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		List<AccountVO> list = aservice.searchAll(userVO.getFun_member_pk());
		
		List<SavingVO> saving_list = sService.searchAllByMemberPk(userVO.getFun_member_pk());
		
		
		mav.setViewName("mypage/mypage");
		mav.addObject("account_list", list);
		mav.addObject("saving_list", saving_list);
		
		return mav;
	}
	
	@RequestMapping("/fundetail")
	public ModelAndView funDetail(ModelAndView mav, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		mav.addObject("savingpk", saving_vo.getSaving_pk());
		
		mav.setViewName("mypage/fundetail");
		
		return mav;
		
		
	}
	
	@PostMapping("/objectCreate")
	public ModelAndView objectCreate(ModelAndView mav, WishVO wishVO, int saving_pk, 
			@RequestParam(value="uploadFile", required = false) MultipartFile mf) {
		
		System.out.println("????????");
		
		String SAVE_PATH = "C:/Users/HP/Desktop/uploadimage/";
		String originalFileName = mf.getOriginalFilename();
        long fileSize = mf.getSize();
        String safeFile = SAVE_PATH + System.currentTimeMillis() + originalFileName;
        

        try {
            mf.transferTo(new File(safeFile));

           } catch (IllegalStateException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
		
        FileVO fileVO = new FileVO();
        fileVO.setImage_name(originalFileName);
        fileVO.setP_file_size((int)fileSize);
        fileVO.setStored_name(safeFile);
        
        
        System.out.println(fileVO);
        //파일 테이블에 저장
        //목표테이블에 삽입하면서 파일 시퀀스저장
        fService.addFile(fileVO);
        
        int fpk = fService.obtainPk();
       
		
		wishVO.setSaving_pk(saving_pk);
		wishVO.setP_file_id(fpk);
		
		//wish 테이블 개수 조회 -> 0 // 설정한 목표를 바로 0으로 ( 진행중 )
		//wish 테이블 개수 조회 -> 1 >= // 설정한 목표를 바로 1로 ( 대기중 )
		//default를 1로주고 걍 addwish가자
		int cnt = wservice.obtainCnt(saving_pk);
		
		if(cnt == 0) {
			
			wishVO.setStatus(0);
			
		}
		
		else wishVO.setStatus(1);
		
		System.out.println(wishVO);
		
		wservice.addWish(wishVO);
		
		System.out.println(wishVO);
		
		System.out.println(wishVO);
		
		mav.setViewName("redirect:/");
		
		return mav;
		
	}
	
	
	@GetMapping("/myobject")
	public ModelAndView objectDetailView(ModelAndView mav, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		mav.addObject("saving_vo", saving_vo);
		
		mav.setViewName("mypage/myobject");
		
		
		return mav;
		
	}
	 
	

	@GetMapping("/wishlist")
	public ModelAndView objectView(ModelAndView mav, HttpServletRequest request) throws ParseException{
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		mav.addObject("wish_list", wish_list);
		
		double percent = 0;
		
		System.out.println(saving_vo.getSavingbalance());
		
		String aa = "";
		String target_date = "";
		String target_date_dd = "";
		String bb = "";
		String dday = "";
		
		for(int i = 0; i < wish_list.size(); i++) {
			
			
			System.out.println(wish_list.get(i));
			
		}
		
		for(int i = 0; i < wish_list.size(); i++) {
			
			if(wish_list.get(i).getStatus() == 0) {
			
				percent = (double)saving_vo.getSavingbalance() / (double)wish_list.get(i).getTarget_price();
				
				aa = wish_list.get(i).getStart_date().substring(0, 10);
				
				System.out.println(aa);
				
				target_date = aa.substring(0, 4) + aa.substring(5, 7); 
				
				target_date_dd = aa.substring(8, 10);
				
				bb = aa.substring(0, 4) + aa.substring(5, 7) + aa.substring(8, 10); 
			
				aa = DateUtils.addMonth(target_date, wish_list.get(i).getDuration());
				
				System.out.println(aa + target_date_dd);
				
				break;
				
			}
			
		}
		
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
		
		
		List<FileVO> filevo_list = fService.ObatinFileVOList();
		
		for(int i = 0; i < filevo_list.size(); i++) {
			
			System.out.println(filevo_list.get(i));
		}
		
		
		aa = DateUtils.changeToFormat(aa, "/"); // 목표일
		bb = DateUtils.changeToFormat(bb, "/"); // 시작일
		
		System.out.println(percent);
		
		List<SavingLogVO> saving_log_list = sService.selectAllSavingLog(saving_vo.getSaving_pk());
		
		for(int i = 0; i < saving_log_list.size(); i++) {
			
			saving_log_list.get(i).setSaving_date(saving_log_list.get(i).getSaving_date().split("\\s")[0]);
			
			
		}
		
		mav.addObject("saving_log_list", saving_log_list);
		mav.addObject("percent", percent * 100);
		mav.addObject("aa", aa);
		mav.addObject("bb",bb);
		mav.addObject("saving_vo", saving_vo);
		mav.addObject("diff", diff);
		mav.addObject("filevo_list", filevo_list);
		
		mav.setViewName("mypage/wishlist");
		
		
		return mav;
		
	}
	
	@PostMapping("/saving_process")
	public ModelAndView objectView(ModelAndView mav, TargetWeekVO weekVO, TargetSlowVO slowVO,
			TargetPayVO payVO, TargetBanVO banVO, TargetGwaVO gwaVO, TargetSanVO sanVO, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		weekVO.setSaving_pk(saving_vo.getSaving_pk());
		slowVO.setSaving_pk(saving_vo.getSaving_pk());
		payVO.setSaving_pk(saving_vo.getSaving_pk());
		banVO.setSaving_pk(saving_vo.getSaving_pk());
		gwaVO.setSaving_pk(saving_vo.getSaving_pk());
		sanVO.setSaving_pk(saving_vo.getSaving_pk());
		

		
		System.out.println(weekVO);
		System.out.println("=================");
		System.out.println(slowVO);
		System.out.println("=================");
		System.out.println(payVO);
		System.out.println("=================");
		System.out.println(banVO);
		System.out.println("=================");
		System.out.println(gwaVO);
		System.out.println("=================");
		System.out.println(sanVO);
		System.out.println("=================");
		
		//6개 테이블 업데이트
		stService.updateWeek(weekVO);
		stService.updateSlow(slowVO);
		stService.updatePay(payVO);
		stService.updateBan(banVO);
		stService.updateGwa(gwaVO);
		stService.updateSan(sanVO);
		
		
		mav.setViewName("redirect:/");
		
		
		return mav;
		
	}
	
	/*
	 * @GetMapping("/savecustom") public ModelAndView saveView(ModelAndView mav,
	 * HttpServletRequest request) {
	 * 
	 * HttpSession session = request.getSession();
	 * 
	 * MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
	 * 
	 * SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
	 * 
	 * //6개 저축 방식 가져오기 TargetWeekVO weekVO =
	 * stService.selectWeekStatus(saving_vo.getSaving_pk()); TargetSlowVO slowVO =
	 * stService.selectSlowStatus(saving_vo.getSaving_pk()); TargetPayVO payVO =
	 * stService.selectPayStatus(saving_vo.getSaving_pk()); TargetBanVO banVO =
	 * stService.selectBanStatus(saving_vo.getSaving_pk()); TargetGwaVO gwaVO =
	 * stService.selectGwaStatus(saving_vo.getSaving_pk()); TargetSanVO sanVO =
	 * stService.selectSanStatus(saving_vo.getSaving_pk()); SavingDetailVO
	 * saving_detail = sService.obtainSavingDetailVO(saving_vo.getSaving_pk());
	 * 
	 * mav.addObject("saving_detail", saving_detail); mav.addObject("weekVO",
	 * weekVO); mav.addObject("slowVO", slowVO); mav.addObject("payVO", payVO);
	 * mav.addObject("banVO", banVO); mav.addObject("gwaVO", gwaVO);
	 * mav.addObject("sanVO", sanVO);
	 * 
	 * 
	 * mav.setViewName("mypage/savecustom");
	 * 
	 * return mav;
	 * 
	 * }
	 */
	
	@GetMapping("/savecustom")
	public ModelAndView saveDetailView(ModelAndView mav, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		double total_wish_price = 0;
		
		for(int i = 0; i < wish_list.size(); i++) {
			
			total_wish_price += wish_list.get(i).getTarget_price();
			
		}
		
		String[] stChange1 = wish_list.get(0).getStart_date().split("\\s");
		
		mav.addObject("start", stChange1[0]);
		
		System.out.println(saving_vo.getSavingbalance());
		
		System.out.println(total_wish_price);
		
		
		
		
		total_wish_price = ( saving_vo.getSavingbalance() / total_wish_price ) * 100;
		
		System.out.println(total_wish_price);
		
		mav.addObject("wish_percent", (int)total_wish_price);
		
		List<SavingLogVO> saving_log_list = sService.selectAllSavingLog(saving_vo.getSaving_pk());
		
		for(int i = 0; i < saving_log_list.size(); i++) {
			
			saving_log_list.get(i).setSaving_date(saving_log_list.get(i).getSaving_date().split("\\s")[0]);
			
			
		}
		
		mav.addObject("wish_list", wish_list);
		
		mav.addObject("saving_vo", saving_vo);
		
		mav.addObject("saving_log_list", saving_log_list);
		
		
		TargetWeekVO weekVO = stService.selectWeekStatus(saving_vo.getSaving_pk());
		TargetSlowVO slowVO = stService.selectSlowStatus(saving_vo.getSaving_pk());
		TargetPayVO payVO = stService.selectPayStatus(saving_vo.getSaving_pk());
		TargetBanVO banVO = stService.selectBanStatus(saving_vo.getSaving_pk());
		TargetGwaVO gwaVO = stService.selectGwaStatus(saving_vo.getSaving_pk());
		TargetSanVO sanVO = stService.selectSanStatus(saving_vo.getSaving_pk());
		
		SavingDetailVO saving_detail = sService.obtainSavingDetailVO(saving_vo.getSaving_pk());
		
		
		
		
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
		
		mav.addObject("fir_cnt", fir_cnt);
		mav.addObject("sec_cnt", sec_cnt);
		mav.addObject("thi_cnt", thi_cnt);
		
		
		
		mav.addObject("predict_money", predict_money);
		mav.addObject("saving_detail", saving_detail);
		mav.addObject("weekVO", weekVO);
		mav.addObject("slowVO", slowVO);
		mav.addObject("payVO", payVO);
		mav.addObject("banVO", banVO);
		mav.addObject("gwaVO", gwaVO);
		mav.addObject("sanVO", sanVO);
		mav.addObject("first_status_money", first_status_money);
		mav.addObject("second_status_money", second_status_money);
		mav.addObject("third_status_money", third_status_money);
		
		mav.setViewName("mypage/savecustom");
		
		return mav;
		
	}
	
	@PostMapping("/savecustom")
	@ResponseBody
	public ModelAndView savePostDetailView(ModelAndView mav, HttpServletRequest request, SavingDetailVO savingdetailVO) {
		
		System.out.println(savingdetailVO);
		
		sService.updateSavingDetailVO(savingdetailVO);

		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		double total_wish_price = 0;
		
		for(int i = 0; i < wish_list.size(); i++) {
			
			total_wish_price += wish_list.get(i).getTarget_price();
			
		}
		
		String[] stChange1 = wish_list.get(0).getStart_date().split("\\s");
		
		mav.addObject("start", stChange1[0]);
		
		System.out.println(saving_vo.getSavingbalance());
		
		System.out.println(total_wish_price);
		
		
		
		
		total_wish_price = ( saving_vo.getSavingbalance() / total_wish_price ) * 100;
		
		System.out.println(total_wish_price);
		
		mav.addObject("wish_percent", (int)total_wish_price);
		
		List<SavingLogVO> saving_log_list = sService.selectAllSavingLog(saving_vo.getSaving_pk());
		
		for(int i = 0; i < saving_log_list.size(); i++) {
			
			saving_log_list.get(i).setSaving_date(saving_log_list.get(i).getSaving_date().split("\\s")[0]);
			
			
		}
		
		mav.addObject("wish_list", wish_list);
		
		mav.addObject("saving_vo", saving_vo);
		
		mav.addObject("saving_log_list", saving_log_list);
		
		
		TargetWeekVO weekVO = stService.selectWeekStatus(saving_vo.getSaving_pk());
		TargetSlowVO slowVO = stService.selectSlowStatus(saving_vo.getSaving_pk());
		TargetPayVO payVO = stService.selectPayStatus(saving_vo.getSaving_pk());
		TargetBanVO banVO = stService.selectBanStatus(saving_vo.getSaving_pk());
		TargetGwaVO gwaVO = stService.selectGwaStatus(saving_vo.getSaving_pk());
		TargetSanVO sanVO = stService.selectSanStatus(saving_vo.getSaving_pk());
		
		SavingDetailVO saving_detail = sService.obtainSavingDetailVO(saving_vo.getSaving_pk());
		
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
		
		mav.addObject("predict_money", predict_money);
		mav.addObject("saving_detail", saving_detail);
		mav.addObject("weekVO", weekVO);
		mav.addObject("slowVO", slowVO);
		mav.addObject("payVO", payVO);
		mav.addObject("banVO", banVO);
		mav.addObject("gwaVO", gwaVO);
		mav.addObject("sanVO", sanVO);
		mav.addObject("first_status_money", first_status_money);
		mav.addObject("second_status_money", second_status_money);
		mav.addObject("third_status_money", third_status_money);
		mav.setViewName("mypage/savecustom");
		
		return mav;
		
	}
	
	@GetMapping("/share")
	public ModelAndView shareBoardView(ModelAndView mav, HttpServletRequest request) {
		
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		List<WishVO> wish_list = wservice.searchAllBySavingPk(saving_vo.getSaving_pk());
		
		WishVO wish = wish_list.get(0);
		
	
		double percent = (((double)saving_vo.getSavingbalance() / (double)wish.getTarget_price())) * 100;
		
		//Object_SHARE에 INSERT
		ShareObjectVO shareVO = new ShareObjectVO();
		shareVO.setObject_name(wish.getWish_name());
		shareVO.setName(userVO.getName());
		shareVO.setPercent((int)percent);
		shareVO.setObject_price(wish.getTarget_price());
		shareVO.setP_file_id(wish.getP_file_id());
		
		List<ObjectReVO> reply_list = wservice.obtainReply();
		
		//SHARE OBJECT INSERT하고 OBJECTSHARE LIST가져와서 다시 뿌리기 
		//COIN 1개 늘려주고, 
		mav.addObject("reply_list", reply_list);
		mav.addObject("coin", userVO.getCoin() + 1);
		mav.addObject("wish", wish);
		
		List<FileVO> fileVOList = new ArrayList<FileVO>();
		
		//목표 리스트 가져오기
		List<ShareObjectVO> shareList =  wservice.obtainShareObjectList();
		
		for(int i = 0 ; i < shareList.size(); i++) {
			
			System.out.println(shareList.get(i));
			
			FileVO fileVO = fService.obtainFileVO(shareList.get(i).getP_file_id());
			
			fileVOList.add(fileVO);
			
		}
		
		//List<>
		
		mav.addObject("fileVOList", fileVOList);
		mav.addObject("shareList", shareList);
		mav.setViewName("share");
		
		return mav;
		
	}
	
	   
	
	
}

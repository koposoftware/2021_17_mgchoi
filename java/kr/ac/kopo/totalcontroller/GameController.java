package kr.ac.kopo.totalcontroller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

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
import kr.ac.kopo.totalservice.GameService;
import kr.ac.kopo.totalservice.SavingService;
import kr.ac.kopo.totalvo.AccountVO;
import kr.ac.kopo.totalvo.GameCardVO;
import kr.ac.kopo.totalvo.GameInfoVO;
import kr.ac.kopo.totalvo.SavingVO;
import kr.ac.kopo.util.DateUtils;

@Controller
public class GameController {
	
	@Autowired 
	private SavingService sService;
	
	@Autowired
	private GameService gService;
	
	@GetMapping("/gameinfo")
	public ModelAndView gameInfo(HttpServletRequest request, ModelAndView mav) throws ParseException {
		
		
		mav.setViewName("game/gameinfo");
		
		return mav;
		
	}
	
	@GetMapping("/gamecoin")
	public ModelAndView gameCoin(HttpServletRequest request, ModelAndView mav) throws ParseException {
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());	
		
		GameInfoVO gameinfo_vo = gService.obtainGameInfoVOByPk(saving_vo);
		
		
		mav.addObject("saving_vo", saving_vo);
		mav.addObject("gameinfo_vo", gameinfo_vo);
		mav.setViewName("game/gamecoin");
		
		return mav;
		
	}
	
	@GetMapping("/gamemypage")
	public ModelAndView gameMyView(HttpServletRequest request, ModelAndView mav) throws ParseException {
		
		//적금통장 정보 뿌려줘야해 , SavingVO
		//잔액 + 금리 + 남은 기한 + 시작 기한
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());	
		//게임 데이터 뿌려줘야해, Game
		//게임 레벨, 게임으로 올린 금리, 오늘 주사위 개수, 코인 개수
		GameInfoVO gameinfo_vo = gService.obtainGameInfoVOByPk(saving_vo);
		//코인으로 룰렛돌리는 칸 만들어야함
		String a = DateUtils.changeDate(saving_vo.getInput_date());
		String b = DateUtils.changeYMD(DateUtils.getCurrentTime());
		int day = DateUtils.betweenFromTo(a, b);
		
		mav.addObject("day", day);
		mav.addObject("saving_vo", saving_vo);
		mav.addObject("gameinfo_vo", gameinfo_vo);
		mav.setViewName("game/mypage");
		
		//6개월
		if(saving_vo.getSaving_duedate().equals("6month")) {
			
			mav.addObject("final_day", Integer.parseInt(a) + 180);
			mav.addObject("day_rate",  day / Integer.parseInt(a) + 180);
		}
		
		//1년
		else if(saving_vo.getSaving_duedate().equals("1year")) {
			
			mav.addObject("final_day", Integer.parseInt(a) + 365);
			mav.addObject("day_rate",  day / Integer.parseInt(a) + 365);
		}

		
		return mav;
		
	}
	
	@RequestMapping("/game")
	public ModelAndView gameStart(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());	
		
		List<GameCardVO> gameList = gService.selectAllCard();
		
		List<String> cardTitleList = new ArrayList<String>();
		List<String> cardUrlList = new ArrayList<String>();
		List<String> cardUpDownList = new ArrayList<String>();
		List<String> cardTypeList = new ArrayList<String>();
		
		
		for(int i = 0; i < gameList.size(); i++) {
			
			cardTitleList.add(gameList.get(i).getGame_card_title());
			cardUrlList.add(gameList.get(i).getGame_card_url());
			cardUpDownList.add(gameList.get(i).getGame_card_up_down());
			cardTypeList.add(gameList.get(i).getGame_card_type());
			
		}
		
		ModelAndView mav = new ModelAndView("game/game");
		
		GameInfoVO gameinfoVO = gService.obtainGameInfoVOByPk(saving_vo);
		
		
		mav.addObject("gameinfoVO", gameinfoVO);
		mav.addObject("list" , gameList);
		mav.addObject("cardTitleList", cardTitleList);
		mav.addObject("cardUrlList", cardUrlList);
		mav.addObject("cardUpDownList", cardUpDownList);
		mav.addObject("cardTypeList", cardTypeList);
		
		System.out.println(gameinfoVO);
		
		return mav;
	}
	
	@RequestMapping("/gameresult")
	public ModelAndView gameResult(HttpServletRequest request, GameInfoVO gameinfo_vo, ModelAndView mav) {
		
		String game_score = request.getParameter("gamescore");
		//사용자 아이디로 DB조회 -> 점수값이 더 높으면 갱신
		HttpSession session = request.getSession();
		
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		String prev_game_score = request.getParameter("prev_gamescore");
		
		String coin = request.getParameter("coin");
		
		List<GameInfoVO> rank = gService.obtainGameInfoVORank();
		
		String fir = "";
		String sec = "";
		String thi = "";
		
		for(int i = 0; i < rank.size(); i++) {
			
			if(i == 0) fir = gService.obtainMemberName(rank.get(i).getSaving_pk());
			
			else if(i == 1) sec = gService.obtainMemberName(rank.get(i).getSaving_pk());
			
			else if(i == 2) thi = gService.obtainMemberName(rank.get(i).getSaving_pk());
			
		}
		
		int total_cnt = gService.obtainTotalCount();
		int game_rank = gService.obtainRank(saving_vo.getSaving_pk());
		
		System.out.println(game_rank);
		System.out.println(total_cnt);
		
		double rate = ((double)game_rank / (double)total_cnt) * 100;
		
		System.out.println(rate);
		
		gameinfo_vo.setCnt(gameinfo_vo.getCnt() - 1);
		gameinfo_vo.setGame_cash(Integer.parseInt(game_score));
		gameinfo_vo.setCoin(gameinfo_vo.getCoin() + Integer.parseInt(coin));
		gameinfo_vo.setSaving_pk(saving_vo.getSaving_pk());
		
		mav.addObject("coin", coin);
		mav.addObject("gameinfo_vo", gameinfo_vo);
		mav.addObject("prev_gamescore", prev_game_score);
		mav.addObject("rank", rank);
		mav.addObject("fir", fir);
		mav.addObject("sec", sec);
		mav.addObject("sec", sec);
		mav.addObject("rate", rate);
		
		//게임 상위 몇%인지
		//랭킹리스트 -> 이름이랑 자산
		//
		
		
		gService.updateGameInfo(gameinfo_vo);
		
		mav.setViewName("game/gameresult");
		
		
		return mav;
	}
	
	
	@GetMapping("/rullet")
	public ModelAndView gamerullet(HttpServletRequest request, ModelAndView mav) throws ParseException {
		
		HttpSession session = request.getSession();
		  
		MemberVO userVO = (MemberVO)session.getAttribute("MemberVO");
		
		SavingVO saving_vo = sService.obtainSavingVOByMem(userVO.getFun_member_pk());
		
		
		mav.addObject("saving_vo", saving_vo);
		
		mav.addObject("member", userVO);
		
		mav.setViewName("rullet");
		
		return mav;
		
	}
	
	
	
}

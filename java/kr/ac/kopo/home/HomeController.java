package kr.ac.kopo.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller 
public class HomeController {
	
	String port = "https://192.168.200.103:5571";
	
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@RequestMapping("test")
	public ModelAndView livetest(ModelAndView mav) {
		
		mav.setViewName("test");
		
		return mav;
		
	}
	
	@RequestMapping("testguest")
	public ModelAndView livetestguest(ModelAndView mav) {
		
		mav.setViewName("testguest");
		
		return mav;
		
	}

	
	@RequestMapping("/live")
	public ModelAndView liveOpen(ModelAndView mav) {
		      
      mav.addObject("socketPort", port);
      mav.setViewName("live/index");
      
      return mav;

	}
	
	@RequestMapping("/guest/{roomNo}")
    public ModelAndView socketUserPage(ModelAndView modelAndView, @PathVariable("roomNo") double roomNo) {
      
      modelAndView.addObject("socketPort", port);
      modelAndView.addObject("requestedRoom", (int)roomNo);
      
      modelAndView.setViewName("live/user");
     
      return modelAndView;
	}
	
	 @RequestMapping("/caster/{roomNo}")
   public ModelAndView testModelAndView2(ModelAndView modelAndView,  @PathVariable("roomNo") double roomNo )   {
      
      modelAndView.addObject("socketPort", port);
      modelAndView.addObject("requestedRoom", (int)roomNo);
   
      modelAndView.setViewName("live/caster");
        
      return modelAndView;
   }


	
}

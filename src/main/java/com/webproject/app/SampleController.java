package com.webproject.app;


import java.util.Locale;

 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class SampleController {
	private static final Logger logger = LoggerFactory.getLogger(SampleController.class);
	
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}

	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "login";
	}
	
	@RequestMapping(value = "join.do", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		return "join";
	}
	
	@RequestMapping(value = "joinAction.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String joinAction(Locale locale, Model model) {
		return "joinAction";
	}
	
	@RequestMapping(value = "loginAction.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String loginAction(Locale locale, Model model) {
		return "loginAction";
	}
	
	@RequestMapping(value = "logoutAction.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String logoutAction(Locale locale, Model model) {
		return "logoutAction";
	}
	
	@RequestMapping(value = "mypage.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String mypage(Locale locale, Model model) {
		return "mypage";
	}
	
	@RequestMapping(value = "mypageEdit.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String mypageEdit(Locale locale, Model model) {
		return "mypageEdit";
	}
	
	@RequestMapping(value = "mypageEditAction.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String mypageEditAction(Locale locale, Model model) {
		return "mypageEditAction";
	}
	
	@RequestMapping(value = "mainContent.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String mainContent(Locale locale, Model model) {
		return "mainContent";
	}
	
	@RequestMapping(value = "content.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String context(Locale locale, Model model) {
		return "content";
	}

	@RequestMapping(value = "orderList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String orderList(Locale locale, Model model) {
		return "orderList";
	}
	
	@RequestMapping(value = "soldList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String soldList(Locale locale, Model model) {
		return "soldList";
	}
	
	
	@RequestMapping(value = "expertRegister.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String expertRegister(Locale locale, Model model) {
		return "expertRegister";
	}
	
	@RequestMapping(value = "writeContent.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeContent(Locale locale, Model model) {
		return "writeContent";
	}
	

	@RequestMapping(value = "writeContentAction.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeContentAction(Locale locale, Model model) {
		return "writeContentAction";
	}

}
package com.webproject.app;


import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.webproject.app.Board.*;
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

	@RequestMapping(value = "mypage.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String mypage(Locale locale, Model model) {
		return "mypage";
	}

	@RequestMapping(value = "mypageEdit.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String mypageEdit(Locale locale, Model model) {
		return "mypageEdit";
	}

	@RequestMapping(value = "mainContent.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String mainContent(Locale locale, Model model) {
		return "mainContent";
	}

	@RequestMapping(value = "content.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String context(Locale locale, Model model) {
		return "content";
	}

	@RequestMapping(value = "orderList.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String orderList(Locale locale, Model model) {
		return "orderList";
	}

	@RequestMapping(value = "soldList.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String soldList(Locale locale, Model model) {
		return "soldList";
	}

	@RequestMapping(value = "expertRegister.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String expertRegister(Locale locale, Model model) {
		return "expertRegister";
	}

	@RequestMapping(value = "writeContent.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeContent(Locale locale, Model model) {
		return "writeContent";
	}

	@RequestMapping(value = "pay.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String pay(Locale locale, Model model) {
		return "pay";
	}

	
	@RequestMapping(value = "writeContentAction.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String requestupload1(Model model, MultipartHttpServletRequest mtfRequest) throws IOException {
		HttpSession session = mtfRequest.getSession();	
		
		
		Board board = new Board();
		BoardDAO boardDAO = new BoardDAO();
		String userID = (String) session.getAttribute("userID");

		int categoryNum = Integer.parseInt(mtfRequest.getParameter("categoryDetail"));
        String tabone = mtfRequest.getParameter("tabone");
        String tabtwo = mtfRequest.getParameter("tabtwo");
        String tabthree = mtfRequest.getParameter("tabthree");
        String tabfour = mtfRequest.getParameter("tabfour");
        String subject = mtfRequest.getParameter("subject");
        int price = Integer.parseInt(mtfRequest.getParameter("price"));
        String startDate = mtfRequest.getParameter("start-period");
        String endDate = mtfRequest.getParameter("end-period");
        String progress = mtfRequest.getParameter("select");
        int maxPeople = Integer.parseInt(mtfRequest.getParameter("maxPeople"));
        
        

        board.setCategoryNum(categoryNum);
        board.setTabone(tabone);
        board.setTabtwo(tabtwo);
        board.setTabthree(tabthree);
        board.setTabfour(tabfour);
        board.setSubject(subject);
        board.setPrice(price);
        board.setStartDate(startDate);
        board.setEndDate(endDate);
        board.setProgress(progress);
        board.setMaxPeople(maxPeople);
        
        
        MultipartFile mf = mtfRequest.getFile("uploadfile");

        String path = "C:\\image\\"; // 절대경로 ( 기본경로가 없음 / 찾아봐야됨)

        String originFileName = mf.getOriginalFilename(); // 원본 파일 명
        // boardNum 값으로 파일이름 대체하는 기능 추가
        long fileSize = mf.getSize(); // 파일 사이즈

        System.out.println("originFileName : " + originFileName);
        System.out.println("fileSize : " + fileSize);

        mf.transferTo(new File(path+originFileName));

        int result = boardDAO.writeContent(userID, board);

        
        if(result == -1) {
        	model.addAttribute("msg", "잘못 입력된 사항이 있습니다. 다시 입력해주세요!");
        	model.addAttribute("url", "writeContentAction.do");
        	return "writeContentError";
        }
        else
        	return "mainContent";
    }

}
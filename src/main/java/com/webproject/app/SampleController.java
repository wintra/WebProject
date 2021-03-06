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
import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.webproject.app.Board.*;

@Controller
public class SampleController {
	private static final Logger logger = LoggerFactory.getLogger(SampleController.class);
	String path = "D:\\eclipse\\WebProject\\src\\main\\webapp\\resources\\image\\"; // 절대경로 ( 기본경로가 없음 / 찾아봐야됨)
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

	@RequestMapping(value = "myList.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String myList(Locale locale, Model model) {
		return "myList";
	}

	@RequestMapping(value = "expertRegister.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String expertRegister(Locale locale, Model model) {
		return "expertRegister";
	}

	@RequestMapping(value = "writeContent.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeContent(Locale locale, Model model) {
		return "writeContent";
	}

	@RequestMapping(value = "payment.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String pay(Locale locale, Model model) {
		return "payment";
	}

	@RequestMapping(value = "writeContentAction.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String contentUpload(Model model, MultipartHttpServletRequest mtfRequest) throws IOException {
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
		String extension = FilenameUtils.getExtension(mf.getOriginalFilename());

		
		
		int boardNum = boardDAO.writeContent(userID, board); // 파일 이름 바꿔서 서버에 저장
		int result = boardDAO.setFileName(boardNum, extension);
		
		mf.transferTo(new File(path + boardNum + "." + extension));

		return "home";
	}

	@RequestMapping(value = "reviseContentAction.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String contentUpdate(Model model, MultipartHttpServletRequest mtfRequest) throws IOException {

		int boardNum = Integer.parseInt(mtfRequest.getParameter("boardNum"));
		Board board = new Board();
		BoardDAO boardDAO = new BoardDAO();

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
		
		String reviseFileName = mf.getOriginalFilename(); // 새로 들어온 파일 명
		
		
		File gifFile = new File(path+boardNum +".gif");
		File pngFile = new File(path+boardNum +".png");
		File jpgFile = new File(path+boardNum +".jpg");
		
		if (gifFile.exists() || pngFile.exists() || jpgFile.exists()) {
			if (gifFile.delete() | pngFile.delete() | jpgFile.delete()) {
				System.out.println("파일삭제 성공");
			} else {
				System.out.println("파일삭제 실패");
			}
		} else {
			System.out.println("파일이 존재하지 않습니다.");
		}

		String extension = FilenameUtils.getExtension(reviseFileName);
		mf.transferTo(new File(path + boardNum + "." + extension));

		int result = boardDAO.reviseContent(boardNum, board);
		int setfile = boardDAO.setFileName(boardNum, extension);

		if (result == -1) {
			return "writeContentError";
		} else
			return "home";
	}

	@RequestMapping(value = "reviseContent.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String reviseContent(Locale locale, Model model) {
		return "reviseContent";
	}
	
	@RequestMapping(value = "reviseExpert.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String reviseExpert(Locale locale, Model model) {
		return "reviseExpert";
	}
	
	@RequestMapping(value = "review.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String review(Locale locale, Model model) {
		return "review";
	}
	
	@RequestMapping(value = "kakaopay.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String kakaopay(Locale locale, Model model) {
		return "kakaopay";
	}
	
	@RequestMapping(value = "searchContent.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String searchContent(Locale locale, Model model) {
		return "searchContent";
	}
	
	@RequestMapping(value = "modal.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String modal(Locale locale, Model model) {
		return "modal";
	}


}
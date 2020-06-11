package com.webproject.app;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.util.Locale;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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

	/*
	@RequestMapping(value = "writeContentAction.do", method = RequestMethod.POST)
	public String handleFormUpload(@RequestParam("file") MultipartFile file) throws IOException {
		if (!file.isEmpty()) {
			BufferedImage src = ImageIO.read(new ByteArrayInputStream(file.getBytes()));
			File destination = new File("D:\\eclipse\\WebProject\\src\\main\\webapp\\resources\\assets\\file"); // something
																												// like
																												// C:/Users/tom/Documents/nameBasedOnSomeId.png
			ImageIO.write(src, "png", destination);
			// Save the id you have used to create the file name in the DB. You can retrieve
			// the image in future with the ID.
		}
		return "home";
	}

	 
	 */
	@RequestMapping( value= "writeContentAction.do", method = RequestMethod.POST)
	public String upload(MultipartFile uploadfile) {
		
		logger.info("upload() POST 호출");
	    logger.info("파일 이름: {}", uploadfile.getOriginalFilename());
	    logger.info("파일 크기: {}", uploadfile.getSize());

	    saveFile(uploadfile);
	    
	    return "home";
	}

	private static final String UPLOAD_PATH = "D:\\eclipse\\upload";
	
	private void saveFile(MultipartFile file){
	    // 파일 이름 변경
	    UUID uuid = UUID.randomUUID();
	    String saveName = uuid + "_" + file.getOriginalFilename();

	    logger.info("saveName: {}",saveName);

	    // 저장할 File 객체를 생성(껍데기 파일)ㄴ
	    File saveFile = new File(UPLOAD_PATH,saveName); // 저장할 폴더 이름, 저장할 파일 이름

	    try {
	        file.transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘
	    } catch (IOException e) {
	        e.printStackTrace();

	    }
	}
}
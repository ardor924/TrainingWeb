package com.study.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	
	@RequestMapping("index.do")
	public String indexPage() {
		return "index";
	}
	
	@RequestMapping("main.do")
	public String mainPage(Model model) {
		
		//---------------- 임시작업 - 이미지출력 START--------//
		model.addAttribute("banner1", "image/banner1.jpg");
		model.addAttribute("banner2", "image/banner2.jpg");
		model.addAttribute("banner3", "image/banner3.jpg");
		//임시프사		
		model.addAttribute("memberimage", "image/unknown.png");
		//---------------- 임시작업 - 이미지출력 END--------//

		return "main_page";
	}
	
	
	@RequestMapping("test3.do")
	public String test3View() {
		return "test3";
	}
	
	
	
	
	
	
}

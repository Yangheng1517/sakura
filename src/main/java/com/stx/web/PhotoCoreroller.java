package com.stx.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stx.biz.PhotoBiz;
import com.stx.biz.TePhotoBiz;
import com.stx.entity.tephoto;

/**
*@author yh
*@version 1.0
*<p>日期Jun 18, 2019 2:10:09 PM</p>
*
*/
@Controller
@RequestMapping("/photo")
public class PhotoCoreroller {

	@Autowired
	private TePhotoBiz tephotobiz;
	
	@Autowired
	private PhotoBiz photobiz;
	
	
	@RequestMapping(value="/agree.do")
	public ModelAndView agree(tephoto te) {
		
		photobiz.savePhoto(te);
		tephotobiz.delTePhoto(te.getTename());
		ModelAndView mav = new ModelAndView("redirect:/user/toc.do");
		return mav;
		
	}
	

	@RequestMapping(value="/dis.do")
	public ModelAndView dis(String name) {
		
		tephotobiz.delTePhoto(name);
		ModelAndView mav = new ModelAndView("redirect:/user/toc.do");
		return mav;
		
	}
}

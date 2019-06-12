package com.stx.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.stx.biz.TePhotoBiz;
import com.stx.entity.tephoto;
import com.stx.entity.user;

/**
*@author yh
*@version 1.0
*<p>日期Jun 11, 2019 9:41:16 PM</p>
*
*/
@Controller
@RequestMapping("/tephoto")
public class TephtotCoreroller {
	
	@Autowired
	private TePhotoBiz tephotobiz;
	
	
	@RequestMapping("/zctephoto.do")
	public String zctephoto() {
		return "zcphoto";
	}
	
	@RequestMapping(value="/foundtephoto.do",method=RequestMethod.POST)
	public ModelAndView foundtephoto(HttpSession session) {
		user us = (user)session.getAttribute("user");
		
		List<tephoto> li = tephotobiz.foundTePhoto(us.getUname());
		ModelAndView mav1 = new ModelAndView("","tephoto",li);
		ModelAndView mav2 = new ModelAndView("");
		if(li!=null) {
			return mav1;
		}else {
			return mav2;
		}
		
	}
	
	
	@RequestMapping(value="/add.do",method=RequestMethod.POST)
	public ModelAndView add(tephoto te) {
		
		ModelAndView mav = new ModelAndView("");
		if(tephotobiz.saveTePhoto(te)>0) {
			mav.addObject("MEG","申请成功");
		}else {
			mav.addObject("MEG","申请失败");
		}
		return mav;
		
	}

	
}

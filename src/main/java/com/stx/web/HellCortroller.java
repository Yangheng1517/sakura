package com.stx.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.stx.biz.UserBiz;
import com.stx.entity.user;

/**
*@author yh
*@version 1.0
*<p>日期Jun 4, 2019 10:36:11 AM</p>
*
*/
@Controller
public class HellCortroller {
	@Autowired
	private UserBiz userBiz;
	
	
	
	@RequestMapping(value="/login.do",method=RequestMethod.POST)
	public ModelAndView login(user user,HttpSession session){
		user myUser = userBiz.login(user);
		ModelAndView mav1 = new ModelAndView("index");
		ModelAndView mav2 = new ModelAndView("login","Error","登录失败");
		if(myUser!=null){
			session.setAttribute("USER", myUser);
			return mav1;
		}
		return mav2;
	}
}

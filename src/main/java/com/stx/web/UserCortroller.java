package com.stx.web;

import javax.servlet.http.HttpServletRequest;
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
@RequestMapping("/user")
public class UserCortroller {
	@Autowired
	private UserBiz userBiz;
	
	@RequestMapping("/tologin.do")
	public String tologin() {
		return "login";
	}
	@RequestMapping("/toreg.do")
	public String toreg() {
		return "reg";
	}
	
	@RequestMapping(value="/login.do",method=RequestMethod.POST)
	public ModelAndView login(user user,HttpSession session){
		user myUser = userBiz.login(user);
		ModelAndView mav1 = new ModelAndView("main");
		ModelAndView mav2 = new ModelAndView("login","Error","登录失败");
		if(myUser!=null){
			session.setAttribute("USER", myUser);
			return mav1;
		}
		return mav2;
	}
	
	 
	
	@RequestMapping(value="/reg.do",method=RequestMethod.POST)
	public ModelAndView reg(user us,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("login");
		if(userBiz.reguser(us)>0) {
			mav.addObject("MSG","注册成功");
		}else {
			mav.addObject("MSG","注册失败");
		}
		return mav;
		
	}
}

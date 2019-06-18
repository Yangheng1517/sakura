package com.stx.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.stx.biz.TePhotoBiz;
import com.stx.biz.UserBiz;
import com.stx.entity.tephoto;
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
	@Autowired
	private TePhotoBiz tephotobiz;
	@RequestMapping("/tologin.do")
	public String tologin() {
		return "login";
	}
	@RequestMapping("/toreg.do")
	public String toreg() {
		return "save";
	}
	@RequestMapping("/tob.do")
	public String tob() {
		return "左边菜单";
	}
	@RequestMapping("/toa.do")
	public String toa() {
		return "台头";
	}
	
	
	@RequestMapping("/tod.do")
	public String tod() {
		return "中间台头";
	}
	
	
	@RequestMapping("/toc.do")
	public ModelAndView toc() {
		
		List<tephoto> li = tephotobiz.giveTePhoto();
		ModelAndView mav1 = new ModelAndView("中间","li",li);
		
		return mav1;
	}
	
	
	
	@RequestMapping("/toe.do")
	public String toe() {
		return "商品";
	}
	@RequestMapping(value="/login.do",method=RequestMethod.POST)
	public ModelAndView login(user user,HttpSession session){
		user myUser = userBiz.login(user);
		ModelAndView mav1 = new ModelAndView("main");
		ModelAndView mav2 = new ModelAndView("login","Error","登录失败");
		ModelAndView mav3 = new ModelAndView("man");
		if(myUser!=null){
			if("super".equals(myUser.getUpower())) {
				return mav3;
			}else {
				session.setAttribute("USER", myUser);
				return mav1;
			}
		
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

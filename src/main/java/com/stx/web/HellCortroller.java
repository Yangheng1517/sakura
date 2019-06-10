package com.stx.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
*@author yh
*@version 1.0
*<p>日期Jun 4, 2019 10:36:11 AM</p>
*
*/
@Controller
public class HellCortroller {
	@RequestMapping("/hello.do")
	public String hello() {
		System.out.println("hello spring...");
		return "hello";
	}
}

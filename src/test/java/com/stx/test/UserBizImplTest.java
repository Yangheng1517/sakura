package com.stx.test;

import static org.junit.Assert.assertNotNull;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.stx.biz.UserBiz;
import com.stx.entity.user;

/**
*@author yh
*@version 1.0
*<p>日期Jun 12, 2019 2:18:11 PM</p>
*
*/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:applicationContext.xml")
public class UserBizImplTest {
	@Autowired
	private UserBiz userbiz;
	private user item;
	
	@Before
	public void setUp() throws Exception {
		item = new user();
		item.setUname("ydh");
		item.setUpass("ydh520614");
	}

	@Test
	public void testLogin() {
		user us = userbiz.login(item);
		assertNotNull(us);
	}

//	@Test
//	public void testReguser() {
//		fail("Not yet implemented");
//	}

}

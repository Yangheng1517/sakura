package com.stx.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stx.biz.UserBiz;
import com.stx.dao.UserDao;
import com.stx.entity.user;

/**
*@author yh
*@version 1.0
*<p>日期Jun 10, 2019 11:53:24 PM</p>
*
*/
@Service
public class UserBizImpl implements UserBiz {
	 @Autowired
	 private UserDao userDao;
	@Override
	public user login(user us) {
		
		user ur = userDao.getuser(us.getUname());
		if(ur!=null && us.getUpass().equals(ur.getUpass())) {
			return ur;
		}
		
		return null;
	}

}

package com.stx.dao;

import com.stx.entity.user;

/**
*@author yh
*@version 1.0
*<p>日期Jun 10, 2019 11:31:12 PM</p>
*
*/
public interface UserDao {
	public user getuser(String uname);
	public int saveuser(user us);
}

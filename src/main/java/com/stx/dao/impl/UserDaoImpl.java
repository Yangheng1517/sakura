package com.stx.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.dao.UserDao;
import com.stx.entity.user;

/**
*@author yh
*@version 1.0
*<p>日期Jun 10, 2019 11:36:46 PM</p>
*
*/

@Repository
public class UserDaoImpl implements UserDao {
	
	@Resource
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public user getuser(String uname) {
		String sql = "select * from user where uname=?";
		Object[] na = {uname};
		user us = null;
		try {
			us = jdbcTemplate.queryForObject(sql, na, new BeanRowMapper());
		} catch (Exception e) {
			return us;
		}
		return us;
	}
	
	private class BeanRowMapper implements RowMapper<user>{
		@Override
		public user mapRow(ResultSet rs, int rowNum) throws SQLException{
			int uid = rs.getInt("uid");
			String uname = rs.getString("uname");
			String upass = rs.getString("upass");
			int uage = rs.getInt("uage");
			String usex = rs.getString("usex");
			user us = new user(uid, uname, upass, usex, uage);
			return us;
		}
	}
	
	@Override
	public int saveuser(user us) {
		String sql ="insert into user(uname,upass,uage,usex) values(?,?,?,?)";
		Object[] na = {us.getUname(),us.getUpass(),us.getUage(),us.getUsex()};
		int unm = jdbcTemplate.update(sql, na);
		return unm;
	}
}

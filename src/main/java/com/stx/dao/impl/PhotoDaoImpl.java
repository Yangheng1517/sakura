package com.stx.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.dao.PhotoDao;
import com.stx.entity.photo;
import com.stx.entity.tephoto;

/**
*@author yh
*@version 1.0
*<p>日期Jun 14, 2019 9:22:07 AM</p>
*
*/
@Repository
public class PhotoDaoImpl implements PhotoDao {

	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	
	@Override
	public int addPhoto(tephoto ph) {
		// TODO Auto-generated method stub
		String sql = "insert into photo(pname,page,psex,pintro,pnum) values(?,?,?,?,?)";
		Object[] ob = {ph.getTename(),ph.getTeage(),ph.getTesex(),ph.getTeintro(),ph.getTenum()};
		return jdbcTemplate.update(sql, ob);
	}

	@Override
	public List<photo> getPhoto() {
		// TODO Auto-generated method stub
		
		String sql = "select * from photo";
		List<photo> li = jdbcTemplate.query(sql,new BeanRowMapper());
		
		
		return li;
	}
	
	private class BeanRowMapper implements RowMapper<photo>{

		@Override
		public photo mapRow(ResultSet rs, int rowNum) throws SQLException {
			// TODO Auto-generated method stub
			
			int id = rs.getInt("pid");
			String name = rs.getString("pname");
			int age = rs.getInt("page");
			String sex = rs.getString("psex");
			String intro = rs.getString("pintro");
			String pnum = rs.getString("pnum");
			photo ph = new photo(id, name, age, sex,intro,pnum);
			return ph;
		}
		
	}
	
	
}

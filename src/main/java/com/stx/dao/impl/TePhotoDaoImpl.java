package com.stx.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.dao.TePhotoDao;
import com.stx.entity.tephoto;

/**
*@author yh
*@version 1.0
*<p>日期Jun 11, 2019 8:30:16 PM</p>
*
*/
@Repository
public class TePhotoDaoImpl implements TePhotoDao {

	@Resource
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<tephoto> getTePhoto(String name) {
		String sqlString = "select * from tephoto where tename=?";
		
		Object [] ob = {name};
	
		List<tephoto> li = jdbcTemplate.query(sqlString, ob,new BeanRowMapper());
	
		return li;
	}
	
	private class BeanRowMapper implements RowMapper<tephoto>{

		@Override
		public tephoto mapRow(ResultSet rs, int rowNum) throws SQLException {
			// TODO Auto-generated method stub
			
			int teid = rs.getInt("teid");
			String tename = rs.getString("tename");
			int teage = rs.getInt("teage");
			String tesex = rs.getString("tesex");
			String teintro = rs.getString("teintro");
			tephoto te = new tephoto(teid, tename, teage, tesex,teintro);
			return te;
		}
		
	}
	
	
	@Override
	public int saveTePhoto(tephoto te) {
		// TODO Auto-generated method stub
		String sql = "insert into user values(?,?,?,?)";
		Object[] ob = {te.getTename(),te.getTeage(),te.getTesex(),te.getTeintro()};
		int num = jdbcTemplate.update(sql, ob);
		return num;
	}


	@Override
	public int delTePhoto(String name) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM tephoto where tename = ?";
		Object[] ob = {name};
		return jdbcTemplate.update(sql,ob);
	}

}

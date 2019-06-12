package com.stx.dao;

import java.util.List;

import com.stx.entity.tephoto;


/**
*@author yh
*@version 1.0
*<p>日期Jun 11, 2019 8:25:13 PM</p>
*
*/
public interface TePhotoDao {
	public List<tephoto> getTePhoto(String name);
	public int saveTePhoto(tephoto te);
	public int delTePhoto(String name);
}

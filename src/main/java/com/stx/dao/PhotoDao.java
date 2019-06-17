package com.stx.dao;

import java.util.List;

import com.stx.entity.photo;
import com.stx.entity.tephoto;

/**
*@author yh
*@version 1.0
*<p>日期Jun 14, 2019 9:19:02 AM</p>
*
*/
public interface PhotoDao {
	public int addPhoto(tephoto ph);
	public List<photo> getPhoto();
}

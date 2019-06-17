package com.stx.biz;

import java.util.List;

import com.stx.entity.photo;
import com.stx.entity.tephoto;

/**
*@author yh
*@version 1.0
*<p>日期Jun 14, 2019 11:37:46 AM</p>
*
*/
public interface PhotoBiz {
	public int savePhoto(tephoto ph);
	public List<photo> getPhoto();
}

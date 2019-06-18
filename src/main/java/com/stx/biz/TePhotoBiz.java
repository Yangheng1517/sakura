package com.stx.biz;

import java.util.List;

import com.stx.entity.tephoto;

/**
*@author yh
*@version 1.0
*<p>日期Jun 11, 2019 8:53:36 PM</p>
*
*/
public interface TePhotoBiz {
	public List<tephoto> foundTePhoto(String name);
	public List<tephoto> giveTePhoto();
	public int saveTePhoto(tephoto te);
	public int delTePhoto(String name);
}

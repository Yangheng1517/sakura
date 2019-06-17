package com.stx.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stx.biz.PhotoBiz;
import com.stx.dao.PhotoDao;
import com.stx.entity.photo;
import com.stx.entity.tephoto;

/**
*@author yh
*@version 1.0
*<p>日期Jun 14, 2019 11:40:15 AM</p>
*
*/
@Service
public class PhotoBizImpl implements PhotoBiz {
	
	@Autowired
	private PhotoDao photodao;
	
	@Override
	public int savePhoto(tephoto ph) {
		// TODO Auto-generated method stub	
		return photodao.addPhoto(ph);
	}

	@Override
	public List<photo> getPhoto() {
		
		return photodao.getPhoto();
	}

}

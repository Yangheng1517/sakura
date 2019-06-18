package com.stx.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stx.biz.TePhotoBiz;
import com.stx.dao.TePhotoDao;
import com.stx.entity.tephoto;

/**
*@author yh
*@version 1.0
*<p>日期Jun 11, 2019 9:30:51 PM</p>
*
*/
@Service
public class TePhotoBizImpl implements TePhotoBiz {
	@Autowired
	private TePhotoDao tephotoDao;
	
	@Override
	public List<tephoto> foundTePhoto(String name) {
		// TODO Auto-generated method stub
		
		List<tephoto> li = tephotoDao.getTePhoto(name);
		return li;
	}

	@Override
	public int saveTePhoto(tephoto te) {
		// TODO Auto-generated method stub
		return tephotoDao.saveTePhoto(te);
	}

	@Override
	public int delTePhoto(String name) {
		// TODO Auto-generated method stub
		return tephotoDao.delTePhoto(name);
	}

	@Override
	public List<tephoto> giveTePhoto() {
		// TODO Auto-generated method stub
		List<tephoto> li = tephotoDao.giveTePhoto();
		return li;
	}

}

package com.stx.entity;
/**
*@author yh
*@version 1.0
*<p>日期Jun 10, 2019 11:21:44 PM</p>
*
*/
public class tephoto {
	private int teid;
	private String tename;
	private int teage;
	private String tesex;
	private String teintro;
	private String tenum;
	
	public tephoto(String tename, int teage, String tesex, String teintro) {
		super();
		this.tename = tename;
		this.teage = teage;
		this.tesex = tesex;
		this.teintro = teintro;
	}
	
	
	
	public tephoto(int teid, String tename, int teage, String tesex, String teintro, String tenum) {
		super();
		this.teid = teid;
		this.tename = tename;
		this.teage = teage;
		this.tesex = tesex;
		this.teintro = teintro;
		this.tenum = tenum;
	}

	

	public tephoto(String tename, int teage, String tesex, String teintro, String tenum) {
		super();
		this.tename = tename;
		this.teage = teage;
		this.tesex = tesex;
		this.teintro = teintro;
		this.tenum = tenum;
	}



	public tephoto(int teid, String tename, int teage, String tesex, String teintro) {
		super();
		this.teid = teid;
		this.tename = tename;
		this.teage = teage;
		this.tesex = tesex;
		this.teintro = teintro;
	}
	public tephoto(int teid, String tename, int teage, String tesex) {
		super();
		this.teid = teid;
		this.tename = tename;
		this.teage = teage;
		this.tesex = tesex;
	}
	public tephoto() {
		super();
	}
	public tephoto(String tename, int teage, String tesex) {
		super();
		this.tename = tename;
		this.teage = teage;
		this.tesex = tesex;
	}
	public int getTeid() {
		return teid;
	}
	public void setTeid(int teid) {
		this.teid = teid;
	}
	public String getTename() {
		return tename;
	}
	public void setTename(String tename) {
		this.tename = tename;
	}
	public int getTeage() {
		return teage;
	}
	public void setTeage(int teage) {
		this.teage = teage;
	}
	public String getTesex() {
		return tesex;
	}
	public void setTesex(String tesex) {
		this.tesex = tesex;
	}
	public String getTeintro() {
		return teintro;
	}
	public void setTeintro(String teintro) {
		this.teintro = teintro;
	}



	public String getTenum() {
		return tenum;
	}



	public void setTenum(String tenum) {
		this.tenum = tenum;
	}
	
}

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
	
}

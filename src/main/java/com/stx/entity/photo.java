package com.stx.entity;
/**
*@author yh
*@version 1.0
*<p>日期Jun 10, 2019 11:23:34 PM</p>
*
*/
public class photo {
	private int pid;
	private String pname;
	private int page;
	private String psex;
	private String pintro;
	private String pnum;
	
	
	public photo(String pname, int page, String psex, String pintro) {
		super();
		this.pname = pname;
		this.page = page;
		this.psex = psex;
		this.pintro = pintro;
	}
	
	
	
	public photo(String pname, int page, String psex, String pintro, String pnum) {
		super();
		this.pname = pname;
		this.page = page;
		this.psex = psex;
		this.pintro = pintro;
		this.pnum = pnum;
	}



	public photo(int pid, String pname, int page, String psex, String pintro, String pnum) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.page = page;
		this.psex = psex;
		this.pintro = pintro;
		this.pnum = pnum;
	}



	public photo(int pid, String pname, int page, String psex, String pintro) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.page = page;
		this.psex = psex;
		this.pintro = pintro;
	}
	public photo(int pid, String pname, int page, String psex) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.page = page;
		this.psex = psex;
	}
	public photo() {
		super();
	}
	public photo(String pname, int page, String psex) {
		super();
		this.pname = pname;
		this.page = page;
		this.psex = psex;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public String getPsex() {
		return psex;
	}
	public void setPsex(String psex) {
		this.psex = psex;
	}
	public String getPintro() {
		return pintro;
	}
	public void setPintro(String pintro) {
		this.pintro = pintro;
	}



	public String getPnum() {
		return pnum;
	}



	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	
}

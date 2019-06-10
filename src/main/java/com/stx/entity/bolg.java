package com.stx.entity;
/**
*@author yh
*@version 1.0
*<p>日期Jun 10, 2019 11:25:20 PM</p>
*
*/

import java.util.Date;

public class bolg {
	private int bid;
	private String bname;
	private String bcon;
	private Date btime;
	public bolg() {
		super();
	}
	public bolg(int bid, String bname, String bcon, Date btime) {
		super();
		this.bid = bid;
		this.bname = bname;
		this.bcon = bcon;
		this.btime = btime;
	}
	public bolg(String bname, String bcon, Date btime) {
		super();
		this.bname = bname;
		this.bcon = bcon;
		this.btime = btime;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBcon() {
		return bcon;
	}
	public void setBcon(String bcon) {
		this.bcon = bcon;
	}
	public Date getBtime() {
		return btime;
	}
	public void setBtime(Date btime) {
		this.btime = btime;
	}
	
}

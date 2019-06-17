package com.stx.entity;
/**
*@author yh
*@version 1.0
*<p>日期Jun 10, 2019 11:17:17 PM</p>
*
*/
public class user {
	private int uid;
	private String uname;
	private String upass;
	private String usex;
	private int uage;
	private String upower;
	
	
	
	public user(String uname, String upass) {
		super();
		this.uname = uname;
		this.upass = upass;
	}
	public user(int uid, String uname, String upass, String usex, int uage) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upass = upass;
		this.usex = usex;
		this.uage = uage;
	}
	public String getUpower() {
		return upower;
	}
	public void setUpower(String upower) {
		this.upower = upower;
	}
	public user(int uid, String uname, String upass, String usex, int uage, String upower) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upass = upass;
		this.usex = usex;
		this.uage = uage;
		this.upower = upower;
	}
	public user(String uname, String upass, String usex, int uage) {
		super();
		this.uname = uname;
		this.upass = upass;
		this.usex = usex;
		this.uage = uage;
	}
	public user() {
		super();
	}

	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
	public String getUsex() {
		return usex;
	}
	public void setUsex(String usex) {
		this.usex = usex;
	}
	public int getUage() {
		return uage;
	}
	public void setUage(int uage) {
		this.uage = uage;
	}
	
}

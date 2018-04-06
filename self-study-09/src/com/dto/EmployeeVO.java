package com.dto;

public class EmployeeVO {

	private String name;
	private String userid;
	private String pwd;
	private String lev;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getLev() {
		return lev;
	}

	public void setLev(String lev) {
		this.lev = lev;
	}

	@Override
	public String toString() {
		return "[ name="+name+", userid="+userid+", pwd="+pwd+", lev="+lev+"]";
	}
	
}

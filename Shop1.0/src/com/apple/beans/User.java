package com.apple.beans;

import java.util.Date;

public class User {
	private Integer u_id;
	private String username;
	private String u_password;
	private String u_img;
	private String realname;
	private String u_idcard;
	private Date birthday;
	private String u_phone;
	private String userinfo;
	private int state;
	private Date regist_time;
	private Date login_time;
	private int u_del;
	private int u_sex;
	private String u_residence;
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	public String getU_img() {
		return u_img;
	}
	public void setU_img(String u_img) {
		this.u_img = u_img;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getU_idcard() {
		return u_idcard;
	}
	public void setU_idcard(String u_idcard) {
		this.u_idcard = u_idcard;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	public String getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(String userinfo) {
		this.userinfo = userinfo;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Date getRegist_time() {
		return regist_time;
	}
	public void setRegist_time(Date regist_time) {
		this.regist_time = regist_time;
	}
	public Date getLogin_time() {
		return login_time;
	}
	public void setLogin_time(Date login_time) {
		this.login_time = login_time;
	}
	public int getU_del() {
		return u_del;
	}
	public void setU_del(int u_del) {
		this.u_del = u_del;
	}
	public int getU_sex() {
		return u_sex;
	}
	public void setU_sex(int u_sex) {
		this.u_sex = u_sex;
	}
	public String getU_residence() {
		return u_residence;
	}
	public void setU_residence(String u_residence) {
		this.u_residence = u_residence;
	}
	public User() {
		super();
	}
	public User(Integer u_id, String username, String u_password, String u_img,
			String realname, String u_idcard, Date birthday, String u_phone,
			String userinfo, int state, Date regist_time, Date login_time,
			int u_del, int u_sex, String u_residence) {
		super();
		this.u_id = u_id;
		this.username = username;
		this.u_password = u_password;
		this.u_img = u_img;
		this.realname = realname;
		this.u_idcard = u_idcard;
		this.birthday = birthday;
		this.u_phone = u_phone;
		this.userinfo = userinfo;
		this.state = state;
		this.regist_time = regist_time;
		this.login_time = login_time;
		this.u_del = u_del;
		this.u_sex = u_sex;
		this.u_residence = u_residence;
	}
	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", username=" + username
				+ ", u_password=" + u_password + ", u_img=" + u_img
				+ ", realname=" + realname + ", u_idcard=" + u_idcard
				+ ", birthday=" + birthday + ", u_phone=" + u_phone
				+ ", userinfo=" + userinfo + ", state=" + state
				+ ", regist_time=" + regist_time + ", login_time=" + login_time
				+ ", u_del=" + u_del + ", u_sex=" + u_sex + ", u_residence="
				+ u_residence + "]";
	}


	public User(Integer u_id, String username, String u_password, String u_img,
			String realname, String u_idcard, Date birthday, String u_phone,
			String userinfo, int state, Date regist_time, Date login_time,
			int u_del) {
		super();
		this.u_id = u_id;
		this.username = username;
		this.u_password = u_password;
		this.u_img = u_img;
		this.realname = realname;
		this.u_idcard = u_idcard;
		this.birthday = birthday;
		this.u_phone = u_phone;
		this.userinfo = userinfo;
		this.state = state;
		this.regist_time = regist_time;
		this.login_time = login_time;
		this.u_del = u_del;
	}
}

package com.apple.beans.dto;

import java.util.Date;

public class Review_User {
	private Integer review_id;
	private Date review_time;
	private String content;
	private Integer state;
	private Integer u_id;
	private String username;
	private String u_img;
	public Review_User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Review_User(Integer review_id, Date review_time, String content,
			Integer state, Integer u_id, String username, String u_img) {
		super();
		this.review_id = review_id;
		this.review_time = review_time;
		this.content = content;
		this.state = state;
		this.u_id = u_id;
		this.username = username;
		this.u_img = u_img;
	}
	public Integer getReview_id() {
		return review_id;
	}
	public void setReview_id(Integer review_id) {
		this.review_id = review_id;
	}
	public Date getReview_time() {
		return review_time;
	}
	public void setReview_time(Date review_time) {
		this.review_time = review_time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
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
	public String getU_img() {
		return u_img;
	}
	public void setU_img(String u_img) {
		this.u_img = u_img;
	}
}

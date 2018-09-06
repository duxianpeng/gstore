package com.gstore.dao.po;

import java.util.Date;

public class Favorate extends BasePO {

	private int id;
	private int userId;
	private int glassesId;
	private String userName;
	private String glassesName;
	private String picture;
	private String comments;
	private int starValue;
	private Date addDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getGlassesId() {
		return glassesId;
	}

	public void setGlassesId(int glassesId) {
		this.glassesId = glassesId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getGlassesName() {
		return glassesName;
	}

	public void setGlassesName(String glassesName) {
		this.glassesName = glassesName;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public int getStarValue() {
		return starValue;
	}

	public void setStarValue(int starValue) {
		this.starValue = starValue;
	}

	public Date getAddDate() {
		return addDate;
	}

	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

}

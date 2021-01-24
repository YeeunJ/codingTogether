package com.walab.coding.Model;

import java.util.Date;

public class RecomCommentDTO {
	int id;
	int recomID;
	String content;
	Date regDate;
	
	@Override
	public String toString() {
		return "RecomComment [id=" + id + ", recomID=" + recomID + ", content=" + content + ", regDate=" + regDate
				+ "]";
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRecomID() {
		return recomID;
	}
	public void setRecomID(int recomID) {
		this.recomID = recomID;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
}

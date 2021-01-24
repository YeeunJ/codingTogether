package com.walab.coding.Model;

import java.util.Date;

public class CodingSiteDTO {
	int id;
	String siteName;
	String siteUrl;
	Date regDate;
	
	@Override
	public String toString() {
		return "CodingSiteDTO [id=" + id + ", siteName=" + siteName + ", siteUrl=" + siteUrl + ", regDate=" + regDate
				+ "]";
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSiteName() {
		return siteName;
	}
	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}
	public String getSiteUrl() {
		return siteUrl;
	}
	public void setSiteUrl(String siteUrl) {
		this.siteUrl = siteUrl;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
}

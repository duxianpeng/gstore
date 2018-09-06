package com.gstore.dao.po;

import java.util.Date;

public class SearchPO extends BasePO {
	private String order;
	private Boolean isSearchInDesc;
	private String desc;
	private Integer categoryId;
	private Integer pfrom;
	private Integer pto;
	private Date dfrom;
	private Date dto;
	private Integer userId;
	private Integer glassesId;
	private Integer start;
	private Integer limit;

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public Boolean isSearchInDesc() {
		return isSearchInDesc;
	}

	public void setSearchInDesc(Boolean isSearchInDesc) {
		this.isSearchInDesc = isSearchInDesc;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public Boolean getIsSearchInDesc() {
		return isSearchInDesc;
	}

	public void setIsSearchInDesc(Boolean isSearchInDesc) {
		this.isSearchInDesc = isSearchInDesc;
	}

	public Integer getPfrom() {
		return pfrom;
	}

	public void setPfrom(Integer pfrom) {
		this.pfrom = pfrom;
	}

	public Integer getPto() {
		return pto;
	}

	public void setPto(Integer pto) {
		this.pto = pto;
	}

	public Date getDfrom() {
		return dfrom;
	}

	public void setDfrom(Date dfrom) {
		this.dfrom = dfrom;
	}

	public Date getDto() {
		return dto;
	}

	public void setDto(Date dto) {
		this.dto = dto;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	public Integer getLimit() {
		return limit;
	}

	public void setLimit(Integer limit) {
		this.limit = limit;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getGlassesId() {
		return glassesId;
	}

	public void setGlassesId(Integer glassesId) {
		this.glassesId = glassesId;
	}

}

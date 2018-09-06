package com.gstore.action.vo;

import com.gstore.common.Constants;

public class PageVO extends BaseVO {

	private int totalCount;
	private int pageSize = Constants.DEFAULT_PAGE_SIZE;
	private int pageCount;
	private int pageIndex;
	private int startRecord;
	private int endRecord;
	
	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		return totalCount / pageSize + (totalCount % pageSize == 0 ? 0 : 1);
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getStartRecord() {
		return (pageIndex-1)*this.getPageSize()+1;
	}

	public void setStartRecord(int startRecord) {
		this.startRecord = startRecord;
	}

	public int getEndRecord() {
		int end = pageIndex*this.getPageSize();
		if (end > totalCount){
			end = totalCount;
		}
		return end;
	}

	public void setEndRecord(int endRecord) {
		this.endRecord = endRecord;
	}

	
}

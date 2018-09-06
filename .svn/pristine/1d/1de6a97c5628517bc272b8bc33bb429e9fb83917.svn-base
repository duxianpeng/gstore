package com.gstore.action.front;

import java.io.InputStream;

import org.apache.struts2.ServletActionContext;

import com.gstore.common.action.BaseAction;

public class DownloadAction extends BaseAction implements IDownloadAction {
	private String picture;
	public InputStream getDownloadFile() {
		return ServletActionContext.getServletContext().getResourceAsStream(
				"/images/glasses/"+picture);
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

}

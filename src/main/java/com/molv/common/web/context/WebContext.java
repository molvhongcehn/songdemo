package com.molv.common.web.context;

import java.io.Serializable;

public class WebContext implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2104082685915859535L;
	private String uploadRootPath;

	public String getUploadRootPath() {
		return uploadRootPath;
	}

	public void setUploadRootPath(String uploadRootPath) {
		this.uploadRootPath = uploadRootPath;
	}
	
}

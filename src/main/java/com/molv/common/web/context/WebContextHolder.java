package com.molv.common.web.context;


public class WebContextHolder {
	private static WebContext webContext = null;
	public static void setContext(WebContext context) {
		webContext = context;
	}
	
	public static WebContext getContext() {
		return webContext;
	}
	
	public static void clearContext() {
		webContext = null;
	}

}

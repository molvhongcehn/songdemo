package com.molv.common.web.context;

import java.io.File;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class WebContextListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		sce.getServletContext().log("System initializing...");
		String rootPath = sce.getServletContext().getRealPath("/");
		System.setProperty("log.path", rootPath + File.separator + "WEB-INF" + File.separator + "logs" + File.separator);
		WebContext context = new WebContext();
		context.setUploadRootPath(rootPath);
		WebContextHolder.setContext(context);
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		WebContextHolder.clearContext();
	}

}

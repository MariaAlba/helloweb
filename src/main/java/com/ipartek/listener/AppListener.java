package com.ipartek.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.log4j.Logger;

/**
 * Application Lifecycle Listener implementation class AppListener
 *
 */
@WebListener
public class AppListener implements ServletContextListener {

	private static final Logger LOG = Logger.getLogger(AppListener.class);

	/**
	 * @see ServletContextListener#contextDestroyed(ServletContextEvent)
	 */
	public void contextDestroyed(ServletContextEvent sce) {
		//
		LOG.info("La app se ha parado");
	}

	/**
	 * @see ServletContextListener#contextInitialized(ServletContextEvent)
	 */
	public void contextInitialized(ServletContextEvent sce) {
		// Cuando arranca la aplicación
		LOG.info("La app se ha arrancado");

		// sc = application scope
		ServletContext sc = sce.getServletContext();
		sc.setAttribute("numeroUsuariosConectados", 0);
		sc.setAttribute("numeroUsuariosIndebidos", 0);
	}

}

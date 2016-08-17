package com.hybrid.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Application Lifecycle Listener implementation class ApplicationListener
 *
 */
@WebListener
public class ApplicationListener implements ServletContextListener {
	
	static Logger log = LoggerFactory.getLogger(ApplicationListener.class); 
	
    /**
     * Default constructor. 
     */
    public ApplicationListener() {
    	
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
    	log.info("#########################################");
    	log.info("ApplicationListener.contextDestroyed()...");
    	log.info("#########################################");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	log.info("###########################################");
    	log.info("ApplicationListener.contextInitialized()...");
    	log.info("###########################################");
    }
	
}

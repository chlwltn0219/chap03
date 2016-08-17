package com.hybrid.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebFilter("/*")
public class LoginFilter implements Filter{

	static Logger log = LoggerFactory.getLogger(LoginFilter.class);
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		log.info("#####################");
		log.info("LoginFilter.init()...");
		log.info("#####################");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		log.info("#####################");
		log.info("LoginFilter.init()...");
		log.info("#####################");
		
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		log.info("########################");
		log.info("LoginFilter.destroy()...");
		log.info("########################");
		
	}
	
}

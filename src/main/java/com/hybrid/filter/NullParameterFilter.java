package com.hybrid.filter;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebFilter(urlPatterns="/nullParam.jsp", initParams={ @WebInitParam(name="parameterNames", value = "id,name,")})
public class NullParameterFilter implements Filter {
	
	private String[] parameterNames = null;
	static Logger log = LoggerFactory.getLogger(NullParameterFilter.class); 
	
	public void init(FilterConfig fConfig) throws ServletException {
		log.info("#####################");
		log.info("NullParameterFilter.init()...");
		log.info("#####################");
		String names = fConfig.getInitParameter("parameterNames");
		
		StringTokenizer st = new StringTokenizer(names, ",");
		parameterNames = new String[st.countTokens()];
		
		for(int i=0; st.hasMoreTokens(); i++){
			parameterNames[i] = st.nextToken();
			log.info("#####################");
			log.info(parameterNames[i]);
			log.info("#####################");
		}
		
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		NullParameterRequestWrapper requestWraper = 
				new NullParameterRequestWrapper((HttpServletRequest) request);
		requestWraper.checkNull(parameterNames);
		
		chain.doFilter(requestWraper, response);
	}
	
	public void destroy() {
	}
	
    public NullParameterFilter() {
    }

}

package com.hybrid.filter;

import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class NullParameterRequestWrapper extends HttpServletRequestWrapper{

	private Map<String, String[]> parameterMap = null; 

	static Logger log = LoggerFactory.getLogger(NullParameterRequestWrapper.class); 
	
	
	public NullParameterRequestWrapper(HttpServletRequest request) {
		super(request);
		log.info("#####################");
		log.info("NullParameterRequestWrapper()...");
		log.info("#####################");
		parameterMap = new HashMap<>(request.getParameterMap());
		
		log.info("id = " + parameterMap.get("id"));
		log.info("name = " + parameterMap.get("name"));
		
	}
	
	public void checkNull(String[] parameterNames) {
		log.info("#####################");
		log.info("NullParameterRequestWrapper.checkNull()...");
		log.info("#####################");
		for(int i=0; i<parameterNames.length; i++) {
			String[] values = new String[] {""};
			parameterMap.put(parameterNames[i], values);
		}
	}
	
	@Override
	public String getParameter(String name) {
		log.info("#####################");
		log.info("NullParameterRequestWrapper.getParameter("+name+")...");
		log.info("#####################");
		String[] values = getParameterValues(name);
		
		if(values != null) {
			return values[0];
		}
		return null;
	}
	
	@Override
	public Map<String, String[]> getParameterMap() {
		return parameterMap;
	}
	
	@Override
	public Enumeration<String> getParameterNames() {
		return Collections.enumeration(parameterMap.keySet());
	}
	
	@Override
	public String[] getParameterValues(String name) {
		return (String[]) parameterMap.get(name);
	}
}

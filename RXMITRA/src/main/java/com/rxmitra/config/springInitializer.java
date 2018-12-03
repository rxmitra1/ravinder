package com.rxmitra.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class springInitializer implements WebApplicationInitializer{

	public void onStartup(ServletContext context) throws ServletException {
		
		
		AnnotationConfigWebApplicationContext container=new AnnotationConfigWebApplicationContext();
		container.register(SpringConfiguration.class);
		//context.addListener(new ContextLoaderListener(container));
		container.setServletContext(context);
		Dynamic dynamic = context.addServlet("spring", new DispatcherServlet(container));
		dynamic.addMapping("/");
		dynamic.setLoadOnStartup(2);
		
	}

}

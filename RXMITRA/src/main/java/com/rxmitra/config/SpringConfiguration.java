package com.rxmitra.config;

import java.util.List;
import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.format.FormatterRegistry;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.MessageCodesResolver;
import org.springframework.validation.Validator;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.HandlerMethodReturnValueHandler;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.config.annotation.AsyncSupportConfigurer;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.rxmitra.bean.AddInvoice;
import com.rxmitra.bean.DeliverAddress;
import com.rxmitra.bean.EmpLogin;
import com.rxmitra.bean.Employee;
import com.rxmitra.bean.Excel;
import com.rxmitra.bean.Prescription;
import com.rxmitra.bean.PrescriptionManagement;
import com.rxmitra.bean.Product;
import com.rxmitra.bean.Publish;
import com.rxmitra.bean.ReceivedRequest;
import com.rxmitra.bean.UserLogin;
import com.rxmitra.bean.UserRegistration;
import com.rxmitra.bean.Vendor;
import com.rxmitra.bean.VendorProduct;

//import com.soft.model.Employee;
//import com.soft.model.Login;


@EnableWebMvc
@Configuration
@ComponentScan(basePackages = "com.rxmitra")
@EnableTransactionManagement
@PropertySource(value= { "classpath:dbconfig.properties"})
public class SpringConfiguration implements WebMvcConfigurer{
	
	@Autowired
	private Environment env;

	@Autowired
	private DataSource dataSource;

	@Autowired
	private SessionFactory sessionFactory;

	@Bean
	public DriverManagerDataSource dataSource() {

		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(env.getProperty("con.driverClassName"));
		dataSource.setUrl(env.getProperty("con.url"));
		dataSource.setUsername(env.getProperty("con.username"));
		dataSource.setPassword(env.getProperty("con.password"));
		return dataSource;
	}

	
	@Bean
	public LocalSessionFactoryBean sessionFactory() {
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
		sessionFactory.setDataSource(dataSource);
		sessionFactory.setAnnotatedPackages("com.rxmitra.bean.*");
		sessionFactory.setAnnotatedClasses(Vendor.class,Product.class,VendorProduct.class,Excel.class,AddInvoice.class,UserRegistration.class,UserLogin.class,Publish.class,DeliverAddress.class,Employee.class,EmpLogin.class,Prescription.class,PrescriptionManagement.class,ReceivedRequest.class );
		//sessionFactory.setAnnotatedClasses(Product.class);
		sessionFactory.setHibernateProperties(getProperties());

		return sessionFactory;
	}

	@Bean
	public HibernateTemplate template() {
		HibernateTemplate template = new HibernateTemplate();
		template.setSessionFactory(sessionFactory);
		return template;
	}

	@Bean
	public Properties getProperties() {
		Properties properties = new Properties();

		properties.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
		properties.setProperty("hibernate.show_sql", "true");
		properties.setProperty("hibernate.format_sql", "true");
		properties.setProperty("hibernate.hbm2ddl.auto", "update");
		return properties;
	}

	@Bean
	public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager hibernateTransactionManager = new HibernateTransactionManager();

		hibernateTransactionManager.setSessionFactory(sessionFactory);
		return hibernateTransactionManager;
	}

	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;

	}
            //By using this class we can the property filename  
	@Bean
	public ResourceBundleMessageSource messageSource() {
		ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
		messageSource.setBasename("messages");
		return messageSource;
	}


	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver messageSource = new CommonsMultipartResolver();
		return messageSource;
	}

		

			public void addResourceHandlers(ResourceHandlerRegistry registry) {
				 registry.addResourceHandler("/**").addResourceLocations("/");
		            

		      // Register resource handler for images
		     // registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/images/");
		           
			}


			public void addReturnValueHandlers(List<HandlerMethodReturnValueHandler> arg0) {
				// TODO Auto-generated method stub
				
			}


			public void addViewControllers(ViewControllerRegistry arg0) {
				// TODO Auto-generated method stub
				
			}


			public void configureAsyncSupport(AsyncSupportConfigurer arg0) {
				// TODO Auto-generated method stub
				
			}


			public void configureContentNegotiation(ContentNegotiationConfigurer arg0) {
				// TODO Auto-generated method stub
				
			}


			public void configureDefaultServletHandling(DefaultServletHandlerConfigurer arg0) {
				// TODO Auto-generated method stub
				
			}


			public void configureHandlerExceptionResolvers(List<HandlerExceptionResolver> arg0) {
				// TODO Auto-generated method stub
				
			}


			public void configureMessageConverters(List<HttpMessageConverter<?>> arg0) {
				// TODO Auto-generated method stub
				
			}


			public void configurePathMatch(PathMatchConfigurer arg0) {
				// TODO Auto-generated method stub
				
			}


			public void configureViewResolvers(ViewResolverRegistry arg0) {
				// TODO Auto-generated method stub
				
			}


			public void extendHandlerExceptionResolvers(List<HandlerExceptionResolver> arg0) {
				// TODO Auto-generated method stub
				
			}


			public void extendMessageConverters(List<HttpMessageConverter<?>> arg0) {
				// TODO Auto-generated method stub
				
			}


			public MessageCodesResolver getMessageCodesResolver() {
				// TODO Auto-generated method stub
				return null;
			}


			public Validator getValidator() {
				// TODO Auto-generated method stub
				return null;
			}


			public void addArgumentResolvers(List<HandlerMethodArgumentResolver> arg0) {
				// TODO Auto-generated method stub
				
			}


			public void addCorsMappings(CorsRegistry arg0) {
				// TODO Auto-generated method stub
				
			}


			public void addFormatters(FormatterRegistry arg0) {
				// TODO Auto-generated method stub
				
			}


			public void addInterceptors(InterceptorRegistry arg0) {
				// TODO Auto-generated method stub
				
			}

	
}

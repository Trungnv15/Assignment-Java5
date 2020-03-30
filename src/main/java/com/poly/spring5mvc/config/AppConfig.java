package com.poly.spring5mvc.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "com.poly.spring5mvc" })
@ComponentScan(basePackages = { "com.poly.spring5mvc.model" })
public class AppConfig {

	@Bean
	public InternalResourceViewResolver resolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	
	 
	//cấu hình đa ngôn ngữ
	   @Bean(name = "messageSource")
	   public MessageSource getMessageResource()  {
	       ReloadableResourceBundleMessageSource messageResource= new ReloadableResourceBundleMessageSource();
	  
	       
	        
	       // Đọc vào file i18n/messages_xxx.properties
	       // Ví dụ: i18n/message_en.properties
	       messageResource.setBasename("classpath:i18n/messages");
	       messageResource.setDefaultEncoding("UTF-8");
	       return messageResource;
	   }
	    
	   @Bean(name = "localeResolver")
	   public LocaleResolver getLocaleResolver()  {
	       CookieLocaleResolver resolver= new CookieLocaleResolver();
	       resolver.setCookieDomain("myAppLocaleCookie");
	     
	       // 60 phút.
	       resolver.setCookieMaxAge(60*120);
	       return resolver;
	   }
	    

}

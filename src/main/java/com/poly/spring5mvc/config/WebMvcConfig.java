package com.poly.spring5mvc.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;

import com.poly.spring5mvc.interceptor.adminInterceptor;
import com.poly.spring5mvc.interceptor.userInterceptor;

@SuppressWarnings("deprecation")
@Configuration
@EnableWebMvc
public class WebMvcConfig extends WebMvcConfigurerAdapter {

	// Cấu hình để sử dụng các file nguồn tĩnh (html, image, ..)
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {

		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/").setCachePeriod(31556926);

	}

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {

		LocaleChangeInterceptor localeInterceptor = new LocaleChangeInterceptor();
		
		localeInterceptor.setParamName("lang");
		registry.addInterceptor(localeInterceptor).addPathPatterns("/*");
		
		registry.addInterceptor(new userInterceptor()).addPathPatterns("/infomation-staff");

		registry.addInterceptor(new adminInterceptor()).addPathPatterns("/staff").addPathPatterns("/index-admin")
				.addPathPatterns("/add-staff").addPathPatterns("/department").addPathPatterns("/achievement")
				.addPathPatterns("/update-achievement").addPathPatterns("/staff").addPathPatterns("/staff")
				.excludePathPatterns("/index").excludePathPatterns("/login");
	}

}
package npclinic.cs.config;

import npclinic.cs.controller.WebInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

//controller/WebInterceptor 를 이곳에서 스프링 IOC에 등록

@Configuration
public class InterceptorConfig extends WebMvcConfigurerAdapter {

    @Autowired
    WebInterceptor webInterceptor;


    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(webInterceptor)
                .addPathPatterns("/*"); // "/*" 는 모든 요청에 대해 처리하라는 의미
    }
}

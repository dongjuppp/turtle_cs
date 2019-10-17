package npclinic.cs.config;

import com.google.gson.Gson;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

//이곳에는 우리가 만들지 않은 자바 클래스를 스프링 Bean으로 등록한다.
//왜 여기서 등록하는가??
//우리가 만든 자바 클래스에는 @Component, @Service, @Repository등의 annotation을 붙혀서
//자동으로 스프링 IOC에 넣을 수 있지만
//아래와 같이 Gson클래스는 우리가 Gson클래스의 원본에 직접 접근해서 annotation을 붙일 수 없기 때문이다.

@Configuration
public class AppConfig {

    @Bean
    public Gson gson(){
        return new Gson();
    }
}

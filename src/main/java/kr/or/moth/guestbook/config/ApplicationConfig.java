package kr.or.moth.guestbook.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@ComponentScan(basePackages = { "kr.or.moth.guestbook.dao",  "kr.or.moth.guestbook.service"})
@Import({ DBConfig.class })
public class ApplicationConfig {

}

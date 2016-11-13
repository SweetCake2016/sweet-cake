package com.sweet_cake.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

/**
 * @author Danijel
 *
 */
@Configuration
@ComponentScan(basePackages = { "com.sweet_cake.*" })
@Import({MvcConfig.class, JPAConfig.class})
public class AppConfig {

}

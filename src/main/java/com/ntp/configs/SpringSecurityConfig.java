package com.ntp.configs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableWebSecurity
@EnableTransactionManagement
@ComponentScan(basePackages = "com.ntp")
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private UserDetailsService userDetailsService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    protected void configure(HttpSecurity http) throws Exception {
        http.formLogin().loginPage("/taikhoan/login")
                .usernameParameter("username")
                .passwordParameter("password");
        http.formLogin()
                .defaultSuccessUrl("/")
                .failureUrl("/taikhoan/login?error");
        http.logout()
                .logoutSuccessUrl("/taikhoan/login");
        http.exceptionHandling()
                .accessDeniedPage("/taikhoan/login?accessDenied");
        http.authorizeRequests()
                .antMatchers("/").permitAll()
                .antMatchers("/admin").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/doctors/**").access("hasAnyRole('ROLE_ADMIN','ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/patients/**").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/medicines/**").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/employees/**").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')");
        http.csrf().disable();
    }
}
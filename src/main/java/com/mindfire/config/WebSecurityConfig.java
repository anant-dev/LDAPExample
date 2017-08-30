/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mindfire.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configurers.GlobalAuthenticationConfigurerAdapter;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 *
 * @author anants
 */
@Configuration
@EnableWebSecurity
@ComponentScan(basePackages = "com.mindfire")
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

//    @Override
//    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        
//    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests()
                .antMatchers("/empform", "/viewemp", "/editemp/**", "/editsave", "/deleteemp/*").authenticated()
                .and()
                .formLogin().loginPage("/login").failureUrl("/login?error")
                .usernameParameter("username").passwordParameter("password")
                .and()
                .logout().logoutSuccessUrl("/login?logout");
        http.csrf().disable();
    }
    
    
     @Configuration
    protected static class AuthenticationConfiguration extends
            GlobalAuthenticationConfigurerAdapter {

        @Override
        public void init(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception {

            authenticationManagerBuilder
                    .ldapAuthentication()
                    .userSearchFilter("(uid={0})")
                    .userSearchBase("ou=people")
                    .groupSearchFilter("uniqueMember={0}")
                    .groupSearchBase("ou=users,ou=groups")
                    .userDnPatterns("uid={0},ou=people")
                    .rolePrefix("ROLE_")
                    .contextSource()
                    .url("ldap://localhost:10389/o=ldapsample")
                    .managerPassword("secret").managerDn("uid=admin,ou=system");        }
    }
    

}

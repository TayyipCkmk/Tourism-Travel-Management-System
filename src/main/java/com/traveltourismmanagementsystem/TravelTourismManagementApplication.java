package com.traveltourismmanagementsystem;

import com.traveltourismmanagementsystem.model.Admin;
import com.traveltourismmanagementsystem.services.AdminService;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class TravelTourismManagementApplication extends SpringBootServletInitializer {
    @Autowired
    AdminService adminService;

    @Bean
    InitializingBean sendDatabase() {
        adminService.deleteAllAdmin();

        Admin admin = new Admin();
        admin.setEmail("admin@gmail.com");
        admin.setUsername("admin");
        admin.setPassword("admin");
        admin.setRole("admin");
        return () -> {
            adminService.addAdmin(admin);
        };
    }
    

    public static void main(String[] args) {
        SpringApplication.run(TravelTourismManagementApplication.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(TravelTourismManagementApplication.class);
    }

}

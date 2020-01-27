package org.kendar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.Collections;

@SpringBootApplication
public class HelloWorld {
    public static void main(String[] args) {
        SpringApplication app = new SpringApplication(HelloWorld.class);
        app.setDefaultProperties(Collections.singletonMap("server.port", "8094"));
        app.run(args);
    }
}

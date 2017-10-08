package com.example.helloworldjava.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @RequestMapping("/hello/java")
    public String helloWorld() {
        return "Hello from Java!";
    }
}

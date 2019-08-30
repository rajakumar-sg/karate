package com.example.karateapitesting;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @Autowired
    private UserContext userContext;

    @GetMapping("/hello")
    public String sayHello(@RequestParam("userName") String userName) {

        userContext.setUserName(userName);
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            //
        }

        return "Hello, there - userName :" + userContext.getUserName();
    }
}

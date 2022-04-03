package com.example.springboottest.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author DingJie
 * @date 2022/4/1 2:52 下午
 */
@RestController
public class TestController {

    @GetMapping("/test")
    public String test(){
        return "hello";
    }
}

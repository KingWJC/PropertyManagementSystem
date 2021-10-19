/*
 * @Author: KingWJC
 * @Date: 2021-10-19 16:59:04
 * @LastEditors: KingWJC
 * @LastEditTime: 2021-10-19 18:24:25
 * @Descripttion: 
 * @FilePath: \psp_back\src\main\java\com\example\psp_back\controller\LoginController.java
 */
package com.example.psp_back.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(originPatterns = "*", allowCredentials = "true", allowedHeaders = "*", methods = {})
public class LoginController {

    @RequestMapping("/auth/2step-code")
    public Boolean test() {
        System.out.println("前端框架自带的一个验证规则，写不写无所谓");
        return true;
    }

    @RequestMapping("/auth/login")
    public String login() {
        System.out.println("success");
        return "";
    }
}

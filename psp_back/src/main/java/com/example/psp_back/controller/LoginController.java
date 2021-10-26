/*
 * @Author: KingWJC
 * @Date: 2021-10-19 16:59:04
 * @LastEditors: KingWJC
 * @LastEditTime: 2021-10-26 17:25:05
 * @Descripttion: 
 * @FilePath: \psp_back\src\main\java\com\example\psp_back\controller\LoginController.java
 */
package com.example.psp_back.controller;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.JSONObject;
import com.example.psp_back.bean.TblUserRecord;
import com.example.psp_back.returnjson.*;
import com.example.psp_back.service.base.TblUserRecordService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(originPatterns = "*", allowCredentials = "true", allowedHeaders = "*", methods = {})
public class LoginController {

    @Autowired
    @Qualifier("tblUserRecordServiceImpl")
    private TblUserRecordService userRecordService;

    @RequestMapping("/auth/2step-code")
    public Boolean test() {
        System.out.println("前端框架自带的一个验证规则，写不写无所谓");
        return true;
    }

    @RequestMapping("/auth/login")
    public String login(@RequestParam("username") String username, @RequestParam("password") String password,
            HttpSession session) {
        System.out.println("success");
        TblUserRecord user = userRecordService.login(username, password);
        user.setToken(user.getUserName());
        session.setAttribute("userRecord", user);
        ResultData<TblUserRecord> result = ResultData.success(user);
        return JSONObject.toJSONString(result);
    }

    @RequestMapping("/user/info")
    public String getInfo(HttpSession session) {
        TblUserRecord tblUserRecord = (TblUserRecord) session.getAttribute("userRecord");
        // 获取模块信息
        String[] split = tblUserRecord.getTblRole().getRolePrivileges().split("-");
        // 创建权限集合对象
        Permissions permissions = new Permissions();
        // 向权限集合对象中添加具体的权限
        List<Permission> permissionList = new ArrayList<>();
        for (String s : split) {
            permissionList.add(new Permission(s));
        }
        permissions.setPermissions(permissionList);
        UserInfo user = new UserInfo(tblUserRecord.getUserName(), permissions);
        return JSONObject.toJSONString(ResultData.success(user));
    }

    @RequestMapping("/auth/logout")
    public void logOut(HttpSession session) {
        System.out.println("logout");
        session.invalidate();
    }
}

/*
 * @Author: KingWJC
 * @Date: 2021-10-26 17:00:59
 * @LastEditors: KingWJC
 * @LastEditTime: 2021-10-26 17:01:07
 * @Descripttion: 
 * @FilePath: \psp_back\src\main\java\com\example\psp_back\returnjson\UserInfo.java
 */
package com.example.psp_back.returnjson;

public class UserInfo {

    private String name;
    private String avatar = "/avatar2.jpg";
    private Permissions role;

    public UserInfo(String name, Permissions role) {
        this.name = name;
        this.role = role;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Permissions getRole() {
        return role;
    }

    public void setRole(Permissions role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "UserInfo{" + "name='" + name + '\'' + ", avatar='" + avatar + '\'' + ", role=" + role + '}';
    }
}
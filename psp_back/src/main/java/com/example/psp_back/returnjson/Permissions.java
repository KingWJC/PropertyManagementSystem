/*
 * @Author: KingWJC
 * @Date: 2021-10-26 17:00:59
 * @LastEditors: KingWJC
 * @LastEditTime: 2021-10-26 17:03:21
 * @Descripttion: 
 * @FilePath: \psp_back\src\main\java\com\example\psp_back\returnjson\Permissions.java
 */
package com.example.psp_back.returnjson;

import java.util.List;

public class Permissions {

    private List<Permission> permissions;

    public List<Permission> getPermissions() {
        return permissions;
    }

    public void setPermissions(List<Permission> permissions) {
        this.permissions = permissions;
    }

    @Override
    public String toString() {
        return "Permissions{" + "permissions=" + permissions + '}';
    }
}
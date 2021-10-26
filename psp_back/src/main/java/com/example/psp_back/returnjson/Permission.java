/*
 * @Author: KingWJC
 * @Date: 2021-10-26 17:00:59
 * @LastEditors: KingWJC
 * @LastEditTime: 2021-10-26 17:01:07
 * @Descripttion: 
 * @FilePath: \psp_back\src\main\java\com\example\psp_back\returnjson\Permission.java
 */
package com.example.psp_back.returnjson;

public class Permission {

    private String permissionId;

    public Permission() {
    }

    public Permission(String permissionId) {
        this.permissionId = permissionId;
    }

    public String getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(String permissionId) {
        this.permissionId = permissionId;
    }

    @Override
    public String toString() {
        return "Permission{" + "permissionId='" + permissionId + '\'' + '}';
    }
}

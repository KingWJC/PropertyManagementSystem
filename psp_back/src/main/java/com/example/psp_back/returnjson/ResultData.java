/*
 * @Author: KingWJC
 * @Date: 2021-10-25 17:04:56
 * @LastEditors: KingWJC
 * @LastEditTime: 2021-10-25 17:15:00
 * @Descripttion: 
 * @FilePath: \psp_back\src\main\java\com\example\psp_back\returnjson\ResultData.java
 */
package com.example.psp_back.returnjson;

public class ResultData<T> {
    private int status;
    private String message;
    private T data;
    private long timestamp;

    public ResultData() {
        this.timestamp = System.currentTimeMillis();
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setData(T data) {
        this.data = data;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public static <T> ResultData<T> success(T data) {
        ResultData<T> resultData = new ResultData<>();
        resultData.setStatus(ReturnCode.RC100.getCode());
        resultData.setMessage(ReturnCode.RC100.getMessage());
        resultData.setData(data);
        return resultData;
    }

    public static <T> ResultData<T> error(int code, String message) {
        ResultData<T> resultData = new ResultData<>();
        resultData.setStatus(code);
        resultData.setMessage(message);
        return resultData;
    }
}

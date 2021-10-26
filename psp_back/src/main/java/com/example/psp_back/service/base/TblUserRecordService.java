/*
 * @Author: KingWJC
 * @Date: 2021-10-19 16:18:30
 * @LastEditors: KingWJC
 * @LastEditTime: 2021-10-25 16:41:39
 * @Descripttion: 
 * @FilePath: \psp_back\src\main\java\com\example\psp_back\service\base\TblUserRecordService.java
 */
package com.example.psp_back.service.base;

import com.example.psp_back.bean.TblUserRecord;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 用户档案 服务类
 * </p>
 *
 * @author lian
 * @since 2020-04-18
 */
public interface TblUserRecordService extends IService<TblUserRecord> {
    TblUserRecord login(String username, String password);
}

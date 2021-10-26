/*
 * @Author: KingWJC
 * @Date: 2021-10-19 16:18:29
 * @LastEditors: KingWJC
 * @LastEditTime: 2021-10-25 16:38:29
 * @Descripttion: 
 * @FilePath: \psp_back\src\main\java\com\example\psp_back\service\impl\TblUserRecordServiceImpl.java
 */
package com.example.psp_back.service.impl;

import com.example.psp_back.bean.TblUserRecord;
import com.example.psp_back.mapper.TblUserRecordMapper;
import com.example.psp_back.service.base.TblUserRecordService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户档案 服务实现类
 * </p>
 *
 * @author lian
 * @since 2020-04-18
 */
@Service
public class TblUserRecordServiceImpl extends ServiceImpl<TblUserRecordMapper, TblUserRecord>
                implements TblUserRecordService {

        @Autowired
        private TblUserRecordMapper userRecordMapper;

        @Override
        public TblUserRecord login(String username, String password) {
                return userRecordMapper.login(username, password);
        }

}

package com.example.psp_back.service.impl;

import com.example.psp_back.bean.TblUserRecord;
import com.example.psp_back.mapper.TblUserRecordMapper;
import com.example.psp_back.service.base.TblUserRecordService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
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

}

package com.example.psp_back.service.impl;

import com.example.psp_back.bean.TblCommonMessage;
import com.example.psp_back.mapper.TblCommonMessageMapper;
import com.example.psp_back.service.base.TblCommonMessageService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 常用短信 服务实现类
 * </p>
 *
 * @author lian
 * @since 2020-04-18
 */
@Service
public class TblCommonMessageServiceImpl extends ServiceImpl<TblCommonMessageMapper, TblCommonMessage>
        implements TblCommonMessageService {

}

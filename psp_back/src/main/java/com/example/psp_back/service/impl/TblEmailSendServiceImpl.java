package com.example.psp_back.service.impl;

import com.example.psp_back.bean.TblEmailSend;
import com.example.psp_back.mapper.TblEmailSendMapper;
import com.example.psp_back.service.base.TblEmailSendService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 邮件发送 服务实现类
 * </p>
 *
 * @author lian
 * @since 2020-04-18
 */
@Service
public class TblEmailSendServiceImpl extends ServiceImpl<TblEmailSendMapper, TblEmailSend>
        implements TblEmailSendService {

}

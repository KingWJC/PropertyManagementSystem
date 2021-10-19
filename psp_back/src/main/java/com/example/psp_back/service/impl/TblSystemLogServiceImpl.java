package com.example.psp_back.service.impl;

import com.example.psp_back.bean.TblSystemLog;
import com.example.psp_back.mapper.TblSystemLogMapper;
import com.example.psp_back.service.base.TblSystemLogService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 系统日志 服务实现类
 * </p>
 *
 * @author lian
 * @since 2020-04-18
 */
@Service
public class TblSystemLogServiceImpl extends ServiceImpl<TblSystemLogMapper, TblSystemLog>
        implements TblSystemLogService {

}

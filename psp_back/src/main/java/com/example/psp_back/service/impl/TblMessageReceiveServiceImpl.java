package com.example.psp_back.service.impl;

import com.example.psp_back.bean.TblMessageReceive;
import com.example.psp_back.mapper.TblMessageReceiveMapper;
import com.example.psp_back.service.base.TblMessageReceiveService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 短信接受表 服务实现类
 * </p>
 *
 * @author lian
 * @since 2020-04-18
 */
@Service
public class TblMessageReceiveServiceImpl extends ServiceImpl<TblMessageReceiveMapper, TblMessageReceive>
        implements TblMessageReceiveService {

}

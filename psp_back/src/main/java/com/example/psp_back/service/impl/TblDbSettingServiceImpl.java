package com.example.psp_back.service.impl;

import com.example.psp_back.bean.TblDbSetting;
import com.example.psp_back.mapper.TblDbSettingMapper;
import com.example.psp_back.service.base.TblDbSettingService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 数据库设置 服务实现类
 * </p>
 *
 * @author lian
 * @since 2020-04-18
 */
@Service
public class TblDbSettingServiceImpl extends ServiceImpl<TblDbSettingMapper, TblDbSetting>
        implements TblDbSettingService {

}
